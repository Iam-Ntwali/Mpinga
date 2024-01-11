import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class SRHServicesPage extends StatefulWidget {
  const SRHServicesPage({super.key});

  @override
  State<SRHServicesPage> createState() => _SRHServicesPageState();
}

class _SRHServicesPageState extends State<SRHServicesPage> {
  final questions = [
    {
      'question': '1. Ubuzima bw\'imyororokere niki?',
      'pdfPath': 'assets/docs/PDF_Docs_1-6.pdf'
    },
    {
      'question': '2. Sobanukirwa Imyanya Ndangabitsina',
      'pdfPath': 'assets/docs/PDF_Docs_7-14.pdf'
    },
    {
      'question': '3. Ibibazo n\'Ibisubizo',
      'pdfPath': 'assets/docs/PDF_Docs_15-18.pdf'
    },
  ];

  void _openPDF(String path) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SafeArea(
          child: SfPdfViewer.asset(
            path,
          ),
        ), // Use SfPdfViewer
      ),
    );
  }

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
            fontFamily: 'Pacifico',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        // Make the list scrollable
        itemCount: questions.length,
        itemBuilder: (context, index) {
          final question = questions[index];
          return Column(
            children: [
              ListTile(
                title: Text(
                  question['question']!,
                  style: TextStyle(
                    color: Colors.indigo[900],
                    fontSize: 18,
                  ),
                ),
                onTap: () => _openPDF(question['pdfPath']!),
              ),
              Divider(
                color: Colors.indigo[300],
              ),
            ],
          );
        },
      ),
    );
  }
}
