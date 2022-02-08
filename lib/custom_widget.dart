import 'package:bmi_calculator/constant.dart';
import 'package:flutter/material.dart';



class iconcardinfo extends StatelessWidget {
  iconcardinfo({required this.icn, required this.label});

  final icn;
  final label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icn,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: stl,
        ),
      ],
    );
  }
}

class reusableCard extends StatelessWidget {
  const reusableCard({required this.clr,  this.childcard,this.onPress});

  final Color clr;
  final Widget? childcard;
  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: childcard,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: clr,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
