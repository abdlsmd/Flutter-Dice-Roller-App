import 'package:flutter/material.dart';
import 'package:second_app/dice_roll.dart';

const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {

    const  GradientContainer(this.color1, this.color2, {super.key});

    const GradientContainer.blue({super.key}): 
    color1 = Colors.black,
    color2 = Colors.grey;

    final Color color1;
    final Color color2;

  @override
  Widget build(context) {
    return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [color1, color2],
              begin: startAlignment,
              end: endAlignment,
            ),
          ),
          child: Center(
            child: DiceRoll(),
          ),
        );
  }
}

