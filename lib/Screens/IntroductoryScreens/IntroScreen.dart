import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payplan/Screens/IntroductoryScreens/SignUpScreen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Hero(tag: 1, child: Image.asset('assets/3573458.jpg')),
          Text(
            '\t\t\tKeep your\nmoney wisely',
            style: GoogleFonts.roboto(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Color(0xff505280)),
          ),
          SizedBox(height: 40),
          InkWell(
            splashColor: Colors.pink,
            child: Container(
              height: 70,
              width: 70,
              decoration: const BoxDecoration(
                color: Color(0xffC7F4A5),
                borderRadius: BorderRadius.all(
                  Radius.elliptical(45, 20),
                ),
              ),
              child: Icon(Icons.arrow_forward),
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => GoogleSignUpScreen(),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
