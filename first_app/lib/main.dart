import 'package:flutter/material.dart';

import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
      const MaterialApp(
      home: Scaffold(
        body:    GradientContainer( [
                Color.fromRGBO(60, 8, 128, 1),
                Color.fromARGB(255, 94, 76, 129) 
                ]),
      ),
    ),
  );
}


