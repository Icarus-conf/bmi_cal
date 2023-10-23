import 'package:bmi_cal/constants.dart';
import 'package:flutter/material.dart';

class IconCardChildContent extends StatelessWidget {
  IconCardChildContent({required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            size: 80.0,
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            label,
            style: kTextStyle,
          )
        ]);
  }
}
