import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teapme/Utils/colors.dart';

import 'Account.dart';
import 'Supporters.dart';
import 'dashboard.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[
            Dashboard(),
            Supporters(),
            Account(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            activeColor: AppColors.secondaryGreen,
              inactiveColor: Colors.black,
              title: Text('Dashboard'),
              icon: Icon(Icons.dashboard)
          ),
          BottomNavyBarItem(
              title: Text('Teapers'),
              icon: Icon(CupertinoIcons.heart),
            activeColor: AppColors.secondaryGreen,
            inactiveColor: Colors.black,
          ),
          BottomNavyBarItem(
              title: Text('Account'),
              icon: Icon(CupertinoIcons.person_circle),
            activeColor: AppColors.secondaryGreen,
            inactiveColor: Colors.black,
          ),
        ],
      ),
    );
  }
}

