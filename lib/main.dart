import 'package:flutter/material.dart';
import 'package:my_app_barakov/gradient.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Gradientt(
          Colors.white, 
          Colors.deepPurple,
        ),
      ),
    ),
  );
}