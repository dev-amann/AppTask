import 'package:flutter/material.dart';
import 'package:welcome/utils/strings/custom_strings.dart';
import 'package:welcome/views/courses/courses_screen.dart';
import 'package:welcome/views/home/home_screen.dart';
import 'package:welcome/views/profile/profile_screen.dart';

import '../../utils/dimens/dimensions.dart';
import '../assessment/assesment_screen.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    CourseScreen(),
    AssessmentScreen(),
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
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Center(
              child: Icon(
                Icons.home,
                size: Dimens.iconSize*1.3,
              ),
            ),
            label: '',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: const SizedBox(),
            label: Str.courses,
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: const SizedBox(),
            label: Str.assessment,
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: const SizedBox(),
            label: Str.profile,
            backgroundColor: Colors.white,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
      ),
    );
  }
}
