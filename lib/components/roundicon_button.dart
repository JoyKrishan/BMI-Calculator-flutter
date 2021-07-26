import 'package:flutter/material.dart';
class RoundIconButton extends StatelessWidget {
  //const RoundIconButton({Key? key}) : super(key: key);
  final Widget icon;
  final Function onPressed;
  RoundIconButton({@required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints(minWidth: 56.0, minHeight: 56.0),
      fillColor: Colors.white38,
      elevation: 6.0,
      shape: CircleBorder(),
      onPressed: onPressed,
      child: icon,
    );
  }
}