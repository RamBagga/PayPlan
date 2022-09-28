import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payplan/Screens/HomePage.dart';

class GoogleSignUpScreen extends StatelessWidget {
  const GoogleSignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 60.0, horizontal: 30),
            child: Hero(
                tag: 1,
                child: Image.asset(
                  'assets/3573458.jpg',
                )),
          ),
          Text(
            'Sign up ! ',
            style: GoogleFonts.roboto(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Color(0xff505280)),
          ),
          SizedBox(height: 50),
          InkWell(
            child: Container(
              height: 50,
              width: 220,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: const Color(0xff3F7FE9),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black45, blurRadius: 8, spreadRadius: 1),
                  ]),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.asset(
                      'assets/vecteezy_colourful-google-logo-on-white-background_10353285.jpg',
                    ),
                  ),
                  Positioned(
                    left: 53,
                    top: 15,
                    child: Text(
                      'Sign up with Google',
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              );
              //todo : Firebase Gmail SignUp
            },
          )
        ],
      ),
    );
  }
}
