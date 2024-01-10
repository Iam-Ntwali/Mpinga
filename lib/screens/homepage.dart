import 'package:flutter/material.dart';

import 'srh.dart';

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
                color: Colors.indigo,
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
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.indigoAccent[300],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Muraho 👋,',
                  style: TextStyle(
                    color: Colors.indigo[600],
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  'Urakaza neza kuri \nMPINGA Application',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo[900],
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  'Iyi Application igufasha kwiga no gusobanukirwa Ubuzima bw\'Imyororokere n\'Ubuzima bwo m\'Umutwe.',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.indigo[700],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Our Services',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo[900],
                  ),
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SrhPage(),
                    ),
                  ),
                  child: Card(
                    color: Colors.indigoAccent,
                    elevation: 3,
                    child: ListTile(
                      leading: Image.asset(
                        'assets/app.png', // Replace with the path to your image
                        width: 90,
                        height: 90,
                      ),
                      title: const Text(
                        'Sexual Reproductive Health',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: const Text(
                        'Kanda hano, wige byinshi byerekeye ubuzima bw\'Imyororokere',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    // Handle the tap action for the second service
                    // You can navigate to a new screen or perform any other action here
                  },
                  child: Card(
                    color: Colors.indigoAccent,
                    elevation: 3,
                    child: ListTile(
                      leading: Image.asset(
                        'assets/app.png', // Replace with the path to your image
                        width: 90,
                        height: 90,
                      ),
                      title: const Text(
                        'Sexual Reproductive Health',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: const Text(
                        'Kanda hano, wige byinshi byerekeye ubuzima bw\'Imyororokere',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
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
