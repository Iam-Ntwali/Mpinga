import 'package:flutter/material.dart';
import 'screens/help_page.dart';
import 'screens/mental_services.dart';
import 'screens/about_page.dart';
import 'screens/quiz_page.dart';
import 'screens/splash_screen.dart';
import 'screens/homepage.dart';
import 'screens/srh_services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/home': (context) => const HomePage(),
        '/srh_page': (context) => SRHServicesPage(),
        '/mh_page': (context) => const MentalHealthPage(),
        '/quiz_page': (context) => const QuizPage(),
        '/help_page': (context) => const HelpPage(),
        '/about_page': (context) => const AboutPage(),
      },
    );
  }
}
