class Question {
  final String _questionText;
  final bool _answer;
  final String _fact;

  Question(
      {required String questionText,
      required bool answer,
      required String fact})
      : _questionText = questionText,
        _answer = answer,
        _fact = fact;

  String get questionText => _questionText;

  String get fact => _fact;

  bool get questionAnswer => _answer;
}
