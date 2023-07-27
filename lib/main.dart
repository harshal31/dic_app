import 'dart:math';

import 'package:first_flutter_project/dice_container.dart';
import 'package:flutter/material.dart';
import 'gradient_container.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: MainScreen(),
    ),
  ));
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<StatefulWidget> createState() => MainDice();
}

class MainDice extends State<MainScreen> {
  int diceNum = 1;
  NonRepeatingRandom nonRepeatingRandom = NonRepeatingRandom(1, 6);

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return createScreen();
  }

  Widget createScreen() {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.deepPurple, Colors.deepPurpleAccent])),
      child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Dice(diceNum),
          ElevatedButton(
              onPressed: () => setState(() {
                    diceNum = nonRepeatingRandom.next();
                  }),
              child: const Text("Throw dice"))
        ]),
      ),
    );
  }

  int generateNonRepeatingRandomNumber(int min, int max, Set<int> usedNumbers) {
    final random = Random();
    final range = max - min + 1;

    if (usedNumbers.length >= range) {
      throw Exception('All numbers within the range have been used.');
    }

    int randomNumber;

    do {
      randomNumber = random.nextInt(range) + min;
    } while (usedNumbers.contains(randomNumber));

    usedNumbers.add(randomNumber);
    return randomNumber;
  }
}
