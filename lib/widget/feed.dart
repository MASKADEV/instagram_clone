import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:google_fonts/google_fonts.dart';

class Feed extends StatelessWidget {
  List<String> location = [
    "Paris",
    "Roma",
    "Marrakech",
    "Casablanka",
    "Tokyo",
    "New York",
    "Dubai",
    "Istanbul",
  ];
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
  List<String> names = [
    "Cheyanne Hendrix",
    "Vivienne Maynard",
    "Sinead Wilkins",
    "Graham Emerson",
    "Reef Long",
    "Nigel Barclay",
    "Aysha Schaefer",
    "Sumayyah Farrow"
  ];
  List<String> description = [
    "It is a long established fact that a reader will be distracted by the readable content of a pag",
    "as opposed to using 'Content here, content here', making it look like readable English.",
    "packages and web page editors now use Lorem Ipsum as their default model text, and",
    "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour,",
    "Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature",
    "s simply dummy text of the printing and typesetting industry.",
    "when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    "recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
  ];
  List<String> post = [
    "post1",
    "post2",
    "post3",
    "post4",
    "post5",
    "post6",
    "post7",
    "post8",
  ];
  @override
  Widget build(BuildContext context) {
    double sizeHeight = MediaQuery.of(context).size.height;
    double sizeWidth = MediaQuery.of(context).size.width;
    return Container(
      height: sizeHeight * 0.66,
      child: Center(
          child: Swiper(
        itemWidth: sizeWidth * 0.95,
        layout: SwiperLayout.STACK,
        itemCount: profiles.length,
        itemBuilder: (context, index) {
          return CustomCard(
            description: description[index],
            profile_name: names[index],
            image_profile: "assets/profiles/${profiles[index]}.jpg",
            image_post: "assets/post/${post[index]}.jpg",
            location: location[index],
          );
        },
      )),
    );
  }
}

class CustomCard extends StatelessWidget {
  final String image_post;
  final String image_profile;
  final String profile_name;
  final String description;
  final String location;
  CustomCard(
      {this.image_post,
      this.image_profile,
      this.description,
      this.location,
      this.profile_name});
  @override
  Widget build(BuildContext context) {
    double sizeHeight = MediaQuery.of(context).size.height;
    double sizeWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: sizeHeight * 0.6,
        width: sizeWidth,
        decoration: BoxDecoration(
            // border: Border.all(
            //   width: 1,
            // ),
            borderRadius: BorderRadius.circular(20)),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image(
                image: AssetImage(image_post ?? "assets/post/post2.jpg"),
                fit: BoxFit.fill,
                width: sizeWidth,
                height: sizeHeight * 0.58,
              ),
            ),
            Align(
              alignment: Alignment(-0.95, -0.95),
              child: Container(
                height: sizeHeight * 0.08,
                width: sizeHeight * 0.08,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 1, color: Colors.white)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image(
                    image: AssetImage(
                        image_profile ?? "assets/profiles/profile4.jpg"),
                    fit: BoxFit.fill,
                    height: sizeHeight * 0.08,
                  ),
                ),
              ),
            ),
            Positioned(
              height: sizeHeight * 0.18,
              width: sizeWidth * 0.9,
              left: sizeWidth * 0.22,
              bottom: sizeWidth * 0.82,
              child: Text(profile_name ?? 'Cabeza Patat Studio',
                  style: GoogleFonts.robotoCondensed(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
            ),
            Positioned(
              height: sizeHeight * 0.18,
              width: sizeWidth * 0.9,
              left: sizeWidth * 0.24,
              bottom: sizeWidth * 0.87,
              child: Container(
                child: Row(
                  children: [
                    Image(
                      image: AssetImage("assets/icons/location.png"),
                      height: sizeHeight * 0.025,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: sizeWidth * 0.02,
                    ),
                    Text(location ?? 'Paris',
                        style: GoogleFonts.raleway(
                            fontSize: 20, color: Colors.white)),
                  ],
                ),
              ),
            ),
            Align(
                alignment: Alignment(0, 0.45),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Text(
                      description ??
                          "s simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
                      style: GoogleFonts.raleway(
                          fontSize: 15, color: Colors.white)),
                )),
            Align(
                alignment: Alignment(0, 0.823),
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: sizeHeight * 0.08,
                      width: sizeWidth,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white.withOpacity(0.8)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                child: Row(children: [
                              Image(
                                image: AssetImage("assets/icons/love.png"),
                                height: sizeHeight * 0.036,
                                filterQuality: FilterQuality.high,
                              ),
                              SizedBox(width: sizeWidth * 0.02),
                              Text("7.2K",
                                  style: GoogleFonts.raleway(
                                      fontSize: 20, color: Colors.black))
                            ])),
                            Container(
                                child: Row(children: [
                              Image(
                                image: AssetImage("assets/icons/comment.png"),
                                height: sizeHeight * 0.036,
                                filterQuality: FilterQuality.high,
                              ),
                              SizedBox(width: sizeWidth * 0.02),
                              Text("156",
                                  style: GoogleFonts.raleway(
                                      fontSize: 20, color: Colors.black))
                            ])),
                            Image(
                              image: AssetImage("assets/icons/send.png"),
                              height: sizeHeight * 0.036,
                              filterQuality: FilterQuality.high,
                            ),
                            Image(
                              image: AssetImage("assets/icons/save.png"),
                              height: sizeHeight * 0.036,
                              filterQuality: FilterQuality.high,
                            ),
                          ],
                        ),
                      ),
                    ))),
          ],
        ),
      ),
    );
  }
}
