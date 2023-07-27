import 'package:flutter/material.dart';

class Dice extends StatelessWidget {
  final int numDice;

  const Dice(this.numDice, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.tight(const Size(200, 200)),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(22.0)),
          border: const Border.fromBorderSide(
              BorderSide(color: Colors.black, width: 3.0)),
          color: Colors.yellow.withOpacity(0.7)),
      child: runDiceBaseOnDiceNum(),
    );
  }

  Widget runDiceBaseOnDiceNum() {
    switch (numDice) {
      case 1:
        return diceOne();
      case 2:
        return diceTwo();
      case 3:
        return diceThree();
      case 4:
        return diceFour();
      case 5:
        return diceFive();
      default:
        return diceSix();
    }
  }

  Widget diceOne() => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin:
                const EdgeInsets.symmetric(vertical: 32.0, horizontal: 10.0),
            constraints: BoxConstraints.tight(const Size(30.0, 30.0)),
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.black),
          )
        ],
      );

  Widget diceTwo() => Stack(
        children: [
          Positioned(
              left: 1.0,
              child: Container(
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 10.0),
                constraints: BoxConstraints.tight(const Size(30.0, 30.0)),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.black),
              )),
          Positioned(
              bottom: 1.0,
              right: 1.0,
              child: Container(
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 10.0),
                constraints: BoxConstraints.tight(const Size(30.0, 30.0)),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.black),
              ))
        ],
      );

  Widget diceThree() => Column(
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 10.0),
                constraints: BoxConstraints.tight(const Size(30.0, 30.0)),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.black),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(
                    vertical: 32.0, horizontal: 10.0),
                constraints: BoxConstraints.tight(const Size(30.0, 30.0)),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.black),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 10.0),
                constraints: BoxConstraints.tight(const Size(30.0, 30.0)),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.black),
              )
            ],
          )
        ],
      );

  Widget diceFour() => Stack(
        children: [
          Positioned(
              child: Container(
            margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            constraints: BoxConstraints.tight(const Size(30.0, 30.0)),
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.black),
          )),
          Positioned(
              right: 1.0,
              child: Container(
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 10.0),
                constraints: BoxConstraints.tight(const Size(30.0, 30.0)),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.black),
              )),
          Positioned(
              bottom: 1.0,
              child: Container(
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 10.0),
                constraints: BoxConstraints.tight(const Size(30.0, 30.0)),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.black),
              )),
          Positioned(
              bottom: 1.0,
              right: 1.0,
              child: Container(
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 10.0),
                constraints: BoxConstraints.tight(const Size(30.0, 30.0)),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.black),
              ))
        ],
      );

  Widget diceFive() => Stack(
        children: [
          Positioned(
              child: Container(
            margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            constraints: BoxConstraints.tight(const Size(30.0, 30.0)),
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.black),
          )),
          Positioned(
              right: 1.0,
              child: Container(
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 10.0),
                constraints: BoxConstraints.tight(const Size(30.0, 30.0)),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.black),
              )),
          Positioned(
              bottom: 1.0,
              child: Container(
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 10.0),
                constraints: BoxConstraints.tight(const Size(30.0, 30.0)),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.black),
              )),
          Positioned(
              bottom: 1.0,
              right: 1.0,
              child: Container(
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 10.0),
                constraints: BoxConstraints.tight(const Size(30.0, 30.0)),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.black),
              )),
          Center(
            child: Container(
              constraints: BoxConstraints.tight(const Size(30.0, 30.0)),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.black),
            ),
          )
        ],
      );

  Widget diceSix() => Stack(
        children: [
          Positioned(
              child: Container(
            margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            constraints: BoxConstraints.tight(const Size(30.0, 30.0)),
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.black),
          )),
          Positioned(
              right: 1.0,
              child: Container(
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 10.0),
                constraints: BoxConstraints.tight(const Size(30.0, 30.0)),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.black),
              )),
          Positioned(
              bottom: 1.0,
              left: 1.0,
              top: 1.0,
              child: Container(
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 10.0),
                constraints: BoxConstraints.tight(const Size(30.0, 30.0)),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.black),
              )),
          Positioned(
              bottom: 1.0,
              right: 1.0,
              top: 1.0,
              child: Container(
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 10.0),
                constraints: BoxConstraints.tight(const Size(30.0, 30.0)),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.black),
              )),
          Positioned(
              bottom: 1.0,
              child: Container(
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 10.0),
                constraints: BoxConstraints.tight(const Size(30.0, 30.0)),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.black),
              )),
          Positioned(
              bottom: 1.0,
              right: 1.0,
              child: Container(
                margin: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 10.0),
                constraints: BoxConstraints.tight(const Size(30.0, 30.0)),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.black),
              )),
        ],
      );
}
