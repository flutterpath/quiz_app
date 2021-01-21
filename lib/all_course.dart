import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:quiz_app/utils/colorsPicker.dart';
import 'package:quiz_app/utils/image.helper.dart';
import 'package:quiz_app/utils/string.dart';

class AllCourse extends StatefulWidget {
  @override
  _AllCourseState createState() => _AllCourseState();
}

class _AllCourseState extends State<AllCourse> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Stack(
      overflow: Overflow.clip,
      children: [
        Container(
          height: height * 0.33,
          width: width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(bgImage),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 25.0,
                    child: Text(
                      dummyImageText,
                      style: TextStyle(color: white, fontSize: 10),
                    ),
                    backgroundColor: primaryTextColor,
                  ),
                  Icon(
                    Icons.menu,
                    size: 30,
                    color: white,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35),
                child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      allCourse,
                      style: TextStyle(
                          fontSize: 36,
                          color: white,
                          fontWeight: FontWeight.w600),
                    )),
              ),
            ],
          ),
        ),
        Positioned(
          top: 200,
          bottom: 0,
          left: 0,
          right: 0,
          child: SingleChildScrollView(
            child: Container(
                padding: const EdgeInsets.only(left: 8, right: 8),
                decoration: BoxDecoration(
                    color: white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(30))),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20,left: 10),
                      child: Align(alignment: Alignment.topLeft,
                          child: Text(cattegory,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),)),
                    ),
                    Row(
                      children: [
                        Container(
                          child: Image.asset(
                            ic_discount,
                            scale: 5,
                          ),
                        ),
                        Container(
                          child: Image.asset(
                            ic_teacher,
                            scale: 5,
                          ),
                        ),
                        SizedBox(width: 20),
                        Container(
                          child: Image.asset(
                            ic_points,
                            scale: 5,
                          ),
                        ),
                        Container(
                          child: Image.asset(
                            ic_learn,
                            scale: 5,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey[400],
                            blurRadius: 25.0,
                          ),
                        ],
                        color: white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: TextFormField(
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                        decoration: InputDecoration(
                          fillColor: white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 1.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            //borderSide: BorderSide.none,
                          ),
                          prefixIcon: Icon(Icons.search),
                          hintText: search,
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.03),
                    Align(alignment: Alignment.topLeft,
                      child: Text(
                        course,
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(height: height * 0.01),
                    Align(alignment: Alignment.topLeft,
                      child: Text(
                        allcourse,
                        style: TextStyle(fontSize: 9),
                      ),
                    ),
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 3,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[350],
                                blurRadius: 25.0,
                              ),
                            ],
                            color: white,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Row(
                            children: <Widget>[
                              Image.asset(ic_image, height: 80, width: 100.0),
                              SizedBox(width: 15),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    englishDeep,
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blueAccent,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    insideHave,
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  RatingBar.builder(
                                    itemSize: 15,
                                    initialRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemPadding:
                                    EdgeInsets.symmetric(horizontal: 1.0),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                ],
                              ),
                              SizedBox(width: width * 0.10),
                              Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                    color: primaryAppColor,
                                    borderRadius: BorderRadius.all(Radius.circular(10))),
                                child: Center(
                                  child: Icon(Icons.arrow_forward_ios, color: white),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 15),
                  ],
                )),
          ),
        ),
      ],
    ));
  }
}
