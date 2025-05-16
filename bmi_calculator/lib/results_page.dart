import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'constants.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR')),
      body: Expanded(
        child: ReusableCard(
          colour: kActiveCardColour,
          cardChild: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Center(
                child: Text('NORMAL', style: TextStyle(color: Colors.green)),
              ),
              Center(
                child: Text(
                  '19.25',
                  style: TextStyle(
                    fontSize: 100.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Center(
                
                child: Text(
                  'You have a normal body Good Job',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ],
          ),
          onPress: () {},
        ),
      ),
    );
  }
}
