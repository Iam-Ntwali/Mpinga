import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

// question_model.dart
class QuestionModel {
  final String question;
  final String pdfPath;

  QuestionModel({required this.question, required this.pdfPath});
}

class QuestionService {
  final List<QuestionModel> questions = [
    QuestionModel(
      question: '1. Ubuzima bw\'imyororokere n\'iki?',
      pdfPath: 'assets/docs/PDF_Docs_1-6.pdf',
    ),
    QuestionModel(
        question: '2. Sobanukirwa Imyanya ndangabitsina',
        pdfPath: 'assets/docs/PDF_Docs_7-14.pdf'),
    QuestionModel(
      question: '3. Ibibazo n\'Ibisubizo',
      pdfPath: 'assets/docs/PDF_Docs_15-18.pdf',
    ),
    QuestionModel(
      question: '4. Imibonano mpuza b\'Ibitsina',
      pdfPath: 'assets/docs/PDF_Docs_19-19.pdf',
    ),
    QuestionModel(
      question: '5. Indwara zandurira mu bibonano mpuza b\'Ibitsina',
      pdfPath: 'assets/docs/PDF_Docs_20-37.pdf',
    ),
    QuestionModel(
      question: '6. Kuboneza urabyaro n\'iki?',
      pdfPath: 'assets/docs/PDF_Docs_38-46.pdf',
    ),
    QuestionModel(
      question: '7. Ese bisaba iki  kugirango umugore asame?',
      pdfPath: 'assets/docs/PDF_Docs_47-52.pdf',
    ),
    QuestionModel(
      question: '8. Ibibazo n\'Ibisubizo',
      pdfPath: 'assets/docs/PDF_Docs_53-55.pdf',
    ),
    QuestionModel(
      question: '9. Ikoreshwa ry\'agakigirizo',
      pdfPath: 'assets/docs/PDF_Docs_56-60.pdf',
    ),
    QuestionModel(
      question: '10. Kuganira mu bwisanzure hagati y\'ababyeyi n\'abana',
      pdfPath: 'assets/docs/PDF_Docs_61-67.pdf',
    ),
    QuestionModel(
      question: '11. Inda z\'abagavu',
      pdfPath: 'assets/docs/PDF_Docs_68-70.pdf',
    ),
    QuestionModel(
      question: '12. Ibibazo n\'Ibisubizo',
      pdfPath: 'assets/docs/PDF_Docs_71-76.pdf',
    ),
    QuestionModel(
      question:
          '13. Uburenganzira ku buzima bw\'imyororokere mu rubyiruko rw\'ibitsina byombi',
      pdfPath: 'assets/docs/PDF_Docs_77-79.pdf',
    ),
    QuestionModel(
      question: '14. Ibibazo n\'Ibisubizo',
      pdfPath: 'assets/docs/PDF_Docs_80-85.pdf',
    ),
    QuestionModel(
      question: '15. Ihohoterwa rishingiye ku gitsina',
      pdfPath: 'assets/docs/PDF_Docs_86-90.pdf',
    ),
    QuestionModel(
      question: '16. Gukumira no kurwanya gusambanya Umwana',
      pdfPath: 'assets/docs/PDF_Docs_91-93.pdf',
    ),
    QuestionModel(
      question:
          '17. Menya ibyo itegeko rishya riteganya ku bijyanye no gukuramo inda ku muntu utaruzuza imyaka 18',
      pdfPath: 'assets/docs/PDF_Docs_94-95.pdf',
    ),
    QuestionModel(
      question: '18. Iga kubana n\'indwara ya SIDA',
      pdfPath: 'assets/docs/PDF_Docs_96-99.pdf',
    ),
    QuestionModel(
      question: '19. Ibisobanuro by\'amagambo',
      pdfPath: 'assets/docs/PDF_Docs_100-end.pdf',
    ),
    // QuestionModel(),
    // QuestionModel(),
    // QuestionModel(),
  ];

  void openPDF(BuildContext context, String path) {
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
}
