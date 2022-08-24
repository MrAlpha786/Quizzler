import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:quizzler_flutter/question_bank.dart';
import 'custom_button.dart';

const _kTotalNoOfQuestions = 10;

class QuizPage extends StatefulWidget {
  QuizPage({Key? key}) : super(key: key);

  final QuestionBank _bank = QuestionBank();

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  final List<Widget> _scoreBoard = [];
  bool _isCurrentQuestionAnswered = false;
  bool _isCorrectAnswer = false;
  int _questionNumber = 1;
  int _correctAnswers = 0;

  List<Widget> _getQuestionText() {
    return [
      Text(
        widget._bank.questionText,
        style: const TextStyle(
          fontSize: 24.0,
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      )
    ];
  }

  List<Widget> _getAnswerText() {
    return [
      Text(
        _isCorrectAnswer ? 'Correct Answer!' : 'Wrong Answer!',
        style: TextStyle(
          fontSize: 36.0,
          color: _isCorrectAnswer ? Colors.green : Colors.red,
        ),
        textAlign: TextAlign.center,
      ),
      const SizedBox(height: 20.0),
      Text(
        widget._bank.factText,
        style: const TextStyle(
          fontSize: 24.0,
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
    ];
  }

  void _updateScoreboard() {
    if (_isCorrectAnswer) {
      _scoreBoard.add(
        const Icon(
          Icons.check,
          color: Colors.green,
          size: 24.0,
        ),
      );
    } else {
      _scoreBoard.add(
        const Icon(
          Icons.close,
          color: Colors.red,
          size: 24.0,
        ),
      );
    }
  }

  void _checkAnswer(bool response) {
    setState(() {
      _isCurrentQuestionAnswered = true;

      _isCorrectAnswer = response == widget._bank.answer;
      if (_isCorrectAnswer) _correctAnswers++;

      _updateScoreboard();
    });
  }

  void _nextQuestion() {
    setState(() {
      _isCurrentQuestionAnswered = false;

      if (_questionNumber++ < _kTotalNoOfQuestions) {
        widget._bank.nextQuestion();
      } else {
        _showQuizOverDialog();
      }
    });
  }

  void _reset() {
    setState(() {
      widget._bank.reset();
      _scoreBoard.clear();
      _questionNumber = 1;
      _correctAnswers = 0;
    });
  }

  void _showQuizOverDialog() {
    double score = _correctAnswers / _kTotalNoOfQuestions * 100;
    _reset();
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) => BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: SimpleDialog(
                title: const Center(
                    child: Text(
                  'QUIZ OVER!',
                  style: TextStyle(fontSize: 36.0),
                )),
                children: [
                  const Center(
                    child: Text(
                      'Your Score',
                      style: TextStyle(fontSize: 24.0),
                    ),
                  ),
                  Center(
                    child: Text(
                      '${score.round()}%',
                      style: TextStyle(
                        fontSize: 60.0,
                        fontWeight: FontWeight.bold,
                        color: score > 70
                            ? Colors.green
                            : score > 40
                                ? Colors.orange
                                : Colors.red,
                      ),
                    ),
                  ),
                  SimpleDialogOption(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('NEW QUIZ'),
                    ),
                  )
                ],
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) => Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
        child: Column(
          children: [
            Expanded(
              flex: orientation == Orientation.portrait ? 5 : 3,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _isCurrentQuestionAnswered
                      ? _getAnswerText()
                      : _getQuestionText(),
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  CustomButton(
                    label: 'TRUE',
                    onPressed: _isCurrentQuestionAnswered
                        ? null
                        : () => _checkAnswer(true),
                    color: Colors.green,
                  ),
                  CustomButton(
                    label: 'FALSE',
                    onPressed: _isCurrentQuestionAnswered
                        ? null
                        : () => _checkAnswer(false),
                    color: Colors.red,
                  ),
                ],
              ),
            ),
            CustomButton(
              label: 'NEXT',
              onPressed:
                  _isCurrentQuestionAnswered ? () => _nextQuestion() : null,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                reverse: true,
                child: Row(
                  children: _scoreBoard,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
