import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mybank_ui/constant/color_constant.dart';
import 'package:mybank_ui/screens/card_details.dart';
import 'package:mybank_ui/screens/hone_screen.dart';

class base_screen extends StatefulWidget {
  const base_screen({Key? key}) : super(key: key);

  @override
  _base_screenState createState() => _base_screenState();
}

class _base_screenState extends State<base_screen> {
  // bottom navigation bar
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    home_screen(),
    card_details(),
    home_screen(),
    card_details(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: KPrimaryColor,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.creditCard), label: "Card"),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.cog), label: "Settings"),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.chartBar), label: "Overview"),
          ],
          currentIndex: _selectedIndex,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          }),
    );
  }
}
