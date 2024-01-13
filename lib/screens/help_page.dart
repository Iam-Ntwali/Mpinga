// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({super.key});

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[200],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Help Center',
          style: TextStyle(
            color: Colors.indigo,
            fontFamily: 'Pacifico',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ufite Ikibazo cyangwa Igitekerezo',
              style: TextStyle(
                color: Colors.indigo[800],
                fontSize: 16.0,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              'Duhamagare cyangwa Wohereze ubutumwa kuri:',
              style: TextStyle(
                color: Colors.indigo[800],
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 30.0,
              width: double.infinity,
              child: Divider(
                color: Colors.indigo.shade100,
              ),
            ),
            Text(
              'Numero (Call, SMS na WhatsApp):',
              style: TextStyle(
                color: Colors.indigo[800],
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            Card(
              color: Colors.indigo[100],
              elevation: 0,
              margin: const EdgeInsets.symmetric(
                vertical: 10.0,
              ),
              child: const ListTile(
                leading: Icon(
                  Icons.phone,
                  size: 24.0,
                  color: Colors.indigo,
                ),
                title: Text(
                  '+250 789-357 482',
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16.0,
                    fontFamily: 'MonoLisa',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              'Email:',
              style: TextStyle(
                color: Colors.indigo[800],
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            Card(
              color: Colors.indigo[100],
              elevation: 0,
              margin: const EdgeInsets.symmetric(
                vertical: 10.0,
              ),
              child: const ListTile(
                leading: Icon(
                  Icons.email,
                  size: 24.0,
                  color: Colors.indigo,
                ),
                title: Text(
                  'info@girlstechventures.com',
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 16.0,
                    fontFamily: 'MonoLisa',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              'Sura na Website:',
              style: TextStyle(
                color: Colors.indigo[800],
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            Card(
              color: Colors.indigo[100],
              elevation: 0,
              margin: const EdgeInsets.symmetric(
                vertical: 10.0,
              ),
              child: ListTile(
                leading: const Icon(
                  Icons.web,
                  size: 24.0,
                  color: Colors.indigo,
                ),
                title: TextButton(
                  onPressed: () => launch('https://www.girlstechventure.com'),
                  child: const Text(
                    'Visit Our Website',
                    style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 16.0,
                      fontFamily: 'MonoLisa',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const SizedBox(
        child: Text(
          "Girls Tech Ventures",
          style: TextStyle(
            color: Colors.indigo,
            fontFamily: 'Monolisa',
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
