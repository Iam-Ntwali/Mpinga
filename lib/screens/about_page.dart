// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[200],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'About',
          style: TextStyle(
            color: Colors.indigo,
            fontFamily: 'Pacifico',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.indigo[100],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // title
                const Text(
                  'MPINGA',
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 32,
                    fontFamily: 'Pacifico',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),

                // subtitle
                const Text(
                  'APP',
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 24,
                    fontFamily: 'Pacifico',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),

                const Text(
                  'by',
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 18,
                    fontFamily: 'Monolisa',
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10), // Separator
                // logo
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Image.asset(
                    'assets/images/logo.png',
                    height: 140,
                    color: Colors.indigo,
                  ),
                ),

                const SizedBox(height: 5),

                const SizedBox(height: 10.0),
                const Text(
                  'Version 1.0.0',
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16,
                    fontFamily: 'Monolisa',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20.0),
          const Text(
            'Owner:',
            style: TextStyle(
              color: Colors.indigo,
              fontFamily: 'Coiny',
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5.0),
          const Text(
            'Girls Tech Ventures',
            style: TextStyle(
              color: Colors.indigo,
              fontFamily: 'Monolisa',
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 20.0),
          const Text(
            'Owner Website:',
            style: TextStyle(
              color: Colors.indigo,
              fontFamily: 'Coiny',
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5.0),
          TextButton(
            onPressed: () => launch('https://www.girlstechventure.com'),
            child: const Text(
              'www.girlstechventure.com',
              style: TextStyle(
                color: Colors.indigo,
                fontFamily: 'Monolisa',
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          const Text(
            'Developed by:',
            style: TextStyle(
              color: Colors.indigo,
              fontFamily: 'Coiny',
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5.0),
          TextButton(
            onPressed: () => launch('https://www.github.com/Iam-Ntwali'),
            child: const Text(
              'Ntwali 🧑‍💻',
              style: TextStyle(
                color: Colors.indigo,
                fontFamily: 'Monolisa',
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
