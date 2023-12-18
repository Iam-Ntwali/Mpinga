import 'package:flutter/material.dart';

class AskHerePage extends StatefulWidget {
  const AskHerePage({super.key});

  @override
  State<AskHerePage> createState() => _AskHerePageState();
}

class _AskHerePageState extends State<AskHerePage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[200], // question page color.
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'TWANDIKIRE',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Nimba hari ibibazo bitasubijwe, cyangwa Wifuza kugira ikindi watubaza.\nUzuza iyi form. ',
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 15.0),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _nameController,
                    decoration: const InputDecoration(
                      labelText: 'Amazina',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return '⚠️ Andika Amazina rwawe';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _phoneNumberController,
                    decoration: const InputDecoration(
                      labelText: 'Numero ya Telephone:',
                      hintText: '',
                    ),
                  ),
                  TextFormField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                      labelText: 'Email yawe:',
                      hintText: '(Optional)',
                    ),
                  ),
                  TextFormField(
                    controller: _messageController,
                    decoration: const InputDecoration(
                      labelText: 'Message',
                    ),
                    minLines: 5,
                    maxLines: 10,
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
