import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

final botttomContanerHeight = 80.0;
const Color activeCardColour = Color(0xFF1D1E33);
const Color inactiveCardColor = Color(0xFF111328);
const Color buttonColor = Color(0xFFEB1555);

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  InputPageState createState() => InputPageState();
}

class InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.male;

  // Color maleCardColour = inactiveCardColor;
  // Color femaleCardColur = inactiveCardColor;
  // void updateColour(Gender gender) {
  //   if (gender == Gender.male) {
  //     maleCardColour =
  //         maleCardColour == inactiveCardColor
  //             ? activeCardColour
  //             : inactiveCardColor;
  //     femaleCardColur = inactiveCardColor;
  //   } else if (gender == Gender.female) {
  //     femaleCardColur =
  //         femaleCardColur == inactiveCardColor
  //             ? activeCardColour
  //             : inactiveCardColor;
  //     maleCardColour = inactiveCardColor;
  //   }
  // }

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
                        selectedGender = Gender.male;
                      });
                    },
                    child: ReusableCard(
                      colour:
                          selectedGender == Gender.male
                              ? activeCardColour
                              : inactiveCardColor,
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
                        selectedGender = Gender.female;
                      });
                    },
                    child: ReusableCard(
                      colour:
                          selectedGender == Gender.female
                              ? activeCardColour
                              : inactiveCardColor,
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
