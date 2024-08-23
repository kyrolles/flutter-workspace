// ignore_for_file: prefer_const_constructors, must_be_immutable
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  void userTapped() {
    print("User really Tapped!");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: GestureDetector(
            onTap: userTapped,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.blueAccent,
              child: Center(child: Text("Tap Me!")),
            ),
          ),
        ),
      ),
    );
  }
}
