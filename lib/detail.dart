import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:quiz_app/utils/colorsPicker.dart';
import 'package:quiz_app/utils/image.helper.dart';
import 'package:quiz_app/utils/string.dart';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: primaryAppColor,
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
          padding: const EdgeInsets.only(top: 29, left: 25),
          child: Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                ic_seeMore,
                height: 35,
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 120, left: 25),
          child: Text(
            "English\ndeep learn",
            style: TextStyle(
                fontSize: 24, color: white, fontWeight: FontWeight.w600),
          ),
        ),
        Positioned(
          top: 200,
          bottom: 80,
          left: 0,
          right: 0,
          child: Container(
            height: height*0.30,
              padding: const EdgeInsets.only(left: 8, right: 8,bottom: 2),
              decoration: BoxDecoration(
                  color: white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(30),bottom: Radius.circular(30))),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 10),
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "What you will learn",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 10),
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit,\nsed do eiusmod tempor incididunt ut labore et dolore\nmagna aliqua. Ut enim",
                            style: TextStyle(fontSize: 12),
                          )),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(
                            overflow: Overflow.visible,
                            children: [
                              Stack(
                                children: [
                                  CircleAvatar(
                                    radius: 26.0,
                                    child: Text(
                                      dummyImageText,
                                      style: TextStyle(
                                          color: white, fontSize: 9),
                                    ),
                                    backgroundColor: primaryTextColor,
                                  ),
                                ],
                              ),
                              Positioned(
                                left: 45,
                                child: Stack(
                                  children: [
                                    CircleAvatar(
                                      radius: 26.0,
                                      child: Text(
                                        dummyImageText,
                                        style: TextStyle(
                                            color: white, fontSize: 9),
                                      ),
                                      backgroundColor: primaryTextColor,
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                left: 87,
                                child: Stack(
                                  children: [
                                    CircleAvatar(
                                      radius: 26.0,
                                      child: Text(
                                        dummyImageText,
                                        style: TextStyle(
                                            color: white, fontSize: 9),
                                      ),
                                      backgroundColor: primaryTextColor,
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                left: 132,
                                child: Stack(
                                  children: [
                                    CircleAvatar(
                                      radius: 26.0,
                                      child: Text(
                                        dummyImageText,
                                        style: TextStyle(
                                            color: white, fontSize: 9),
                                      ),
                                      backgroundColor: primaryTextColor,
                                    ),

                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          RichText(
                            text: TextSpan(
                              text: '60+ ',
                              style: TextStyle(
                                  fontSize: 24, color: primaryTextColor),
                              children: <TextSpan>[
                                TextSpan(
                                    text: online,
                                    style: TextStyle(fontSize: 14)),
                                TextSpan(
                                    text: '\nFriends',
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: height * 0.01),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Align(alignment: Alignment.centerLeft,
                        child: Text(
                          learn,
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.01),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Align(alignment: Alignment.centerLeft,
                        child: Text(
                          youDailyLearn,
                          style: TextStyle(fontSize: 9),
                        ),
                      ),
                    ),
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 3,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(top: 10, left: 10, right: 10),
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
                                    bab1,
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
                              Spacer(),
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
                    SizedBox(height: height*0.02),
                    Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text("Review",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                            ),
                            SizedBox(height: 8),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text("All Review User",style: TextStyle(fontSize: 9),),
                            ),
                          ],
                        ),
                        SizedBox(width: width*0.08),
                        Container(
                          height: 20,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              border: Border.all(width: 1,color: primaryAppColor,style: BorderStyle.solid)
                          ),
                          child: Center(
                            child: RatingBar.builder(
                              itemSize: 8,
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
                          ),
                        ),
                        SizedBox(width: 5.0),
                        Container(
                          height: 20,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              border: Border.all(width: 1,color: primaryAppColor,style: BorderStyle.solid)
                          ),
                          child: Center(
                            child: RatingBar.builder(
                              itemSize: 8,
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
                          ),
                        ),
                        SizedBox(width: 5.0),
                        Container(
                          height: 20,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              border: Border.all(width: 1,color: primaryAppColor,style: BorderStyle.solid)
                          ),
                          child: Center(
                            child: RatingBar.builder(
                              itemSize: 8,
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
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 4,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(left: 7, right: 5),
                          child: Row(
                            children: <Widget>[
                              CircleAvatar(
                                radius: 33.0,
                                child: Text(
                                  dummyImageText,
                                  style: TextStyle(color: white, fontSize: 10),
                                ),
                                backgroundColor: primaryTextColor,
                              ),
                              SizedBox(width: 15),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Ananda Via",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                      color: primaryTextColor,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor incididunt",
                                    style: TextStyle(
                                      fontSize: 10.0,
                                      color: primaryTextColor,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Padding(
                                    padding:  EdgeInsets.only(left: width*0.40),
                                    child: Row(
                                      children: [
                                        RatingBar.builder(
                                          itemSize: 12,
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
                                        Text("(4.6)")
                                      ],
                                    ),
                                  ),
                                ],
                              ),

                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              )),
        ),
        Positioned(
          bottom: 30,left: 120,
            child: Column(
              children: [
                Text(
                    "Add To Chart",style: TextStyle(fontSize: 18,color: white),),
                Text(
                  "7,92",style: TextStyle(fontSize: 15,color: white),),
              ],
            ))
      ],
    ));
  }
}
