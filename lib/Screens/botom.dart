import 'package:bottomnav/Screens/firstscreen.dart';
import 'package:bottomnav/Screens/secondscreen.dart';
import 'package:bottomnav/Screens/thirdscreen.dart';
import 'package:flutter/material.dart';

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({Key? key}) : super(key: key);

  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    FirstScreen(),
    SecondScreen(),
    ThirdScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'First Screen',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Second Screen',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Third Screen',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
