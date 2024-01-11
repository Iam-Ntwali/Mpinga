import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // After 5 seconds, navigate to the homepage using the named route
    Future.delayed(const Duration(seconds: 8), () {
      Navigator.pushReplacementNamed(context, '/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[200],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Image.asset(
                  'assets/images/logo.png',
                  height: 140,
                  color: Colors.indigo,
                ),
              ),

              const SizedBox(height: 12),

              // title
              const Text(
                'MPINGA',
                style: TextStyle(
                  color: Colors.indigo,
                  fontSize: 36,
                  fontFamily: 'Pacifico',
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 7),

              // title
              const Text(
                'APP',
                style: TextStyle(
                  color: Colors.indigo,
                  fontSize: 24,
                  fontFamily: 'Pacifico',
                  fontWeight: FontWeight.bold,
                ),
              ), // Separator
            ],
          ),
        ),
      ),
      bottomNavigationBar: const SizedBox(
        child: Text(
          "App version 1.0.0 | 2024",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.indigoAccent,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
