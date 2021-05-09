import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio/components/carousel.dart';
import 'package:portfolio/components/cvsection.dart';
import 'package:portfolio/components/header.dart';
import 'package:portfolio/widgets/globals.dart';

import '../constants.dart';
import 'app_add.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Globals.scaffoldkey,
      endDrawer: Drawer(
          child: SafeArea(
              child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 24.0,
                  ),
                  child: ListView.separated(
                      itemBuilder: (BuildContext context, int index) {
                        return headerItems[index].isButton ? MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: Container(
                            decoration:BoxDecoration(
                              color: kDangerColor,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 28.0),
                            child: TextButton(
                              onPressed: headerItems[index].onTap,
                              child: Text(headerItems[index].title,
                              style: TextStyle(color:Colors.white, fontSize: 13.0, fontWeight:FontWeight.bold,),
                              ),
                              
                            ),
                          ),
                        ):ListTile(
                          title: Text(
                            headerItems[index].title,
                            style:TextStyle(
                              color:Colors.white,
                            )
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(height: 10.0);
                      },
                      itemCount: headerItems.length)))),
      body: Container(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Header(),
            ),
            Carousel(

            ),
            SizedBox(height:20.0),
            CvSection(),
            SizedBox(height:20.0),
            AppAd(),
          ],
        ),
      )),
    );
  }
}
