import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage();

  @override
  InputPageState createState() => InputPageState();
}

class InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR')),
      body: DefaultTextStyle(
        style: Theme.of(context).textTheme.bodyLarge!,
        child: Center(child: Text('Body Text')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('pressed');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
