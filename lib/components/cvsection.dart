import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import '../constants.dart';
import '../screen_helper.dart';
import 'design_process.dart';

final List<DesignProcess> designProcesses = [
  DesignProcess(
      title: "DESIGN",
      imagePath: "assets/images/design.png",
      subtitle:
          "A full stack all rounder designe.A full stack all rounder designe.A full stack all rounder designe."),
  DesignProcess(
      title: "DEVELOP",
      imagePath: "assets/images/develop.png",
      subtitle:
          "A full stack all rounder designe.A full stack all rounder designe.A full stack all rounder designe."),
  DesignProcess(
      title: "WRITE",
      imagePath: "assets/images/write.png",
      subtitle:
          "A full stack all rounder designe.A full stack all rounder designe.A full stack all rounder designe."),
  DesignProcess(
      title: "PROMOTE",
      imagePath: "assets/images/promote.png",
      subtitle:
          "A full stack all rounder designe.A full stack all rounder designe.A full stack all rounder designe.")
];

class CvSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ScreenHelper(
          desktop: _buildUi(context, 1000.0),
          tablet: _buildUi(context, 760.0),
          mobile: _buildUi(context, MediaQuery.of(context).size.width),
        ));
  }

  Widget _buildUi(BuildContext context, double width) {
    return ResponsiveWrapper(
        maxWidth: width,
        minWidth: width,
        defaultScale: false,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                "BETTER DESIGN,DEVELOPMENT \n BETTER EXPERIENCE",
                style: GoogleFonts.oswald(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  height: 1.8,
                  fontSize: 18.0,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Text(
                    "DOWNLOAD CV",
                    style: GoogleFonts.oswald(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w900,
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
            ]),
            SizedBox(height: 50.0),
            Container(
              child: LayoutBuilder(builder: (_context, constraints) {
                return ResponsiveGridView.builder(
                  padding: EdgeInsets.all(0.0),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  alignment: Alignment.topCenter,
                  gridDelegate: ResponsiveGridDelegate(
                    mainAxisSpacing: 20.0,
                    crossAxisSpacing: 20.0,
                    maxCrossAxisExtent: ScreenHelper.isTablet(context) ||
                            ScreenHelper.isMobile(context)
                        ? constraints.maxWidth / 2.0
                        : 250.0,
                    childAspectRatio: ScreenHelper.isDesktop(context)
                        ? 1
                        : MediaQuery.of(context).size.aspectRatio * 1.5,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                designProcesses[index].imagePath,
                                width: 50.0,
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              Text(designProcesses[index].title,
                                  style: GoogleFonts.oswald(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ))
                            ],
                          ),
                          SizedBox(height: 15.0),
                          Text(
                            designProcesses[index].subtitle,
                            style: TextStyle(
                              color: kCaptionColor,
                              height: 1.5,
                              fontSize: 15.0,
                            ),
                          )
                        ],
                      ),
                    );
                  },
                  itemCount: designProcesses.length,
                );
              }),
            )
          ],
        ));
  }
}
