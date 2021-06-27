import 'dart:math';
import 'package:flutter/material.dart';
import './question.dart';

class QuizBrain {
  int _questionIndex = 0;
  List<Question> _questionBank = [
    Question(question: 'What\'s You name', answer: true),
    Question(question: 'What\'s You birth day', answer: false),
    Question(question: 'What\'s You favourite', answer: true),
    Question(question: 'What\'s Your father\'s name', answer: true),
    Question(question: 'What\'s Your friend name', answer: false),
  ];

  String getQuestionText() {
    return _questionBank[_questionIndex].question;
  }
  void nextQuestion(){
    _questionIndex = Random().nextInt(3) + 1;
  }
}
