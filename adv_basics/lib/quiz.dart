import 'package:adv_basics/questions_screen.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/start_screen.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});

  @override
  State<Quiz> createState(){
    return _QuizState();
  }

}

class _QuizState extends State<Quiz>{

  var activeScreen = 'start-screen';


  // using initstate


  // void initState() {
  //   super.initState();
  //   activeScreen = StartScreen(switchScreen); 
    
  // }

  void switchScreen(){
    setState(() {
      activeScreen = 'question-screen';
    });
  }
  static const startAlignment = Alignment.topLeft;
  static const endAlignment = Alignment.bottomRight;

  @override
  Widget build(context){


    //using tarnary operator


    //final screenWidget = activeScreen == 'start-screen' ? StartScreen(switchScreen) : const QuestionScreen();


    //using if statement


    Widget screenWidget = StartScreen(switchScreen);
    if(activeScreen == 'question-screen'){
      screenWidget = const QuestionScreen();
    }
    
    return   MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.deepPurple, Color.fromARGB(255, 102, 85, 196)],
              begin: startAlignment,
              end: endAlignment
              ),
            ),
          child:  Center(

            //using tarnary expression


            child: screenWidget,
            ),
      )
    )
  );
  }

}