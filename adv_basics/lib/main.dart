import 'package:adv_basics/gradient_container.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
           [Color.fromARGB(212, 50, 2, 82), Color.fromRGBO(57, 45, 170, 0.835)]
          )
    )
  )
  );
}