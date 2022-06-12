import 'package:flutter/material.dart';
import 'package:projectsid/account/account.dart';
import 'package:projectsid/Pages/home.dart';
import 'package:projectsid/Pages/notification.dart';
import 'package:projectsid/Pages/search.dart';


class BottomPage extends StatefulWidget {
  @override
  _BottomPageState createState() => _BottomPageState();
}

class _BottomPageState extends State<BottomPage> {
  int selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Search',
      style: optionStyle,
    ),
    Text(
      'Index 2: Messages',
      style: optionStyle,
    ),
    Text(
      'Index 3: Profile',
      style: optionStyle,
    )
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    int Data = 0;
    Widget child = Container();
    if (selectedIndex == 0) {
      child = const homePage();
    } else if (selectedIndex == 1) {
      child = GridSearchScreen();
    } else if (selectedIndex == 2) {
      child = notifPage();
    } else if (selectedIndex == 3) {
      child = const accountPage();
    }

    return Scaffold(
        body: SizedBox.expand(
          child: SizedBox.expand(
            child: child,
          ),
        ),
        bottomNavigationBar: bottomTab());
  }

  Widget bottomTab() {
    return BottomNavigationBar(

      type: BottomNavigationBarType.fixed,
      backgroundColor: const Color(0xFFBC8CF2),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.search), label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Notifications'),
        BottomNavigationBarItem(icon: Icon(Icons.account_box_rounded), label: 'Profile'),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.black,
      iconSize: 25,
      selectedFontSize: 17,
      unselectedFontSize: 14,
      showUnselectedLabels: false,
      onTap: onItemTapped,
    );
  }
}