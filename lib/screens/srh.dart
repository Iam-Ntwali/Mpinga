import 'package:flutter/material.dart';

import 'qa.dart';
import 'testimonies.dart';
import 'ask_here.dart';

class SrhPage extends StatefulWidget {
  const SrhPage({super.key});

  @override
  State<SrhPage> createState() => _SrhPageState();
}

class _SrhPageState extends State<SrhPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[200], // Homepage bg color.

      // AppBar Start here
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Sexual Reproductive Heatlth',
          style: TextStyle(
            color: Colors.indigo,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      // Body content
      body: Padding(
        padding: const EdgeInsets.only(
          top: 25,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                'Hitamo:',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // Question and Answer Section
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const QuestionAnswer(
                    question: '',
                    answer: '',
                  ),
                ),
              ),
              child: SizedBox(
                height: 200,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.indigoAccent,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.indigoAccent.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(25),
                  margin: const EdgeInsets.all(25.0),
                  child: Text(
                    ' 📖 Kanda hano, \n Usome ibisubizo ku bibazo wibaza.',
                    style: TextStyle(
                      color: Colors.indigo[100],
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),

            // Testimonial Section
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TestimonialPage(),
                ),
              ),
              child: SizedBox(
                height: 200,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.indigoAccent,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.indigoAccent.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(25),
                  margin: const EdgeInsets.all(25.0),
                  child: Text(
                    '👧 Kanda hano, \n Usome ubuhamya bwatanzwe.',
                    style: TextStyle(
                      color: Colors.indigo[100],
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),

            // Help Center Section
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AskHerePage(),
                ),
              ),
              child: SizedBox(
                height: 200,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.indigoAccent,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.indigoAccent.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(25),
                  margin: const EdgeInsets.all(25.0),
                  child: Text(
                    ' 📬 Kanda hano, \n Utwandikire, Tugufashe.',
                    style: TextStyle(
                      color: Colors.indigo[100],
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: const SizedBox(
        child: Text(
          "Girls Tech Ventures | 2023",
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
