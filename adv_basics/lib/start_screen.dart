import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget{
  const StartScreen(this.moveForward,{super.key});

  final void Function() moveForward;

  @override
  Widget build(context){
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
          
        Image.asset('assets/images/quiz-logo.png',
          height: 300,
          color:const  Color.fromARGB(150, 255, 255, 255),),
        // Opacity(
        //   opacity: 01,
        //   child: Image.asset('assets/images/quiz-logo.png',
        //   height: 300,),
          
        // ),
        const SizedBox(height: 30,),
        Text(
          'Learn Flutter the fun way!',
          style: GoogleFonts.lato(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 20,),
        OutlinedButton.icon(
          onPressed: moveForward, 
          style: OutlinedButton.styleFrom(
            foregroundColor:Colors.white,
            textStyle:const TextStyle(
              fontSize: 25,
            )
          ),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text('Start Quiz'))

      ],
    );
    
  }


}

