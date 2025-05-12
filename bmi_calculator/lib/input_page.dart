import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

final botttomContanerHeight = 80.0;
const Color activeCardColour = Color(0xFF1D1E33);
const Color inactiveCardColor = Color(0xFF111328);
const Color buttonColor = Color(0xFFEB1555);

enum Gender { Male, Female }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  InputPageState createState() => InputPageState();
}

class InputPageState extends State<InputPage> {
  Color maleCardColour = inactiveCardColor;
  Color femaleCardColur = inactiveCardColor;

  // 1 = male , 2 = female
  void updateColour(Gender gender) {
    if (gender == Gender.Male) {
      if (maleCardColour == inactiveCardColor) {
        maleCardColour = activeCardColour;
        femaleCardColur = inactiveCardColor;
      } else {
        maleCardColour = inactiveCardColor;
      }
    } else if (gender == Gender.Female) {
      if (femaleCardColur == inactiveCardColor) {
        femaleCardColur = activeCardColour;
        maleCardColour = inactiveCardColor;
      } else {
        femaleCardColur = inactiveCardColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR')),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColour(Gender.Male);
                      });
                    },
                    child: ReusableCard(
                      colour: maleCardColour,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: "MALE",
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColour(Gender.Female);
                      });
                    },
                    child: ReusableCard(
                      colour: femaleCardColur,
                      cardChild: IconContent(
                        label: "FEMALE",
                        icon: FontAwesomeIcons.venus,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: activeCardColour,
              cardChild: Container(),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColour,
                    cardChild: Container(),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColour,
                    cardChild: Container(),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: buttonColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: botttomContanerHeight,
          ),
        ],
      ),
    );
  }
}
