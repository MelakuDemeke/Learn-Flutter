import 'package:flutter/material.dart';
import 'Screens/input_page.dart';
import 'Screens/results_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        '/result': (context) => ResultsPage(),
      },
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
