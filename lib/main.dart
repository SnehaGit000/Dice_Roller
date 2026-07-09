import 'package:flutter/material.dart';
import 'package:firstapp/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 80, 2, 50),
          Color.fromARGB(255, 45, 7, 98),
        ),
      ),
    ),
  );
}
