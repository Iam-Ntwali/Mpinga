import 'package:flutter/material.dart';

import 'qa.dart';
import 'testimonies.dart';
import 'ask_here.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[200], // Homepage bg color.

      // AppBar Start here
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Icon(
                Icons.menu,
                color: Colors.indigoAccent,
                size: 35,
              ),
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
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
                  fontSize: 40,
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

      // Drawer content
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          children: [
            // logo
            Column(
              children: [
                DrawerHeader(
                  child: Image.asset(
                    'assets/logo.png',
                    color: Colors.indigoAccent,
                  ),
                ),

                // other pages
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Colors.indigoAccent,
                    ),
                    title: Text(
                      'Home',
                      style: TextStyle(color: Colors.indigoAccent),
                    ),
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: ListTile(
                    leading: Icon(
                      Icons.info,
                      color: Colors.indigoAccent,
                    ),
                    title: Text(
                      'About',
                      style: TextStyle(color: Colors.indigoAccent),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10, bottom: 15),
                  child: ListTile(
                    leading: Icon(
                      Icons.help,
                      color: Colors.indigoAccent,
                    ),
                    title: Text(
                      'Help',
                      style: TextStyle(color: Colors.indigoAccent),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
