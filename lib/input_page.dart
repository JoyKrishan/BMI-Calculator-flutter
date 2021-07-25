import 'package:flutter/material.dart';
import 'reuseable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';

const double bottomHeight = 80.0;
const containerColor = Color(0xFF111428);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(
                    colour: containerColor,
                    cardChild: IconContent(icon: FontAwesomeIcons.mars, label: 'MALE',),
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    colour: containerColor,
                    cardChild: IconContent(icon: FontAwesomeIcons.venus, label: 'FEMALE',),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReuseableCard(
              colour: containerColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(
                    colour: Color(0xFF111428),
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    colour: Color(0xFF111428),
                  ),
                )
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            height: bottomHeight,
            width: double.infinity,
          )
        ],
      ),
    );
  }
}



/*floatingActionButton: Theme(
      data: ThemeData(
        accentColor: Colors.white38,
      ),
      child:FloatingActionButton(
        child: Icon(Icons.add),
      ),
      ),*/
