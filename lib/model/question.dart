class Question {
  final String question;
  final String image;
  final List<String> options;
  final List<int> stateAnswer = [];
  final int answerIndex;
  bool enable = true;

  Question({
    required this.question,
    required this.image,
    required this.options,
    required this.answerIndex,
  });
}