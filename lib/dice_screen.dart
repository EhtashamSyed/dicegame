import 'dart:math';

import 'package:flutter/material.dart';

class DiceScreen extends StatefulWidget {
  const DiceScreen({Key? key}) : super(key: key);

  @override
  _DiceScreenState createState() => _DiceScreenState();
}

class _DiceScreenState extends State<DiceScreen> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: const Text('Dice Game'),
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton
                  (onPressed: () {
                    setState(() {
                      leftDiceNumber = Random().nextInt(6) + 1;
                      rightDiceNumber = Random().nextInt(6) + 1;
                    });

                },
                  child: Image.asset('assets/Dice$leftDiceNumber.jpeg')),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton
                  (onPressed: () {
                    setState(() {
                      rightDiceNumber = Random().nextInt(6) + 1;
                      leftDiceNumber = Random().nextInt(6) + 1;
                    });
                },
                  child: Image.asset('assets/Dice$rightDiceNumber.jpeg')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
