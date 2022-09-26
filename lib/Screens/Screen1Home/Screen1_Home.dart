import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payplan/Screens/Screen1Home/Compo/InfoCardTextComponent.dart';
import 'package:payplan/Screens/Screen1Home/Compo/graphClass.dart';
import 'package:payplan/Screens/Screen1Home/Compo/guageClass.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart' as guage;
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../../Constants/Constants.dart';
import '../HomePage.dart';
import 'Compo/TimeLineSwitcher.dart';

class Screen1Home extends StatelessWidget {
  const Screen1Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(right: 240),
          child: Text(
            'History',
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.bold,
              fontSize: 32,
              color: Color(0xff505280),
            ),
          ),
        ),
        Row(
          children: [
            Spacer(),
            TimeLineSwitcher(time: 'W'),
            Spacer(),
            TimeLineSwitcher(time: 'M'),
            Spacer(),
          ],
        ),
        GraphClass(),
        Container(
          height: 150,
          width: 340,
          decoration: BoxDecoration(
            color: Color(0xff4D5083),
            borderRadius: BorderRadius.circular(24),
          ),
          child: Stack(
            children: [
              Positioned(
                height: 120,
                right: 85,
                top: 15,
                child: RotationTransition(
                  turns: AlwaysStoppedAnimation(90 / 360),
                  child: GuageClass(),
                ),
              ),
              Positioned(
                top: 20,
                right: 30,
                child: Center(
                  child: InfoCardTextComponent(
                    title: 'Income',
                    widget: Icon(
                      Icons.arrow_downward_rounded,
                      color: Color(0xffC7F4A5),
                      size: 20,
                    ),
                    amount: 1245,
                    iconContainerColor: Color(0xffC7F4A5).withOpacity(0.2),
                  ),
                ),
              ),
              Positioned(
                top: 80,
                right: 30,
                child: Center(
                  child: InfoCardTextComponent(
                    title: 'Expense',
                    widget: RotationTransition(
                      turns: AlwaysStoppedAnimation(30 / 360),
                      child: Icon(
                        Icons.arrow_upward_rounded,
                        color: Color(0xffFBB1C3),
                        size: 20,
                      ),
                    ),
                    amount: 753,
                    iconContainerColor: Color(0xffFBB1C3).withOpacity(0.2),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
