import 'package:facebook_clone/screens/tabs/home_tab.dart';
import 'package:facebook_clone/screens/tabs/profile_tab.dart';
import 'package:facebook_clone/widget/appbar.dart';
import 'package:facebook_clone/widget/bottombar.dart';
import 'package:facebook_clone/widget/feed.dart';
import 'package:facebook_clone/widget/story.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _tabPageController = PageController();
  int _selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    double sizeHeight = MediaQuery.of(context).size.height;
    double sizeWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        PageView(
          onPageChanged: (num) {
            setState(() {
              _selectedTab = 3;
            });
          },
          controller: _tabPageController,
          physics: NeverScrollableScrollPhysics(),
          children: [
            HomeTab(),
            HomeTab(),
            HomeTab(),
            HomeTab(),
            Profile(),
          ],
        ),
        Positioned(
            height: sizeHeight,
            top: sizeHeight * 0.45,
            child: Center(
                child: CustomBottomBar(
              function: (num) {
                _tabPageController.animateToPage(num,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInCubic);
              },
              selectedtab: _selectedTab,
            ))),
      ],
    );
  }
}
