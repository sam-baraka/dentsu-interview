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

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _appRouter = AppRouter();
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
                return const DeepLink.path( '/main_dashboard');
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
