import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyDice());
}

class MyDice extends StatefulWidget {
  const MyDice({super.key});

  @override
  State<MyDice> createState() => _MyDiceState();
}

class _MyDiceState extends State<MyDice> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  void playDice() {
    setState(
      () {
        leftDiceNumber = Random().nextInt(6) + 1;
        rightDiceNumber = Random().nextInt(6) + 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("DICE GAME"),
          ),
        ),
        body: Container(
          color: Colors.lightBlue,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            TextButton(
              onPressed: () {
                playDice();
              },
              child: Image(
                image: AssetImage("images/dice$leftDiceNumber.png"),
              ),
            ),
            TextButton(
              onPressed: () {
                playDice();
              },
              child: Image(
                image: AssetImage("images/dice$rightDiceNumber.png"),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
