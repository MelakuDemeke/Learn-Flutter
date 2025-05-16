import 'package:flutter/material.dart';
import '../components/reusable_card.dart';
import '../constants.dart';
import '../components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    final bmi = args['bmi'];
    final result = args['result'];
    final interpretaion = args['interpretation'];

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
                  Center(
                    child: Text(
                      result.toString(),
                      style: kResultTitleTextStyle,
                    ),
                  ),
                  Center(child: Text(bmi.toString(), style: kBMITExtStyle)),
                  Center(
                    child: Text(
                      interpretaion.toString(),
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    ),
                  ),
                ],
              ),
              onPress: () {},
            ),
          ),
          BottomButton(
            buttonText: 'RE-CALCULATE',
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
