import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payplan/Screens/Screen1Home/Screen1_Home.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController _pageController;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: selectedIndex);
  }

  void onButtonPressed(int index) {
    setState(() {
      selectedIndex = index;
    });
    _pageController.animateToPage(selectedIndex,
        duration: const Duration(milliseconds: 400), curve: Curves.easeOutQuad);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: _listOfWidget,
      ),
      bottomNavigationBar: SlidingClippedNavBar(
        backgroundColor: Colors.white,
        onButtonPressed: onButtonPressed,
        iconSize: 30,
        activeColor: const Color(0xFF01579B),
        selectedIndex: selectedIndex,
        barItems: <BarItem>[
          BarItem(
            icon: FontAwesomeIcons.chartSimple,
            title: 'Home',
          ),
          BarItem(
            icon: FontAwesomeIcons.sackDollar,
            title: 'Logs',
          ),
          BarItem(
            icon: FontAwesomeIcons.user,
            title: 'Profile',
          ),
        ],
      ),
    );
  }
}

List<Widget> _listOfWidget = <Widget>[
  Screen1Home(),
  Container(
      alignment: Alignment.center, child: const Text("Logs implementation")),
  Container(
      alignment: Alignment.center, child: const Text("Profile implementation")),
];
