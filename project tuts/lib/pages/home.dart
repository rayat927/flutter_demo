import 'package:flutter/material.dart';
import 'package:project_tuts/pages/Following.dart';
import 'package:project_tuts/pages/Test.dart';


class TabNavigator extends StatefulWidget {
  const TabNavigator({super.key});

  @override
  State<TabNavigator> createState() => _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator> {

  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[

    Test(),
    Following(),
    Icon(
      Icons.camera,
      size: 150,
    ),
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
        child: _pages.elementAt(_selectedIndex), //New
      ),


      // bottomNavigationBar: BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.square),
      //       label: 'For you',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.map),
      //       label: 'Headlines',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.star),
      //       label: 'Following',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.bar_chart),
      //       label: 'Newsfeed',
      //     ),
      //   ],
      //
      //   type: BottomNavigationBarType.fixed,
      //
      //   currentIndex: _selectedIndex, //New
      //   onTap: _onItemTapped,
      // ),
    );
  }
}
