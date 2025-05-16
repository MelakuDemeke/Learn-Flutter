import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'constants.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Center(child: Text('Your Result', style: kTitleTextStyle)),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(child: Text('NORMAL', style: kResultTitleTextStyle)),
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
          Container(
            color: kButtonColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: 80,
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/result');
              },
              child: Text('Re-Calculate', style: kLargeButtonTextStyle),
            ),
          ),
        ],
      ),
    );
  }
}
