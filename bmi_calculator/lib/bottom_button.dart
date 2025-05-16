import 'package:flutter/material.dart';
import 'constants.dart';

final botttomContanerHeight = 80.0;

class BottomButton extends StatelessWidget {
  const BottomButton({
    super.key, 
    required this.buttonText,
    required this.onPressed,
  });

  final String buttonText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kButtonColor,
      margin: EdgeInsets.only(top: 10.0),
      width: double.infinity,
      height: botttomContanerHeight,
      child: TextButton(
        onPressed: onPressed,
        child: Text(buttonText, style: kLargeButtonTextStyle),
      ),
    );
  }
}