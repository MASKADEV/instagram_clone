import 'package:facebook_clone/widget/appbar.dart';
import 'package:facebook_clone/widget/feed.dart';
import 'package:facebook_clone/widget/story.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double sizeHeight = MediaQuery.of(context).size.height;
    double sizeWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          height: sizeHeight * 0.85,
          width: sizeWidth,
          child: SingleChildScrollView(
            child: Column(
              children: [
                CostumAppBar(),
                Stories(),
                Feed(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
