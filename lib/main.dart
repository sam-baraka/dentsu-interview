import 'dart:async';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:dentsu_interview/firebase_options.dart';
import 'package:dentsu_interview/resources/dentsu_colors.dart';
import 'package:dentsu_interview/router/app_router.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restart_app/restart_app.dart';
import 'package:shorebird_code_push/shorebird_code_push.dart';

// Create an instance of the ShorebirdCodePush class
final shorebirdCodePush = ShorebirdCodePush();
Future<void> _checkForUpdates() async {
  // Check whether a patch is available to install.
  final isUpdateAvailable =
      await shorebirdCodePush.isNewPatchAvailableForDownload();

  if (isUpdateAvailable) {
    // Download the new patch if it's available.
    await shorebirdCodePush.downloadUpdateIfAvailable();
    Restart.restartApp();
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = AppRouter();
  @override
  void initState() {
    super.initState();
    Timer _timer;
    _timer = Timer.periodic(const Duration(seconds: 10), (timer) {
      _checkForUpdates();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp.router(
        routerConfig: _appRouter.config(
          deepLinkBuilder: (deepLink) {
            if (Platform.isAndroid || Platform.isIOS) {
              if (FirebaseAuth.instance.currentUser != null) {
                return const DeepLink.path('/mobile_dashboard');
              }
              return deepLink;
            } else {
              if (FirebaseAuth.instance.currentUser != null) {
                return const DeepLink.path('/main_dashboard');
              }
              return deepLink;
            }
          },
        ),
        title: 'Dentsu Interview',
        theme: ThemeData(
          textTheme: GoogleFonts.dmSansTextTheme(),
          colorScheme: ColorScheme.fromSeed(
              seedColor: DentsuColors.purple, secondary: DentsuColors.peach),
          useMaterial3: true,
        ),
      ),
    );
  }
}
