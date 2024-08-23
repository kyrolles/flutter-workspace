import 'package:flutter/material.dart';

class FirstBotton extends StatelessWidget {
  const FirstBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("1st Page"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Go To Second Page"),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueAccent,
            foregroundColor: Colors.black,
          ),
          onPressed: () {
            //navigate to second page
            Navigator.pushNamed(context, '/secondpage');
          },
        ),
      ),
    );
  }
}
