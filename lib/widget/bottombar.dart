import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  final Function(int) function;
  final int selectedtab;
  CustomBottomBar({this.function, this.selectedtab});
  @override
  _CustomBottomBarState createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  bool _selectedhome = true;

  bool _selectedsearch = false;

  bool _selectedlove = false;

  bool _selectedprofile = false;

  bool _selectedadd = false;

  @override
  Widget build(BuildContext context) {
    double sizeHeight = MediaQuery.of(context).size.height;
    double sizeWidth = MediaQuery.of(context).size.width;
    int selected = widget.selectedtab ?? 0;
    return Container(
      height: sizeHeight * 0.1,
      width: sizeWidth,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(25),
            topLeft: Radius.circular(25),
          ),
          color: Color(0xFF663A82)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  widget.function(0);
                  selected = 0;
                  _selectedhome = true;
                  _selectedsearch = false;
                  _selectedlove = false;
                  _selectedprofile = false;
                  _selectedadd = false;
                });
              },
              child: Image(
                image: AssetImage("assets/icons/home.png"),
                height: sizeHeight * 0.032,
                color: _selectedhome ? Colors.white : Colors.black,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  widget.function(1);
                  selected = 1;

                  _selectedhome = false;
                  _selectedsearch = true;
                  _selectedlove = false;
                  _selectedprofile = false;
                  _selectedadd = false;
                });
              },
              child: Image(
                image: AssetImage("assets/icons/search.png"),
                height: sizeHeight * 0.032,
                color: _selectedsearch ? Colors.white : Colors.black,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  widget.function(2);
                  selected = 2;

                  _selectedhome = false;
                  _selectedsearch = false;
                  _selectedlove = false;
                  _selectedprofile = false;
                  _selectedadd = true;
                });
              },
              child: Image(
                image: AssetImage("assets/icons/add.png"),
                height: sizeHeight * 0.05,
                color: _selectedadd ? Colors.white : Colors.black,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  widget.function(3);
                  selected = 3;

                  _selectedhome = false;
                  _selectedsearch = false;
                  _selectedlove = true;
                  _selectedprofile = false;
                  _selectedadd = false;
                });
              },
              child: Image(
                image: AssetImage("assets/icons/love.png"),
                height: sizeHeight * 0.032,
                color: _selectedlove ? Colors.white : Colors.black,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  widget.function(4);
                  selected = 4;

                  _selectedhome = false;
                  _selectedsearch = false;
                  _selectedlove = false;
                  _selectedprofile = true;
                  _selectedadd = false;
                });
              },
              child: Image(
                image: AssetImage("assets/icons/profile.png"),
                height: sizeHeight * 0.032,
                color: _selectedprofile ? Colors.white : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
