import 'package:flutter/material.dart';
import '../constants.dart';
class BottomButton extends StatelessWidget {
  final String label;
  final Function onTap;

  BottomButton({@required this.label, @required this.onTap});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        child: Text(label, style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25.0,
        ),
        ),
        color: kBottomContainerColor,
        height: kBottomHeight,
        width: double.infinity,
      ),
    );
  }
}