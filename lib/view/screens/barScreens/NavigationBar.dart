import 'package:flutter/material.dart';
import 'package:my_app/view/screens/barScreens/HomeScreen/HomeScreen.dart';
import 'package:my_app/view/screens/barScreens/appliedScreen/AppliedScreen.dart';
import 'package:my_app/view/screens/barScreens/messageScreen/MessageScreen.dart';
import 'package:my_app/view/screens/barScreens/profileScreen/ProfileScreen.dart';
import 'package:my_app/view/screens/barScreens/savedScreen/SavedScreen.dart';

import '../../../utilities/theme/AppColor.dart';

class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({Key? key}) : super(key: key);

  @override
  _NavigationBarScreenState createState() => _NavigationBarScreenState();
}

class _NavigationBarScreenState extends State<NavigationBarScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    MessageScreen(),
    AppliedScreen(),
    SavedScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColor.white,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work_outline_rounded),
            label: 'Applied',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_outline_rounded),
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_rounded),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColor.primaryColor,
        onTap: _onItemTapped,
        elevation: 0,
        backgroundColor: AppColor.white,
        unselectedItemColor: AppColor.secFont,
        showUnselectedLabels: true,
        
      ),
    );
  }
}
