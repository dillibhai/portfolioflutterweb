import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/model/carousel_item_list.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import '../screen_helper.dart';

class Carousel extends StatelessWidget {
  final CarouselController carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    double carouselContainerHeight = MediaQuery.of(context).size.height *
        (ScreenHelper.isMobile(context) ? .7 : .85);
    return Container(
      height: carouselContainerHeight,
      color: Colors.black,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            child: CarouselSlider(
                carouselController: carouselController,
                options: CarouselOptions(
                  autoPlay: true,
                  viewportFraction: 1,
                  scrollPhysics: NeverScrollableScrollPhysics(),
                  height: carouselContainerHeight,
                ),
                items: List.generate(
                    5,
                    (index) => Builder(builder: (BuildContext context) {
                          return Container(
                            constraints: BoxConstraints(
                              minHeight: carouselContainerHeight,
                            ),
                            child: ScreenHelper(
                              desktop: _buildDesktop(
                                context,
                                carouselItems[index].text,
                                carouselItems[index].image,
                              ),
                              tablet: _buildTablet(
                                context,
                                carouselItems[index].text,
                                carouselItems[index].image,
                              ),
                              mobile: _buildMobile(
                                context,
                                carouselItems[index].text,
                                carouselItems[index].image,
                              ),
                            ),
                          );
                        }))),
          )
        ],
      ),
    );
  }
}

Widget _buildDesktop(BuildContext context, Widget text, Widget image) {
  return Center(
      child: ResponsiveWrapper(
          maxWidth: 1000.0,
          minWidth: 1000.0,
          defaultScale: false,
          child: Row(
            children: [
              Expanded(
                child: text,
              ),
              Expanded(
                child: image,
              )
            ],
          )));
}

Widget _buildTablet(BuildContext context, Widget text, Widget image) {
  return Center(
      child: ResponsiveWrapper(
          maxWidth: 760.0,
          minWidth: 760.0,
          defaultScale: false,
          child: Row(
            children: [
              Expanded(
                child: text,
              ),
              Expanded(
                child: image,
              )
            ],
          )));
}

Widget _buildMobile(BuildContext context, Widget text, Widget image) {
  return Container(
    constraints: BoxConstraints(
      maxWidth: MediaQuery.of(context).size.width * 8,
    ),
    width: double.infinity,
    child: text,
  );
}
