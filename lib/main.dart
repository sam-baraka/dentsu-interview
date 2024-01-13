import 'package:dentsu_interview/resources/dentsu_colors.dart';
import 'package:dentsu_interview/router/app_router.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      title: 'Dentsu Interview',
      theme: ThemeData(
        textTheme: GoogleFonts.dmSansTextTheme(),
        colorScheme: ColorScheme.fromSeed(
            seedColor: DentsuColors.purple, secondary: DentsuColors.peach),
        useMaterial3: true,
      ),
    );
  }
}
