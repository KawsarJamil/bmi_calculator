// ignore_for_file: use_key_in_widget_constructors

import 'package:bmi_calculator/calculation.dart';
import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/custom_widget.dart';
import 'package:bmi_calculator/result_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

enum gender {
  male,
  female,
}

class _InputPageState extends State<InputPage> {
  // void updatecolor(gender selectGender) {
  //   setState(() {
  //     if (selectGender == gender.male) {
  //       malecardcolor = activecolor;
  //       femalecardcolor = inactivecolor;
  //     } else {
  //       malecardcolor = inactivecolor;
  //       femalecardcolor = activecolor;
  //     }
  //   });
  // }
  gender? selectedGender;
  int height = 180;
  int weight = 72;
  int age = 19;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 9,
        centerTitle: true,
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: reusableCard(
                    onPress: () {
                      setState(() {
                        //updatecolor(gender.male);
                        selectedGender = gender.male;
                      });
                    },
                    childcard: iconcardinfo(
                      icn: FontAwesomeIcons.mars,
                      label: "Male",
                    ),
                    clr:
                        //malecardcolor
                        selectedGender == gender.male
                            ? activecolor
                            : inactivecolor,
                  ),
                ),
                Expanded(
                  child: reusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = gender.female;
                      });
                    },
                    childcard: iconcardinfo(
                      icn: FontAwesomeIcons.venus,
                      label: "Female",
                    ),
                    clr:
                        //femalecardcolor

                        selectedGender == gender.female
                            ? activecolor
                            : inactivecolor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: reusableCard(
              childcard: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Height",
                    style: TextStyle(
                      fontSize: 24.sp,
                      color: Color(0xff8D8E98),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        "$height",
                        style: TextStyle(
                          fontSize: 45.sp,
                          fontWeight: FontWeight.w900,
                          color: Color(0xffffffff),
                        ),
                      ),
                      Text(
                        "cm",
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: Color(0xff8D8E98),
                        ),
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 15.r,
                      ),
                      thumbColor: Colors.pink,
                      overlayShape: RoundSliderOverlayShape(
                        overlayRadius: 25.r,
                      ),
                      overlayColor: Colors.pink.withOpacity(0.2),
                    ),
                    child: Slider(
                        value: height.toDouble(),
                        min: 120,
                        max: 220,
                        // activeColor: Colors.white,
                        inactiveColor: Colors.grey,
                        onChanged: (double val) {
                          setState(() {
                            height = val.round();
                          });
                        }),
                  ),
                ],
              ),
              clr: inactivecolor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: reusableCard(
                    childcard: Column(
                      children: [
                        Text(
                          "Weight",
                          style: TextStyle(
                            fontSize: 25.sp,
                            //fontWeight: FontWeight.w900,
                            color: Color(0xffffffff).withOpacity(0.5),
                          ),
                        ),
                        Text(
                          "$weight",
                          style: TextStyle(
                            fontSize: 40.sp,
                            fontWeight: FontWeight.w900,
                            color: Color(0xffffffff),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            // FloatingActionButton(
                            //   onPressed: () {},
                            //   child: Icon(
                            //     FontAwesomeIcons.plus,
                            //     color: Colors.white,
                            //   ),
                            //   backgroundColor: Color(0xff4C4F5E),
                            // ),
                            roundbutton(
                              icon: FontAwesomeIcons.minus,
                              onpress: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            roundbutton(
                              onpress: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              icon: FontAwesomeIcons.plus,
                            ),
                          ],
                        ),
                      ],
                    ),
                    clr: inactivecolor,
                  ),
                ),
                Expanded(
                  child: reusableCard(
                    childcard: Column(
                      children: [
                        Text(
                          "Age",
                          style: TextStyle(
                            fontSize: 25.sp,
                            //fontWeight: FontWeight.w900,
                            color: Color(0xffffffff).withOpacity(0.5),
                          ),
                        ),
                        Text(
                          "$age",
                          style: TextStyle(
                            fontSize: 40.sp,
                            fontWeight: FontWeight.w900,
                            color: Color(0xffffffff),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            // FloatingActionButton(
                            //   onPressed: () {},
                            //   child: Icon(
                            //     FontAwesomeIcons.plus,
                            //     color: Colors.white,
                            //   ),
                            //   backgroundColor: Color(0xff4C4F5E),
                            // ),
                            roundbutton(
                              icon: FontAwesomeIcons.minus,
                              onpress: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            roundbutton(
                              onpress: () {
                                setState(() {
                                  age++;
                                });
                              },
                              icon: FontAwesomeIcons.plus,
                            ),
                          ],
                        ),
                      ],
                    ),
                    clr: inactivecolor,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              CalculatorBrain calc =
                  CalculatorBrain(height: height, weight: weight);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => result(
                    bmi: calc.calculateBMI(),
                    bmiresult: calc.getResult(),
                    interpretetion: calc.getInterpretation(),
                  ),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(bottom: 18.0, left: 10, right: 10),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(20)),
                height: 70.h,
                width: double.infinity,
                child: Center(
                  child: Text(
                    "CALCULATE YOUR BMI",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        letterSpacing: 0.2,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class roundbutton extends StatelessWidget {
  roundbutton({this.icon, this.onpress});
  IconData? icon;
  Function()? onpress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onpress,
      child: Icon(icon),
      elevation: 6,
      fillColor: Color(0xff4C4F5E),
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        width: 56.0.w,
        height: 56.0.h,
      ),
    );
  }
}
