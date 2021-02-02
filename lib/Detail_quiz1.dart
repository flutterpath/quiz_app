import 'package:flutter/material.dart';
import 'package:quiz_app/Detail_quiz2.dart';
import 'package:quiz_app/util/color_picker.dart';
import 'package:quiz_app/util/image_picker.dart';
import 'package:quiz_app/util/string.dart';

class Detailquiz extends StatefulWidget {
  @override
  _DetailquizState createState() => _DetailquizState();
}

class _DetailquizState extends State<Detailquiz> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: primaryAppColor,
      body: Column(
        children: [
          Container(
              height: height*0.35,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: AssetImage(bgImage1),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: height*.04),
                    Container(
                      height: height*0.04,
                      width: width*0.08,
                      decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Center(
                        child: ImageIcon(
                          AssetImage(back),
                          size: 15.0,
                          color: primaryAppColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height*0.15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          Quiz1,
                          style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                              color: white),
                        ),
                        Text(
                          Am_Ready,
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: white),
                        )
                      ],
                    ),
                  ],
                ),
              )),
          Expanded(
            child: Stack(
              overflow: Overflow.visible,
              children: [
                Positioned(
                    height: height* 0.63,
                    left: 0,
                    right: 0,
                    bottom: 10,
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(23.0, 32.0, 20.0, 0.0),
                            child: Card(
                              elevation: 1,
                              child: Row(
                                children: <Widget>[
                                  Image.asset(Information,
                                      width: width* 0.25),
                                  SizedBox(width: width* 0.04),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        Question,
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold,
                                          color: primaryAppColor,
                                        ),
                                      ),
                                      SizedBox(height: height*0.01),
                                      Text(
                                        Processing_time,
                                        style: TextStyle(
                                          fontFamily: "Montserrat-Regular",
                                          fontSize: 10.0,
                                          color: primaryTextColor,
                                        ),
                                      ),
                                      SizedBox(height: height*0.01),
                                      Text(
                                        Second_time,
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                          color: primaryAppColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),

                          SizedBox(height: height*0.02),

                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 35, horizontal: 30),
                            child: Text(
                              Friends_who_ready,
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: primaryTextColor,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 30,right: 75),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Stack(
                                  overflow: Overflow.visible,
                                  children: [
                                    Stack(
                                      children: [
                                        CircleAvatar(
                                          radius: 30.0,
                                          child: Text(
                                            DummyImage,
                                            style: TextStyle(
                                                color: white, fontSize: 11),
                                          ),
                                          backgroundColor: primaryTextColor,
                                        ),
                                      ],
                                    ),
                                    Positioned(
                                      left: 52,
                                      child: Stack(
                                        children: [
                                          CircleAvatar(
                                            radius: 30.0,
                                            child: Text(
                                              DummyImage,
                                              style: TextStyle(
                                                  color: white, fontSize: 11),
                                            ),
                                            backgroundColor: primaryTextColor,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                      left: 104,
                                      child: Stack(
                                        children: [
                                          CircleAvatar(
                                            radius: 30.0,
                                            child: Text(
                                              DummyImage,
                                              style: TextStyle(
                                                  color: white, fontSize: 11),
                                            ),
                                            backgroundColor: primaryTextColor,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                      left: 155 ,
                                      child: Stack(
                                        children: [
                                          CircleAvatar(
                                            radius: 30.0,
                                            child: Text(
                                              DummyImage,
                                              style: TextStyle(
                                                  color: white, fontSize: 11),
                                            ),
                                            backgroundColor: primaryTextColor,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: width*0.05,
                                ),
                                RichText(
                                  text: TextSpan(
                                    text: Sixty_plus,
                                    style: TextStyle(
                                        fontSize: 24, color: primaryTextColor),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: online,
                                          style: TextStyle(fontSize: 14,
                                              color: primaryTextColor)),
                                      TextSpan(
                                          text: Friends,
                                          style: TextStyle(
                                              fontSize: 24,
                                              color: primaryTextColor,
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(height: height*0.01),

                          Container(
                            padding: EdgeInsets.fromLTRB(30.0, 32.0, 10.0, 0.0),
                            child: Text(
                              About,
                              style: TextStyle(
                                  fontSize: 18.0,
                                  color: primaryTextColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(30.0, 32.0, 10.0, 0.0),
                            child: Text(
                                About_us_detail,
                                style: TextStyle(
                                  fontFamily: "Montserrat-Regular",
                                  fontSize: 12.0,
                                  color: primaryTextColor,
                                )),
                          ),
                        ],
                      ),
                    ))
              ],
            ),
          ),
          SizedBox(
            height: height* 0.07,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton(

                  color: primaryAppColor,
                  child: Text(
                    Ready,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: white,
                    ),
                  ),

                  onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Detailquiz2(),
                      ));
                    },

                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
