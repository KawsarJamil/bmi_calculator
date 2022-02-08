import 'package:bmi_calculator/inputpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        // colorScheme: ColorScheme.fromSwatch(
        //   primarySwatch: Colors.amber,
        // ),
        //primaryColor: Color(0xff090c22),
        scaffoldBackgroundColor: Color(0xff090c22),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xff090c22),
        ),
      ),
      // ThemeData(
      //   colorScheme: ColorScheme.fromSwatch(
      //     primarySwatch: Colors.amber,
      //   ),
      //   textTheme: TextTheme(
      //     bodyText1: TextStyle(
      //       color: Colors.white,
      //     ),
      //   ),
      //   primaryColor: Color(0xff090c22),
      //   scaffoldBackgroundColor: Color(0xff090c22),
      //   // appBarTheme: AppBarTheme(
      //   //   backgroundColor: Color(0xff090c22),
      //   // ),
      // ),
      home: ScreenUtilInit(
          designSize: const Size(350, 844),
          builder: () {
            return InputPage();
          }),
    );
  }
}
