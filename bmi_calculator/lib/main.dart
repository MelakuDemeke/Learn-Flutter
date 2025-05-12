import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _InputPage(),
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        textTheme: TextTheme(bodyLarge: TextStyle(color: Colors.white)),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0A0E21),
          foregroundColor: Colors.white, // optional: sets text/icon color
        ),
      ),
    );
  }
}

class _InputPage extends StatefulWidget {
  const _InputPage();

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<_InputPage> {
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
