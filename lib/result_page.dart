import 'package:bmi_calculator/custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constant.dart';
import 'inputpage.dart';

class result extends StatelessWidget {
  result(
      {@required this.bmi,
      @required this.bmiresult,
      @required this.interpretetion});

  String? bmi;
  String? bmiresult;
  String? interpretetion;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Center(
              child: Text(
                "YOUR RESULT",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: reusableCard(
              clr: inactivecolor,
              childcard: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "$bmiresult",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    "$bmi",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                    ),
                  ),
                  Text(
                    "$interpretetion",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: reusableCard(
              clr: Colors.pink,
              childcard: Center(
                child: Text(
                  "RE-CALCULATE",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => InputPage(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
