import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:quiz_app/all_course.dart';
import 'package:quiz_app/detail_syuying.dart';
import 'package:quiz_app/utils/colorsPicker.dart';
import 'package:quiz_app/utils/image.helper.dart';
import 'package:quiz_app/utils/string.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          body: NestedScrollView(
              headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
                return [
                  SliverAppBar(
                    // elevation: 0,
                    expandedHeight: height*0.30,
                    floating: true,
                    pinned: false,
                    leading:  Padding(
                      padding:  EdgeInsets.only(left: width*0.05),
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Image.asset(
                              ic_seeMore,
                              height: 40,

                            ),
                          )),
                    ),
                    backgroundColor: Colors.transparent,
                    flexibleSpace: FlexibleSpaceBar(
                      background: Image.asset(bg_profile,fit: BoxFit.cover,),
                      centerTitle: true,
                      title:  Padding(
                        padding:  EdgeInsets.only(top: height*0.07,left: width*0.01),
                        child: Align(
                          alignment: Alignment.center,
                          child: CircleAvatar(
                            radius: 50.0,
                            child: Text(
                              dummyImageText,
                              style: TextStyle(color: white,fontSize: 8),
                            ),
                            backgroundColor: primaryTextColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ];
              },
           body:  Stack(
            overflow: Overflow.visible,
            children: [
              // Container(
              //   height: height * 0.40,
              //   width: width,
              //   decoration: BoxDecoration(
              //     image: DecorationImage(
              //       image: AssetImage(bg_profile),
              //       fit: BoxFit.fill,
              //     ),
              //   ),
              // ),
              // Positioned(
              //   left: width * 0.3,
              //   top: height * 0.05,
              //   child: CircleAvatar(
              //     radius: 70.0,
              //     child: Text(
              //       dummyImageText,
              //       style: TextStyle(color: white),
              //     ),
              //     backgroundColor: primaryTextColor,
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.only(top: 29,left: 20),
              //   child: Align(
              //       alignment: Alignment.topLeft,
              //       child: InkWell(
              //         onTap: () {
              //          Navigator.pop(context);
              //         },
              //         child: Image.asset(
              //           ic_seeMore,
              //           height: 35,
              //         ),
              //       )),
              // ),
              Positioned(
                top: 0,
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding:  EdgeInsets.only(left: width*0.03, right: width*0.03),
                  decoration: BoxDecoration(

                      color: white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))),
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      Center(
                        child: Text(
                          amandaRoman,
                          style: TextStyle(
                              fontSize: 29,
                              fontWeight: FontWeight.bold,
                              color: primaryTextColor),
                        ),
                      ),
                      Center(
                        child: Text(
                          student,
                          style: TextStyle(fontSize: 22, color: Colors.grey[600]),
                        ),
                      ),
                      SizedBox(height: height*0.03),
                      Text(
                       studying,
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: primaryTextColor),
                      ),
                      SizedBox(height: height*0.02),
                      Container(
                        height: height * 0.30,
                        width: width,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => DetailSyuying(),
                            ));
                          },
                          child: ListView.builder(
                              itemCount: 3,
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Container(
                                  margin: EdgeInsets.only(left: 10),
                                  decoration: BoxDecoration(
                                      color: primaryAppColor,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10))),
                                  height: height * 0.29,
                                  width: width * 0.50,
                                  padding: const EdgeInsets.all(15.0),
                                  child: Column(
                                    children: [
                                      Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            mathematic,
                                            style: TextStyle(
                                                fontSize: 17,
                                                color: white,
                                                fontWeight: FontWeight.bold),
                                          )),
                                      SizedBox(height: height * 0.01),
                                      Image.asset(
                                        ic_math,
                                        height: height*0.09,
                                      ),
                                      SizedBox(height: height * 0.01),
                                      Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            lessonFrom,
                                            style: TextStyle(color: white, fontSize: 9),
                                          )),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          LinearPercentIndicator(
                                            width: 100.0,
                                            lineHeight: 5.0,
                                            percent: 0.64,
                                            backgroundColor: primaryTextColor,
                                            progressColor: white,
                                          ),
                                          Text(
                                            "64%",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                color: white),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 5),
                                      Row(
                                        children: [
                                          CircleAvatar(
                                            backgroundColor: white,
                                            radius: 14,
                                          ),
                                          SizedBox(
                                            width: width * 0.02,
                                          ),
                                          Text(
                                            "89.80",
                                            style: TextStyle(
                                                color: white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(width: width * 0.04),
                                          CircleAvatar(
                                            backgroundColor: white,
                                            radius: 14,
                                          ),
                                          SizedBox(
                                            width: width * 0.02,
                                          ),
                                          Text(
                                            "12",
                                            style: TextStyle(
                                                color: white,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                );
                              }),
                        ),
                      ),
                      SizedBox(height: height*0.03),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => AllCourse(),
                          ));
                        },
                        child: Text(
                          yourGrade,
                          style: TextStyle(
                            fontSize: 22,
                            color: primaryTextColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: height*0.01),
                      Text(
                        latestGrade,
                        style: TextStyle(fontSize: 11, color: primaryTextColor),
                      ),
                      SizedBox(height: height*0.02),
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
                                  blurRadius: 18.0,
                                ),
                              ],
                              color: white,
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Row(
                              children: <Widget>[
                                Image.asset(ic_image, height: height*0.10, width: width*0.25),
                                SizedBox(width: width*0.06),
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
                                SizedBox(width: 20),
                                Container(
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                      color: primaryAppColor,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10))),
                                  child: Center(
                                    child: Text(
                                      "A",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                      SizedBox(height: height * 0.22),
                    ],
                  ),
                ),
              ),

              DraggableScrollableSheet(
                expand: true,
                initialChildSize: 0.3,
                minChildSize: 0.2,
                maxChildSize: 0.5,
                builder: (BuildContext context, myscrollController) {
                  return SingleChildScrollView(
                    controller: myscrollController,
                    child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey[350],
                                blurRadius: 25.0,
                              ),
                            ],
                            color: white,
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(30))),
                        child: Column(
                          children: [
                            Divider(
                              color: Colors.blue,
                              thickness: 3,
                              endIndent: 130,
                              indent: 130,
                            ),
                            SingleChildScrollView(
                              child: Column(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 23, right: 200),
                                    child: Text(
                                      friendsOnline,
                                      style: TextStyle(
                                          fontSize: 16, fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                              Positioned(
                                                bottom: 0,
                                                right: 5,
                                                child: CircleAvatar(
                                                  radius: 6,
                                                  backgroundColor: Colors.green,
                                                ),
                                              )
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
                                                Positioned(
                                                  bottom: 0,
                                                  right: 5,
                                                  child: CircleAvatar(
                                                    radius: 6,
                                                    backgroundColor: Colors.green,
                                                  ),
                                                )
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
                                                Positioned(
                                                  bottom: 0,
                                                  right: 5,
                                                  child: CircleAvatar(
                                                    radius: 6,
                                                    backgroundColor: Colors.green,
                                                  ),
                                                )
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
                                                Positioned(
                                                  bottom: 0,
                                                  right: 5,
                                                  child: CircleAvatar(
                                                    radius: 6,
                                                    backgroundColor: Colors.green,
                                                  ),
                                                )
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
                                  SizedBox(height: 20),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 15, right: 15),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          boxShadow: [BoxShadow(
                                            color: Colors.grey[300],
                                            blurRadius: 5.0,
                                          ),]
                                      ),
                                      child: new TextField(
                                        decoration: new InputDecoration(
                                          fillColor: Colors.white,
                                          filled: true,
                                          hintText: search,
                                          enabledBorder: const OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.all(Radius.circular(20.0)),
                                            borderSide: const BorderSide(
                                              color: Colors.grey,
                                            ),
                                          ),
                                          prefixIcon: Icon(
                                            Icons.search,
                                            color: Colors.grey,
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.all(Radius.circular(10.0)),
                                            borderSide: BorderSide(color: Colors.transparent),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  ListView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    itemCount: 4,
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.only(bottom: 12),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(left: 30),
                                              child: Stack(
                                                children: [
                                                  CircleAvatar(
                                                    radius: 32.0,
                                                    child: Text(
                                                      dummyImageText,
                                                      style: TextStyle(
                                                          color: white, fontSize: 12),
                                                    ),
                                                    backgroundColor: primaryTextColor,
                                                  ),
                                                  Positioned(
                                                    bottom: 0,
                                                    right: 5,
                                                    child: CircleAvatar(
                                                      radius: 7,
                                                      backgroundColor: Colors.green,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            SizedBox(width: 15),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(anandaVia,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                                Text(online,style: TextStyle(fontSize: 14,color: Colors.grey)),
                                              ],
                                            )
                                          ],
                                        ),
                                      );
                                    }
                                  ),

                                ],
                              ),
                            ),
                          ],
                        )),
                  );
                },
              ),
            ],
          )
          ),
      ),
    );
  }
}
