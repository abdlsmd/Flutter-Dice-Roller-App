import 'package:flutter/material.dart';
import 'dart:math';

final randomizor = Random();

class DiceRoll extends StatefulWidget {
  
  const DiceRoll({super.key});

  @override
  State<DiceRoll> createState() {
    return _DiceRollerState();
  }

}

  class _DiceRollerState extends State<DiceRoll> {

    var currentDiceRoll = 1;
    
    void rollDice() {
      setState( () {
        currentDiceRoll = randomizor.nextInt(6) + 1;
      });
    }

    @override
    Widget build(context) {
      return Column(
        mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$currentDiceRoll.png',
        width: 200,),

        const SizedBox(height: 20,),

        TextButton(onPressed: rollDice,
        style: TextButton.styleFrom(
          foregroundColor: Colors.white,
          textStyle: const TextStyle(fontSize: 20),
        ),
         child: const Text('ROLL DICE'))

      ],
      );
      
    }

  }
