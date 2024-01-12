import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // Scaffold start here
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
                size: 32,
              ),
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),

      // Body content
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Intro contents start here
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.indigo[100],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Muraho 👋,',
                    style: TextStyle(
                      color: Colors.indigo[600],
                      fontFamily: 'Pacifico',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Urakaza neza kuri',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo[900],
                    ),
                  ),
                  // const SizedBox(height: 1),
                  Text(
                    'MPINGA App',
                    style: TextStyle(
                      color: Colors.indigo[800],
                      fontFamily: 'Coiny',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
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
            const SizedBox(height: 8),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                color: Colors.indigo[300],
              ),
            ),

            // Services content start here
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Hitamo Service wifuza:',
                    style: TextStyle(
                      color: Colors.indigo,
                      fontFamily: 'Pacifico',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),

                  // service 1
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/srh_page'),
                    child: Card(
                      color: Colors.indigoAccent,
                      elevation: 3,
                      child: ListTile(
                        leading: Image.asset(
                          'assets/images/baza.png',
                          width: 70,
                          height: 70,
                          fit: BoxFit.cover,
                        ),
                        title: const Text(
                          'Sexual Reproductive Health',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: const Text(
                          'Kanda hano, wige byinshi byerekeye ubuzima bw\'Imyororokere',
                          style: TextStyle(
                            color: Colors.white60,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  // service 2
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/mh_page'),
                    child: Card(
                      color: Colors.indigoAccent,
                      elevation: 3,
                      child: ListTile(
                        leading: Image.asset(
                          'assets/images/app.png',
                          width: 60,
                          height: 60,
                          fit: BoxFit.cover,
                        ),
                        title: const Text(
                          'Mental Health Education',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: const Text(
                          'Kanda hano, wige byinshi byerekeye ubuzima bwo mu\'Umutwe',
                          style: TextStyle(
                            color: Colors.white60,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // const SizedBox(height: 5),

                  // service 3
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/quiz_page'),
                    child: Card(
                      color: Colors.indigoAccent,
                      elevation: 3,
                      child: ListTile(
                        leading: Image.asset(
                          'assets/images/app.png',
                          width: 60,
                          height: 60,
                          fit: BoxFit.cover,
                        ),
                        title: const Text(
                          'QUIZ / Izusuma ',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: const Text(
                          'Kanda hano, Ukine umukino wisuzuma ibyo umaze kwiga',
                          style: TextStyle(
                            color: Colors.white60,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),

                  // service 4
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/help_page'),
                    child: Card(
                      color: Colors.indigoAccent,
                      elevation: 3,
                      child: ListTile(
                        leading: Image.asset(
                          'assets/images/qn.png',
                          width: 60,
                          height: 60,
                          fit: BoxFit.cover,
                        ),
                        title: const Text(
                          'Help Center/ Ubufasha ',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: const Text(
                          'Kanda hano, Utwandikire nimba hari Ikibazo wifuza kutubaza',
                          style: TextStyle(
                            color: Colors.white60,
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
                    'assets/images/logo.png',
                    color: Colors.indigoAccent,
                  ),
                ),

                // other pages
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: ListTile(
                    leading: const Icon(
                      Icons.home,
                      color: Colors.indigoAccent,
                    ),
                    title: const Text(
                      'Home',
                      style:
                          TextStyle(color: Colors.indigoAccent, fontSize: 16),
                    ),
                    onTap: () {
                      // Navigate to the Home page
                      Navigator.pushNamed(context, '/home');
                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 15),
                  child: ListTile(
                    leading: const Icon(
                      Icons.help,
                      color: Colors.indigoAccent,
                    ),
                    title: const Text(
                      'Help',
                      style: TextStyle(color: Colors.indigoAccent),
                    ),
                    onTap: () {
                      // Navigate to the Help page
                      Navigator.pushNamed(context, '/help_page');
                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: ListTile(
                    leading: const Icon(
                      Icons.info,
                      color: Colors.indigoAccent,
                    ),
                    title: const Text(
                      'About',
                      style: TextStyle(color: Colors.indigoAccent),
                    ),
                    onTap: () {
                      // Navigate to the About page
                      Navigator.pushNamed(context, '/about_page');
                    },
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
