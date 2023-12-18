import 'package:flutter/material.dart';

class QuestionAnswer extends StatefulWidget {
  const QuestionAnswer(
      {super.key, required this.question, required this.answer});

  final String question;
  final String answer;

  @override
  State<QuestionAnswer> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionAnswer> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[200], // question page color.
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'IBIBAZO n\' IBISUBIZO',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Display the question
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ExpansionTile(
                title: const Text(
                  '1) Ubuzima bw’imyoyorokere ni iki?',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigoAccent,
                  ),
                ),
                initiallyExpanded: _isExpanded,
                onExpansionChanged: (isExpanded) {
                  setState(() => _isExpanded = isExpanded);
                },
                children: const [
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      'Ubuzima bw’imyororokere ni imiterere, imikurire, imikorere n’imihindagurikire y’umubiri cyane cyane imyanya myibarukiro na ndangagitsina.',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                ],
              ),
            ),
            // Display the question
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ExpansionTile(
                title: const Text(
                  '2) Ibyerekeye serivisi zigenewe urubyiruko',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigoAccent,
                  ),
                ),
                initiallyExpanded: _isExpanded,
                onExpansionChanged: (isExpanded) {
                  setState(() => _isExpanded = isExpanded);
                },
                children: const [
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      '👉 Serivisi zigenewe urubyiruko ni serivisi zibanda cyane ku buzima bw\'imyororokere nko gukumira inda z\'abangavu, indwara zandurirwa mu mibonano mpuzabitsina n\'ihohoterwa; \n👉 Ni serivisi zizewe, ziboneka ku mavuriro, ku mashuri, ku bigo by\'urubyiruko n\'ahandi ...\n👉 Ni serivisi zisubiza ibibazo by’urubyiruko kandi zidahenze; \n👉 Izo serivisi zitangirwa mu ibanga kandi mu buryo bunogeye urubyiruko; \n👉 Zitangwa n’abakozi babihuguriwe kandi babifitiye uburenganzira; \n👉 Itangwa rya serivisi z’urubyiruko rikorwa neza hatabayeho gutegereza igihe kirekire.',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                ],
              ),
            ),
            // Display the question
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ExpansionTile(
                title: const Text(
                  '3) Ni izihe serivisi zigenewe urubyiruko?',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigoAccent,
                  ),
                ),
                initiallyExpanded: _isExpanded,
                onExpansionChanged: (isExpanded) {
                  setState(() => _isExpanded = isExpanded);
                },
                children: const [
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      '👉 Guhabwa inyigisho zerekeranye n’ ubuzima bw’ imyororokere; \n👉 Guhabwa inyigisho n’uburyo bwo kuboneza urubyaro; \n👉 Gukumira no kuvura indwara zandurirwa mu mibonano mpuzabitsina; \n👉 Gukumira ihohoterwa rishingiye ku gitsina no gufasha abarikorewe; \n👉 Ubujyanama no gupima Virusi itera SIDA; \n👉 Ubujyanama ku bitegura kurushinga; \n👉 Inyigisho zigamije gukumira inda mu bangavu; \n👉 Ubujyanama gupima no gukurikirana ubuzima bw’abakobwa batwite; \n👉 Ubujyanama bujyanye no kwirinda gukuramo inda mu buryo budakurikije amategeko no kwita ku wagize ingaruka zo gukuramo inda; \n👉 Inyigisho ku kamaro ko gukebwa ku bahungu no gutanga iyo serivisi.',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                ],
              ),
            ),
            // Display the question
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ExpansionTile(
                title: const Text(
                  '4) Gusama ni iki?',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigoAccent,
                  ),
                ),
                initiallyExpanded: _isExpanded,
                onExpansionChanged: (isExpanded) {
                  setState(() => _isExpanded = isExpanded);
                },
                children: const [
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      '👉 Ni uguhura kw’intangangore n’intangangabo bikabyara urusoro; \n👉 Muri rusange intanga ngabo imwe niyo yinjira mu ntangangore; \n👉 Urusoro nyuma y’isama ruva mu muyoborantanga rukajya mu mura/nyababyeyi aho ruzakurira; \n👉 Urusoro nyuma y’isama ruva mu muyoborantanga rukajya mu mura/nyababyeyi aho ruzakurira; \n👉 Urusoro iyo rumaze gukura rwitwa umwana (umwana ushyitse avukira amezi icyenda); \n👉 Urusoro rushobora gukurira ahandi hatari mu mura. Icyo gihe iyo hatabonetse ubufasha bw’abaganga havuka ibibazo bishobora gutera urupfu rw’umubyeyi cyangwa umwana.\n',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                ],
              ),
            ),
            // Display the question
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ExpansionTile(
                title: const Text(
                  '5) Kujya mu mihango bisobanura iki? ',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigoAccent,
                  ),
                ),
                initiallyExpanded: _isExpanded,
                onExpansionChanged: (isExpanded) {
                  setState(() => _isExpanded = isExpanded);
                },
                children: const [
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      '👉 Gusohoka hanze kw’ amaraso aturutse muri nyababyeyi agasohokera mu gitsina cy’umukobwa;\n👉 Imihango bivuga ko nta sama ryabayeho, bityo aho urusoro rwari kuzakurira hagatangira komoka no kuva amaraso; \n👉 Imihango imara hagati y\'iminsi 3-5 muri rusange. Iyo minsi ishobora kugabanuka cyangwa ikarenga ku bagore cyangwa abakobwa bamwe na bamwe; \n👉 Abakobwa bamwe bagira imihango ibababaza, ariko ntibivuga ko baba barwaye; \n👉 Gukora imibonano mpuzabitsina ntibivura kuribwa uri mu mihango nk’uko bamwe babyibwira; \n👉 Umuntu akoze imibonano mpuzabitsina ari mu mihango ashobora gusama cyane cyane ku bantu bafite ukwezi guhindugurika; \n👉 Abakobwa bamwe bagira imihango ibababaza, ariko ntibivuga ko baba barwaye; \n👉 Gukora imibonano mpuzabitsina ntibivura kuribwa uri mu mihango nk’uko bamwe babyibwira; \n👉 Umuntu akoze imibonano mpuzabitsina ari mu mihango ashobora gusama cyane cyane ku bantu bafite ukwezi guhindugurika;',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                ],
              ),
            ),
            // Display the question
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ExpansionTile(
                title: const Text(
                  '6) Ukwezi k’umugore ni iki? ',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigoAccent,
                  ),
                ),
                initiallyExpanded: _isExpanded,
                onExpansionChanged: (isExpanded) {
                  setState(() => _isExpanded = isExpanded);
                },
                children: const [
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      '👉 Ukwezi k’umugore gutangira umunsi wa mbere aboneyeho imihango ku karangira umunsi ubanziriza kubona imihango y’ukwezi gukurikiyeho; \n 👉 Ukwezi k\'umugore kudahindagurika ugereranyije kumara iminsi 28 ariko gushobora no kumara hagati y’iminsi 21-35 ku bagore bakuru cyangwa 21-45 ku bangavu; \n👉 Ukwezi k\'umugore guhindagurika gushobora kumara iminsi iri munsi cyangwa irenga iyavuzwe haruguru; \n👉 Mu kwezi k’umugore habamo iminsi aba afite amahirwe yo gusama (“iminsi y’uburumbuke”), hakabamo n’indi minsi aba ari nta mahirwe yo gusama Iminsi itari iy’uburumbuke yo gusama; \n👉 Umugore arekura intangangore buri kwezi. N\'ubwo iyo ntangangore ibaho gusa amasaha 24 imaze kurekurwa, umugore ashobora gusama mu gihe cy’iminsi myinshi mu kwezi kwe kubera ko intanga ngabo ishobora kumara iminsi igera kuri itanu ikiri nzima muri nyababyeyi mbere cyangwa nyuma y\'uko intanga ngore irekurwa; \n👉 Ni ngombwa kumenya uburumbuke bwawe no gusobanukirwa ukwezi k’umugore; Ibyo bizagufasha kumenya umubiri wawe no gusobanukirwa uburyo bwo kuboneza urubyaro no kwirinda inda zidateganyijwe.',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                ],
              ),
            ),
            // Display the question
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ExpansionTile(
                title: const Text(
                  '7) Ubugumba ni iki?',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigoAccent,
                  ),
                ),
                initiallyExpanded: _isExpanded,
                onExpansionChanged: (isExpanded) {
                  setState(() => _isExpanded = isExpanded);
                },
                children: const [
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      'Ni igihe umugore n’umugabo batabasha kubyara \n \n👉 Ubugumba ntibuterwa gusa n’ikibazo gifitwe n’umugore; \n👉 bushobora no guterwa n’ikibazo kiri ku mugabo.',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                ],
              ),
            ),
            // Display the question
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ExpansionTile(
                title: const Text(
                  '8) Ubugumba buterwa n’iki?',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigoAccent,
                  ),
                ),
                initiallyExpanded: _isExpanded,
                onExpansionChanged: (isExpanded) {
                  setState(() => _isExpanded = isExpanded);
                },
                children: const [
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      '👉 Ugukorwa kw’amasohoro adahagije; \n👉 Intangangabo zidafite imbaraga; \n👉 Amavangingo y’umugore atabasha gutambutsa intangangabo bitewe n’indwara zandurira mu mibonano mpuzabitsina cyangwa; hatarakozwe itangangabo zihagije; \n👉 Kutarekurwa kw’intangangore; \n👉 Imyanya myibarukiro y’umugore cyangwa umugabo idakora neza',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                ],
              ),
            ),
            // Display the question
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ExpansionTile(
                title: const Text(
                  '9) Isuku y’imyanya ndangagitsina',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigoAccent,
                  ),
                ),
                initiallyExpanded: _isExpanded,
                onExpansionChanged: (isExpanded) {
                  setState(() => _isExpanded = isExpanded);
                },
                children: const [
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      '👉 Kutagira isuku y’imyanya ndangagitsina bitera: \n   ✅ Impumuro mbi mu gitsina; \n   ✅ Indwara z’ uruhu harimo n’ indwara zandurira mu myanya ndangagitsina na kanseri;\n \n👉 Imyanya ndangagitsina igomba kozwa buri munsi hakoreshejwe amazi meza kani ahagije; \n\n👉Ku bahungu ni byiza gukunguta imboro igihe umaze kwihagarika;\n\n👉 Ku bahungu gukebwa ni bumwe mu buryo bw’isuku ariko nyuma yo kwisiramuza koza imyanya ndangagitsina bigomba gukomeza; \n\n👉 Ku bakobwa ni byiza gusukura imyanya ngangagitsina hakoreshejwe urupapuro rwabigenewe cyangwa amazi nyuma yo kwihagarika; \n\n👉 Ni byiza gusukura mu kibuno hakoreshejwe amazi cyangwa igipapuro cyabugenewe igihe umaze kwituma, uvana imbere ujyana inyuma;\n\n👉 Ni byiza gukaraba mu ntoki n’amazi meza n’isabune igihe umaze gusukura imyanya ndangagitsina cyangwa uvuye ku musarane; \n\n👉 Ni byiza kubanza koza mu gitsina ugakurikizaho mu kibuno, ariko ukozauvana imbere werekeza inyuma;\n\n👉 Birabujijwe gukoresha mu gitsina amasabune n’amavuta ahumura, imibavu cyangwa puderi kuko byakwangiza utunyangingo turinda umubiri.',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ExpansionTile(
                title: const Text(
                  '10) Ubugimbi n’ubwangavu ni iki?',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigoAccent,
                  ),
                ),
                initiallyExpanded: _isExpanded,
                onExpansionChanged: (isExpanded) {
                  setState(() => _isExpanded = isExpanded);
                },
                children: const [
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      '⚫ Ubugimbi n’ ubwangavu ni igihe cy’ imihindagurikire y’ umubiri, aho umuntu aba ari kuva mu bwana ajya mu bukuru. Icyo gihe gitangira hagati y’ imyaka 12 na 14,arikogishobora kuba mbere y’iyi myaka.\n\n⚫ Impinduka z’umubiri ku bakobwa: \n    👉 Gukura mu gihagararo, kubyibuha mu matako no gukura kw’ imyanya ndangagitsina muri rusange;\n    👉 Kumera insya inshakwaha, amabere; umukobwa ashobora kurwara ibishishi\n    👉 Habaho kurekurwa kw’ intangangore no kujya mu mihango bwa mbere; \n    👉 Mu gihe cy’ubwangavu umukobwa ashobora gusama kabone n\'ubwo yaba atarabona imihango bwa mbere.\n\n⚫ Impinduka z’umubiri ku bahungu:\n    👉 Gukura mu gihagararo, kubyibuha mu gituza no gukura kw’ imyanya ndangagitsina muri rusange;\n    👉 Kumera insya n’ incakwaha, kumera ubwanwa n’ impwemwe, kuniga ijwi kandi umusore ashobora kurwara ibishishi;\n    👉 Kwiroteraho cyangwa gusohora bwa mbere; \n    👉 Muri iki gihe umusore ashobora gutera inda igihe akoze imibonano mpuzabitsina idakingiye; kabone n\'ubwo yaba atariroteraho.\n\n ⚫ Impinduka z’imitekerereze n’ ibyiyumviro ku bahungu n’abakobwa:\n    👉 Kwiyumvamo ko abandi batamwumva;\n    👉 Gushaka kwigenga aho kugengwa n’umuryango;\n    👉 Guhubuka mu gufata ibyemezo;\n    👉 Gutekereza no kwibaza cyane ku mpinduka zirimo kumubaho;\n    👉 Gutangira kwifuza gukora imibonano mpuzabitsina.\n\n',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ExpansionTile(
                title: const Text(
                  '11) Uko indwara zandurira mu mibonano mpuzabitsina zikwirakwizwa:',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigoAccent,
                  ),
                ),
                initiallyExpanded: _isExpanded,
                onExpansionChanged: (isExpanded) {
                  setState(() => _isExpanded = isExpanded);
                },
                children: const [
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      '👉 Zandura zinyuze mu gitsina igihe habayeho imibonano mpuzabitsina idakingiye;\n👉 Zishobora kwandura habaye imibonano mpuzabitsina idakingiye ikorewe mu kibuno cyangwa mu kanwa; \n👉 Izo ndwara ababyeyi bashobora kuzanduza abana babatwite, bababyara cyangwa babonsa; \n👉 Zishobora kwandurira mu guhuza amaraso hagati y’uwanduye n’utanduye.\n\n ⚠️ Icyitonderwa:\n    ➖ Imibonano mpuzabitsina idakingiye yakwanduza n\'ubwo yaba ikozwe inshuro imwe gusa;\n    ➖ Imiterere y’imyanya ndangagitsina y’umugore yorohereza kwandura indwara zandurira mu mibonano mpuzabitsina;\n    ➖ Indwara zimwe na zimwe zandurira mu mibonano mpuzabitsina ku bakobwa/abagore ntizigira ibimenyetso;\n    ➖ Ihohotera rishingiye ku gitsina ryibasira abakobwa/abagore cyane rikorwa n\'abahungu/abagabo. Iyi ni imwe mu nzira zo kwandura izi ndwara.',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ExpansionTile(
                title: const Text(
                  '12) Bimwe mu bimenyetso by’indwara zanduriramu mibonano mpuzabitsina:',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigoAccent,
                  ),
                ),
                initiallyExpanded: _isExpanded,
                onExpansionChanged: (isExpanded) {
                  setState(() => _isExpanded = isExpanded);
                },
                children: const [
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      '👉 Kuribwa mu kiziba cy’inda no kuva atari igihe cy’imihango ku bakobwa/abagore\n👉 Kugira amashyira cyangwa amavangingo adasanzwe mu gitsina no kubabara igihe wihagarika\n👉 Ibisebe bibabaza cyangwa bitababaza ku gitsina, mu kibuno cyangwa mu kanwa\n👉 Kugira uburyaryate cyangwa uburibwe mu gitsina\n👉 Kubyimba agahu gatwikira amabya ku bahungu/abagabo\n👉 Kugira amasazi mu mayasha \n👉 Kumera isharankima mu gitsina cyangwa hagati y’amaguru\n👉 Kugira umuriro no kuribwa mu gihe cy’imibonano mpuzabitsina\n\n⚠️ Icyitonderwa:\n    ➖ Umuntu ashobora kugira kimwe cyangwa byinshi muri ibi bimenyetso\n    ➖ Umuntu ashobora kutagira ikimenyetso na kimwe kandi yaranduye izi ndwara\n    ➖ Ibimenyetso bimwe by’izi ndwara bishobora kwikiza nta muti, ntibivuze ko umuntu aba yakize indwara/ubwandu kandi muri icyo gihe aba agishobora kwanduza\n    ➖ Inyinshi mu ndwara zandurira mu mibonano mpuzabitsina ziravurwa zigakira.\n    ➖ Virusi itera SIDA na bumwe mu bwoko bw’ndwara z’umwijima ntizikira ariko zifite imiti igabanya ubukana bwazo bukagabanyuka, bityo ibyuririzi byazo bigakumirwa\n    ➖ Mu gihe urwaye indwara zandurira mu mibonano mpuzabitsina, usabwe gushishikariza uwo mwayikoranye wese mukihutira kujya kwa muganga kwivuza.',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ExpansionTile(
                title: const Text(
                  '13) Uko wakwirinda indwara zandurirwa mu mibonano mpuzabitsina:',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigoAccent,
                  ),
                ),
                initiallyExpanded: _isExpanded,
                onExpansionChanged: (isExpanded) {
                  setState(() => _isExpanded = isExpanded);
                },
                children: const [
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      '👉 Kwifata kugeza ushinze urugo;\n👉 Gukoresha agakingirizo buri gihe kandi neza, igihe kwifata byakunaniye;\n👉 Kwipimisha indwara zandurira mu mibonano mpuzabitsina na virusi itera SIDA;\n👉 Ku imibonano mpuzabitsina n’abantu benshi;\n👉 Kugira amakuru ahagije ku byerekeranye n’indwara zandurira mu mibonano mpuzabitsina;\n👉 Kwirinda gukoresha ibiyobyabwenge;\n👉 Kwirinda gukora uburaya no gukora imibonano mpuzabitsina na shuga dadi cyangwa shuga mami;\n👉 Ku bakobwa kwirinda gukoresha amasabune n’amavuta ahumura, imibavu ndetse na za puderi mu myanya ndangagitsina;\n👉 Kwikebesha ku bagabo;\n👉 Kwirinda gukora imwe mu migenzo gakondo nko gukurakuza, gukuramo inzembe, gukazanura n’ibindi.',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ExpansionTile(
                title: const Text(
                  '14) Uburyo Virusi itera SIDA yanduriramo',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigoAccent,
                  ),
                ),
                initiallyExpanded: _isExpanded,
                onExpansionChanged: (isExpanded) {
                  setState(() => _isExpanded = isExpanded);
                },
                children: const [
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      '👉 Imibonano mpuzabitsina idakingiye\n👉 Gukoresha ibyuma n’ibindi bikoresho bikomeretsa byanduye \n👉 Umugore ubana na Virusi itera SIDA ashobora kwanduza umwana igihe amutwite, amubyara cyangwa amwonsa\n\n⚠️ Icyitonderwa: Ibi bikurikira nti ibyanduza Virusi itera SIDA:\n    ➖ Kubana no kwegera umuntu urwaye SIDA cyangwa wanduye virusi itera SIDA;\n    ➖ Gusangira amafunguro n’umuntu ubana cyagwa urwaye virusi itera SIDA;\n    ➖ Guhoberana no kuramukanya n’umuntu ubana na virusi itera SIDA cyangwa urwaye SIDA;\n    ➖ Gukoresha ubwiherero n’u wiyuhagiriro imwe n’um untu urwaye cyangwa wanduye SIDA;\n    ➖ Gukina cyangwa kogana n’umuntu ubana cyangwa wanduye SIDA\n    ➖ Kuribwa n’umubu no gukororerwaho cyangwa kwitsamurirwaho n’umuntu urwaye cyangwa wanduye virusi itera SIDA.',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ExpansionTile(
                title: const Text(
                  '15) Uburyo bwo kwirinda no kurinda abandi Virusi itera SIDA',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigoAccent,
                  ),
                ),
                initiallyExpanded: _isExpanded,
                onExpansionChanged: (isExpanded) {
                  setState(() => _isExpanded = isExpanded);
                },
                children: const [
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      '👉 Kwifata;\n👉 Ubudahemuka mu bashakanye;\n👉 Gukoresha agakingirizo igihe kwifata n’ubudahemuka byakunaniye;\n👉 Kwipimisha virusi itera SIDA ukamenya uko uhagaze;\n👉 Kwivuza indwara zandurira mu mibonano mpuzabitsina hakiri kare;\n👉 Kwirinda gukoresha inshinge zakoreshejwe n’ibindi bikoresho bikomeretsa;\n 👉 Kwisuzumisha inda no kubyarira kwa muganga igihe umubyeyi atwite\n👉 Kwihutira kujya ku kigo nderabuzima mu gihe wakoze imibonano mpuzabitsina idakingiye utazi uko ahagaze cyangwa umuntu ubana virusi itera SIDA;\n👉 Gufata imiti igabanya ubukana bwa virusi itera SIDA ku banduye;\n : GUkebwa ku bahungu bigabanya ibyango byo kwandura virusi itera; SIDA ariko si urukingo kandi ntibirinda kwandura virusi itera SIDA ijana kwi ijana',
                      style: TextStyle(fontSize: 16.0),
                    ),
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
