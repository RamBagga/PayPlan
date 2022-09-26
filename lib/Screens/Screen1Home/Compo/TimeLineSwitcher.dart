import 'package:flutter/material.dart';

import '../../../Constants/Constants.dart';

class TimeLineSwitcher extends StatelessWidget {
  TimeLineSwitcher({Key? key, required this.time}) : super(key: key);

  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.all(
          Radius.elliptical(45, 20),
        ),
      ),
      child: Center(child: Text(time, style: textStyle)),
    );
  }
}
