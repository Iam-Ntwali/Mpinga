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
      'question': '1. Ubuzima bw\'imyororokere n\'iki?',
      'pdfPath': 'assets/docs/PDF_Docs_1-6.pdf'
    },
    {
      'question': '2. Sobanukirwa Imyanya ndangabitsina',
      'pdfPath': 'assets/docs/PDF_Docs_7-14.pdf'
    },
    {
      'question': '3. Ibibazo n\'Ibisubizo',
      'pdfPath': 'assets/docs/PDF_Docs_15-18.pdf'
    },
    {
      'question': '4. Imibonano mpuza b\'Ibitsina',
      'pdfPath': 'assets/docs/PDF_Docs_19-19.pdf'
    },
    {
      'question': '5. Indwara zandurira mu bibonano mpuza b\'Ibitsina',
      'pdfPath': 'assets/docs/PDF_Docs_20-37.pdf'
    },
    {
      'question': '6. Kuboneza urabyaro n\'iki?',
      'pdfPath': 'assets/docs/PDF_Docs_38-46.pdf'
    },
    {
      'question': '7. Ese bisaba iki  kugirango umugore asame?',
      'pdfPath': 'assets/docs/PDF_Docs_47-52.pdf'
    },
    {
      'question': '8. Ibibazo n\'Ibisubizo',
      'pdfPath': 'assets/docs/PDF_Docs_53-55.pdf'
    },
    {
      'question': '9. Ikoreshwa ry\'agakigirizo',
      'pdfPath': 'assets/docs/PDF_Docs_56-60.pdf'
    },
    {
      'question': '10. Kuganira mu bwisanzure hagati y\'ababyeyi n\'abana',
      'pdfPath': 'assets/docs/PDF_Docs_61-67.pdf'
    },
    {
      'question': '11. Inda z\'abagavu',
      'pdfPath': 'assets/docs/PDF_Docs_68-70.pdf'
    },
    {
      'question': '12. Ibibazo n\'Ibisubizo',
      'pdfPath': 'assets/docs/PDF_Docs_71-76.pdf'
    },
    {
      'question':
          '13. Uburenganzira ku buzima bw\'imyororokere mu rubyiruko rw\'ibitsina byombi',
      'pdfPath': 'assets/docs/PDF_Docs_77-79.pdf'
    },
    {
      'question': '14. Ibibazo n\'Ibisubizo',
      'pdfPath': 'assets/docs/PDF_Docs_80-85.pdf'
    },
    {
      'question': '15. Ihohoterwa rishingiye ku gitsina',
      'pdfPath': 'assets/docs/PDF_Docs_86-90.pdf'
    },
    {
      'question': '16. Gukumira no kurwanya gusambanya Umwana',
      'pdfPath': 'assets/docs/PDF_Docs_91-93.pdf'
    },
    {
      'question':
          '17. Menya ibyo itegeko rishya riteganya ku bijyanye no gukuramo inda ku muntu utaruzuza imyaka 18',
      'pdfPath': 'assets/docs/PDF_Docs_94-95.pdf'
    },
    {
      'question': '18. Iga kubana n\'indwara ya SIDA',
      'pdfPath': 'assets/docs/PDF_Docs_96-99.pdf'
    },
    {
      'question': '19. Ibisobanuro by\'amagambo',
      'pdfPath': 'assets/docs/PDF_Docs_100-end.pdf'
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
                  style: const TextStyle(
                    color: Colors.indigo,
                    fontFamily: 'Monolisa',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
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
