class Question {
  final String questionText;
  final List<Answer> answersList;

  Question(this.questionText, this.answersList);
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
}

List<Question> getQuestions() {
  List<Question> list = [];
  //ADD questions and answer here

  list.add(Question(
    "Ubuzima bw'imyororokere n'iki?",
    [
      Answer("Ni Ukumenyana na bantu benshi", false),
      Answer("Simbizi", false),
      Answer(
          "Nukumenya no gusobanukirwa Imyanya ndangabitsina n'imikorere yabyo",
          true),
      Answer("Byose nibyo", false),
    ],
  ));

  list.add(Question(
    "Sida yandurira mu mibonano muzabitsina indakigiye?",
    [
      Answer("Nibyo", true),
      Answer("Sibyo", false),
    ],
  ));

  list.add(Question(
    "Ubuzima bw'imyororokere n'iki?",
    [
      Answer("Ni Ukumenyana na bantu benshi", false),
      Answer("Simbizi", false),
      Answer(
          "Nukumenya no gusobanukirwa Imyanya ndangabitsina n'imikorere yabyo",
          true),
      Answer("Byose nibyo", false),
    ],
  ));

  list.add(Question(
    "Sida yandurira mu mibonano muzabitsina indakigiye?",
    [
      Answer("Nibyo", true),
      Answer("Sibyo", false),
    ],
  ));

  list.add(Question(
    "Ubuzima bw'imyororokere n'iki?",
    [
      Answer("Ni Ukumenyana na bantu benshi", false),
      Answer("Simbizi", false),
      Answer(
          "Nukumenya no gusobanukirwa Imyanya ndangabitsina n'imikorere yabyo",
          true),
      Answer("Byose nibyo", false),
    ],
  ));

  return list;
}
