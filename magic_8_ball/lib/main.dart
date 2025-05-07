import 'package:flutter/material.dart';
import "dart:math";

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        title: Text('Ask me Now', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: MyApp(),
    ),
  ),
);

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int ballNum = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            ballNum = Random().nextInt(4) + 1;
          });
        },
        child: Image.asset('images/ball$ballNum.png'),
      ),
    );
  }
}
