import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Image.asset('assets/dp.jpg', height: 150, width: 150),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
          ),
        ),
      ],
    );
  }
}
