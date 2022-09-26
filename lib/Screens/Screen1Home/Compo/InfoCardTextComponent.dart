import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoCardTextComponent extends StatelessWidget {
  InfoCardTextComponent({
    Key? key,
    required this.title,
    required this.widget,
    required this.amount,
    required this.iconContainerColor,
  }) : super(key: key);

  final String title;
  final Widget widget;
  final double amount;
  final Color iconContainerColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 140,
      child: Column(
        children: [
          Text(
            title,
            style: GoogleFonts.roboto(fontSize: 12, color: Colors.white),
          ),
          Spacer(),
          Row(
            children: [
              Container(
                  height: 28,
                  width: 28,
                  decoration: BoxDecoration(
                    color: iconContainerColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: widget),
              SizedBox(width: 20),
              Text(
                amount.toString(),
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 5),
              Text(
                '\u{20B9}',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
