import 'package:flutter/material.dart';

class Screen0 extends StatelessWidget {
  const Screen0({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Screen 0'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.red
              ),
              child: Text('Go To Screen 1'),
              onPressed: () {
                //Navigate to Screen 1
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue
              ),
              child: Text('Go To Screen 2'),
              onPressed: () {
                //Navigate to Screen 2
              },
            ),
          ],
        ),
      ),
    );
  }
}