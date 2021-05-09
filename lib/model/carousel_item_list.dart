import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class CarouselItemModel {
  final Widget text;
  final Widget image;

  CarouselItemModel({@required this.text, @required this.image});
}

List<CarouselItemModel> carouselItems = List.generate(
    5,
    (index) => CarouselItemModel(
        text: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "FLUTTER DEVELOPER",
                style: GoogleFonts.oswald(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w900,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 18.0),
              Text(
                "DILLI \nBHANDARI",
                style: GoogleFonts.oswald(
                  color: Colors.white,
                  fontSize: 40.0,
                  fontWeight: FontWeight.w900,
                  height: 1.3,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Flutter Developer",
                style: TextStyle(
                  color: kCaptionColor,
                  fontSize: 15.0,
                  height: 1.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                child: Wrap(
                  children: [
                    Text(
                      "Need a full custom website \nand mobile application",
                      style: TextStyle(
                        color: kCaptionColor,
                        fontSize: 15.0,
                        height: 1.5,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: Text(
                          "Got a project? Let's talk.",
                          style: TextStyle(
                            height: 1.5,
                            fontSize: 15.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 25.0),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Container(
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  height: 48.0,
                  padding: EdgeInsets.symmetric(
                    horizontal: 28.0,
                  ),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "GET STARTED",
                        style: TextStyle(
                          color: Colors.amber,
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                ),
              )
            ],
          ),
        ),
        image: Container(
          child: Image.asset(
            "assets/images/mine.png",
            fit: BoxFit.contain,
          ),
        )));
