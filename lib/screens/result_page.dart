import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:flutter/material.dart';
import '../components/reuseable_card.dart';
import '../constants.dart';

class ResultPage extends StatelessWidget {
  //const ResultPage({Key? key}) : super(key: key);
  final String bmi;
  final String result;
  final String interpretation;

  ResultPage({this.bmi, this.result, this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 10.0, left: 10.0),
                child: Text(
                  'Your Results',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
                flex: 6,
                child: ReuseableCard( // Container
                  colour: kActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(result, style:TextStyle(
                        color: Colors.green,
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                      )),
                      Text(bmi, style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 100.0,
                      ),),
                      Text(interpretation,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,

                        fontSize: 22.0,
                      ),),
                    ],
                  ),
                )),
            BottomButton(label: 'RE-CALCULATE', onTap: (){
              Navigator.pop(context);
            })
          ],
        ));
  }
}
