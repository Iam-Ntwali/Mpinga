import 'package:flutter/material.dart';

class SRHServicesPage extends StatefulWidget {
  const SRHServicesPage({super.key});

  @override
  State<SRHServicesPage> createState() => _SRHServicesPageState();
}

class _SRHServicesPageState extends State<SRHServicesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[200],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'SRH Services',
          style: TextStyle(
            color: Colors.indigo,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
