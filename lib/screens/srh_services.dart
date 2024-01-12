import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import '../model/srh_modal.dart';

class SRHServicesPage extends StatelessWidget {
  SRHServicesPage({super.key});

  final questionService = QuestionService();

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
        itemCount: questionService.questions.length,
        itemBuilder: (context, index) {
          final question = questionService.questions[index];
          return Column(
            children: [
              ListTile(
                title: Text(
                  question.question,
                  style: const TextStyle(
                    color: Colors.indigo,
                    fontFamily: 'Monolisa',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onTap: () => questionService.openPDF(context, question.pdfPath),
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
