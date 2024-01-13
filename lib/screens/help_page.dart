import 'dart:html';

import 'package:flutter/material.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({super.key});

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  Future sendEmail() async {
    final Url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
  }

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
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nimba hari ibibazo bitasubijwe, cyangwa Wifuza kugira ikindi watubaza.\nUzuza iyi form. ',
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.indigo[700]),
            ),
            const SizedBox(height: 15.0),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _nameController,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.account_box),
                      labelText: 'Amazina',
                      hintText: '',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return '⚠️ Andika Amazina yawe';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _phoneNumberController,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.phone_android),
                      labelText: 'Numero ya Telephone:',
                      hintText: '',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return '⚠️ Andika Numero yawe ya telephone ';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.mail),
                      labelText: 'Email yawe:',
                      hintText: '',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return '⚠️ Andika Email yawe';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _messageController,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.message),
                      labelText: 'Message',
                    ),
                    minLines: 5,
                    maxLines: 8,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return '⚠️ Andika ubutumwa bwawe';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 15.0),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Send the question with user details
                        // ... implement logic to send data ...
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text('Your question has been sent!')),
                        );
                      }
                    },
                    child: const Text('Ohereza Form'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
