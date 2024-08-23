import 'dart:ffi';

import 'package:flutter/material.dart';

class Counterpage extends StatefulWidget {
  const Counterpage({super.key});

  @override
  State<Counterpage> createState() => _CounterpageState();
}

class _CounterpageState extends State<Counterpage> {
  int counter = 0;
  void _incrementdanger() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Do not Push the button!"),
            Text(
              counter.toString(),
              style: TextStyle(fontSize: 40),
            ),
            ElevatedButton(
                onPressed: _incrementdanger,
                child: Text("danger ++!"),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                    foregroundColor: MaterialStateProperty.all(Colors.black))),
          ],
        ),
      ),
    );
  }
}
