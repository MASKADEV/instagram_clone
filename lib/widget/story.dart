import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  List<String> profiles = [
    'profile1',
    'profile2',
    'profile3',
    'profile4',
    'profile5',
    'profile6',
    'profile7',
    'profile8',
  ];
  @override
  Widget build(BuildContext context) {
    double sizeHeight = MediaQuery.of(context).size.height;
    double sizeWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        height: sizeHeight * 0.12,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: sizeHeight * 0.06,
                width: sizeHeight * 0.06,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                        width: 1.2,
                        color: Colors.black,
                        style: BorderStyle.solid)),
                child: Center(
                    child: Icon(
                  Icons.add,
                  size: 23,
                )),
              ),
              Container(
                height: sizeHeight * 0.085,
                width: sizeWidth * 0.8,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: profiles.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Container(
                          height: sizeHeight * 0.085,
                          width: sizeHeight * 0.085,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              border: Border.all(
                                  width: 1.5, color: Color(0xFF814CBC))),
                          child: Center(
                              child: ClipRRect(
                            borderRadius: BorderRadius.circular(18),
                            child: Container(
                              height: sizeHeight * 0.078,
                              width: sizeHeight * 0.078,
                              child: Image(
                                image: AssetImage(
                                    "assets/profiles/${profiles[index]}.jpg"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          )),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
