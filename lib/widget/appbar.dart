import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CostumAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double sizeHeight = MediaQuery.of(context).size.height;
    double sizeWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Container(
          height: sizeHeight * 0.1,
          width: sizeWidth,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 130),
                child: Text('MASKAGRAM',
                    style: GoogleFonts.raleway(
                      fontSize: 25,
                      // letterSpacing: 2,
                    )),
              ),
              Image(
                image: AssetImage(
                  "assets/icons/camera.png",
                ),
                width: sizeWidth * 0.05,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: Image(
                  image: AssetImage(
                    "assets/icons/chat.png",
                  ),
                  width: sizeWidth * 0.05,
                  filterQuality: FilterQuality.high,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
