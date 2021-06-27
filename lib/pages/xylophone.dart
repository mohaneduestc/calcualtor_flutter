import 'package:flutter/material.dart';
import '../models/quiz_brain.dart';

QuizBrain _quizBrain = QuizBrain();

class Xylophone extends StatefulWidget {
  @override
  _XylophoneState createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  List<Icon> scorekeeper = [];

  Widget _buildChild(Color _color) => Expanded(
        child: TextButton(
          onPressed: () {
            setState(() {
              _quizBrain.nextQuestion();
              scorekeeper.add(Icon(
                Icons.check,
                color: Colors.amber,
              ));

              print(_quizBrain.getQuestionText());
            });
          },
          child: Row(
            children: scorekeeper,
          ),
          style: TextButton.styleFrom(backgroundColor: _color),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _buildChild(Colors.red),
        _buildChild(Colors.green),
        _buildChild(Colors.black),
        _buildChild(Colors.blue),
        _buildChild(Colors.redAccent),
        _buildChild(Colors.pink),
      ],
    );
  }
}
