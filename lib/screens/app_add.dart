import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import '../constants.dart';
import '../screen_helper.dart';

class AppAd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScreenHelper(
        desktop: _buildUi(1000.0),
        tablet: _buildUi(760.0),
        mobile: _buildUi(MediaQuery.of(context).size.width * .8),
      ),
    );
  }

  Widget _buildUi(double width) {
    return Center(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return ResponsiveWrapper(
              maxWidth: width,
              minWidth: width,
              defaultScale: false,
              child: Flex(
                  direction: constraints.maxWidth > 720
                      ? Axis.horizontal
                      : Axis.vertical,
                  children: [
                    Expanded(
                      flex: constraints.maxWidth > 720.0 ? 1 : 0,
                      child: Image.asset(
                        "assets/images/ios.png",
                        width: constraints.maxWidth > 720.0 ? null : 350.0,
                      ),
                    ),
                    SizedBox(width: 40.0),
                    Expanded(
                        flex: constraints.maxWidth > 720.0 ? 1 : 0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("ANDROID & IOS APP",
                                style: GoogleFonts.oswald(
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 16.0,
                                )),
                            SizedBox(height: 15.0),
                            Text("UNIVERSAL \nSMART HOME APP",
                                style: GoogleFonts.oswald(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 35.0,
                                  height: 1.3,
                                )),
                            SizedBox(height: 10.0),
                            Text(
                              "this is a random text about this project,this is a random text about this project,this is a random text about this project.",
                              style: TextStyle(
                                color: kCaptionColor,
                                height: 1.5,
                                fontSize: 15.0,
                              ),
                            ),
                            SizedBox(
                              height: 25.0,
                            ),
                            Row(
                              children: [
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
                                        child: Center(
                                            child: Text(
                                          "EXPLORE MORE",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ))),
                                  ),
                                ),
                                SizedBox(width: 10.0),
                                MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          border: Border.all(
                                            color: kPrimaryColor,
                                          ),
                                        ),
                                        height: 48.0,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 28.0),
                                        child: TextButton(
                                            onPressed: () {},
                                            child: Center(
                                                child: Text(
                                              "NEXT APP",
                                              style: TextStyle(
                                                color: kPrimaryColor,
                                                fontSize: 13.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            )))))
                              ],
                            )
                          ],
                        ))
                  ]));
        },
      ),
    );
  }
}
