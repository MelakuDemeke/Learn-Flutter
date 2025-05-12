import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  InputPageState createState() => InputPageState();
}

class InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR')),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReusableCard(colour: Color(0xFF1D1E33))),
                Expanded(child: ReusableCard(colour: Color(0xFF1D1E33))),
              ],
            ),
          ),
          Expanded(child: ReusableCard(colour: Color(0xFF1D1E33))),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReusableCard(colour: Color(0xFF1D1E33))),
                Expanded(child: ReusableCard(colour: Color(0xFF1D1E33))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  Color colour;

  ReusableCard({required this.colour});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
