class Question {
  static int id = 0;
  String question;
  List<String> options;
  int correctAnswer;
  Question({this.question, this.options, this.correctAnswer}) {
    id++;
  }

  int verify(int index) {
    if (options[index] == options[correctAnswer])
      return 1;
    else
      return 0;
  }
}
