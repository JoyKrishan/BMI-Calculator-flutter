import 'package:flutter/material.dart';
import 'reuseable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';

const double bottomHeight = 80.0;
const activeCardColor = Color(0xFF1D1F33);
const inactiveCardColor = Color(0xFF111428);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  void updateCardColor(int gender){
    if (gender == 1){
      // Male was pressed
      if (maleCardColor == inactiveCardColor){
        maleCardColor = activeCardColor;
        femaleCardColor = inactiveCardColor;
      }else{
        maleCardColor = inactiveCardColor;
      }
    }else{
      if (femaleCardColor == inactiveCardColor){
        femaleCardColor = activeCardColor;
        maleCardColor = inactiveCardColor;
      }else{
        femaleCardColor = inactiveCardColor;
      }
    }
    }
  

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
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        updateCardColor(1);
                      });
                    },
                    child: ReuseableCard(
                      colour: maleCardColor,
                      cardChild: IconContent(icon: FontAwesomeIcons.mars, label: 'MALE',),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        updateCardColor(2);
                      });
                    },
                    child: ReuseableCard(
                      colour: femaleCardColor,
                      cardChild: IconContent(icon: FontAwesomeIcons.venus, label: 'FEMALE',),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReuseableCard(
              colour: inactiveCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(
                    colour: inactiveCardColor,
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    colour: inactiveCardColor,
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
