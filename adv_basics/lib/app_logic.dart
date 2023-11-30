import 'package:flutter/material.dart';

class AppLogic extends StatelessWidget{
  const AppLogic({super.key});

  moveForward(){
    //....
  }

  @override
  Widget build(context){
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/quiz-logo.png'),
        const SizedBox(height: 20,),
        const Text(
          'Learn Flutter the fun way!',
          style: TextStyle(
            fontSize: 35,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 20,),
        TextButton(
          onPressed: moveForward, 
          style: TextButton.styleFrom(
            foregroundColor:Colors.white,
            textStyle:const TextStyle(
              fontSize: 25,
            )

            
          ),
          child: const Text('Start Quiz'))

      ],
    );
    
  }


}

