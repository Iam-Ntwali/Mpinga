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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [],
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
