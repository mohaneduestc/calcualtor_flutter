import 'dart:math';
import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changedDiceNumber() {
    setState(() {
      leftDiceNumber = Random().nextInt(3) + 1;
      rightDiceNumber = Random().nextInt(3) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dice'),
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextButton(
                      onPressed: changedDiceNumber,
                      child:
                          Image.asset('asset/image/dice$leftDiceNumber.jpg')),
                )),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                  onPressed: changedDiceNumber,
                  child: Image.asset('asset/image/dice$rightDiceNumber.jpg')),
            ))
          ],
        ),
      ),
    );
  }
}
