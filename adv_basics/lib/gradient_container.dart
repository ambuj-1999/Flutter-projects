import "package:adv_basics/app_logic.dart";
import "package:flutter/material.dart";

class GradientContainer extends StatelessWidget{
  const GradientContainer(this.colors, {super.key});

  static const startAlignment = Alignment.topLeft;
  static const endAlignment = Alignment.bottomRight;

  final List<Color> colors;

  @override
  Widget build(context){
    return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: colors,
              begin: startAlignment,
              end: endAlignment
              ),
            ),
          child: const Center(
            child: AppLogic(),
            ),
      );
    }
  }