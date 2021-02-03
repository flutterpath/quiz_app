import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:quiz_app/utils/colorsPicker.dart';
import 'package:quiz_app/utils/image.helper.dart';
import 'package:quiz_app/utils/string.dart';
import 'package:quiz_app/videos_screen.dart';

import 'Detail_quiz1.dart';

class DetailSyuyingTwo extends StatefulWidget {
  @override
  _DetailSyuyingTwoState createState() => _DetailSyuyingTwoState();
}

class _DetailSyuyingTwoState extends State<DetailSyuyingTwo> {
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
          padding: const EdgeInsets.only(top: 29, left: 20),
          child: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Align(
                alignment: Alignment.topLeft,
                child: Image.asset(
                  ic_seeMore,
                  height: 35,
                )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 150),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: Text(
                      oneLesson,
                      style: TextStyle(color: white, fontSize: 10),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 60),
                        child: Text(
                          bab1,
                          style: TextStyle(
                              color: white,
                              fontSize: 23,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(width: 45),
                      LinearPercentIndicator(
                        width: 130.0,
                        lineHeight: 3.0,
                        percent: 0.50,
                        backgroundColor: primaryTextColor,
                        progressColor: white,
                      ),
                      Text(
                        "50%",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: white),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: 200,
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            padding: const EdgeInsets.only(left: 8, right: 8),
            decoration: BoxDecoration(
                color: white,
                borderRadius:
                    BorderRadius.vertical(top: Radius.circular(30))),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 10),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          quiz,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        )),
                  ),
                  SizedBox(height: 15),
                  Container(
                    height: height * 0.25,
                    width: width,
                    child: ListView.builder(
                        itemCount: 3,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Detailquiz(),
                              ));
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                  color: primaryAppColor,
                                  image: DecorationImage(
                                    image: AssetImage(bg_study),
                                    fit: BoxFit.fill,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              height: height * 0.15,
                              width: width * 0.85,
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Quiz 1",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: white),
                                  ),
                                  SizedBox(height: 15),
                                  Text(
                                    limitAndFunction,
                                    style: TextStyle(fontSize: 12, color: white),
                                  ),
                                  SizedBox(height: 15),
                                  Text(
                                    loremIpsum,
                                    style: TextStyle(fontSize: 8, color: white),
                                  ),
                                  SizedBox(height: 35),
                                  Row(
                                    children: [
                                      Text(
                                        june,
                                        style:
                                            TextStyle(fontSize: 9, color: white),
                                      ),
                                      SizedBox(width: width * 0.10),
                                      Text(
                                       am,
                                        style:
                                            TextStyle(fontSize: 9, color: white),
                                      ),
                                      SizedBox(width: width * 0.22),
                                      Text(
                                        grades,
                                        style:
                                            TextStyle(fontSize: 9, color: white),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                  SizedBox(height: height * 0.03),
                  Text(
                    learn,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: height * 0.01),
                  Text(
                    youDailyLearn,
                    style: TextStyle(fontSize: 9),
                  ),
                  SizedBox(
                    width: double.infinity,

                    child:
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 2,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return ExpansionTile(
                          trailing: Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                                color: primaryAppColor,
                                borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                            child: Center(
                              child: Icon(Icons.arrow_forward_ios, color: white),
                            ),
                          ),
                          tilePadding: EdgeInsets.zero,
                          title: Row(
                            children: <Widget>[
                              Image.asset(ic_image, height: 80, width: 100.0),
                              SizedBox(width: 15),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    whatIsIntegral,
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
                            ],
                          ),
                          backgroundColor: Theme.of(context)
                              .accentColor
                              .withOpacity(0.025),
                          children: [
                            ChewieDemo(),
                          ],
                        );
                      },
                    ),
                    // ListView.builder(
                    //   physics: NeverScrollableScrollPhysics(),
                    //   itemCount: 2,
                    //   shrinkWrap: true,
                    //   itemBuilder: (context, index) {
                    //     return Container(
                    //       margin: EdgeInsets.only(top: 10),
                    //       decoration: BoxDecoration(
                    //         boxShadow: [
                    //           BoxShadow(
                    //             color: Colors.grey[350],
                    //             blurRadius: 25.0,
                    //           ),
                    //         ],
                    //         color: white,
                    //         borderRadius: BorderRadius.all(Radius.circular(10)),
                    //       ),
                    //       child: Row(
                    //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //         children: <Widget>[
                    //           Image.asset(ic_image, height: height*0.10, width: width*0.25),
                    //           SizedBox(width: 15),
                    //           Column(
                    //             crossAxisAlignment: CrossAxisAlignment.start,
                    //             children: [
                    //               Text(
                    //                 whatIsIntegral,
                    //                 style: TextStyle(
                    //                   fontSize: 16.0,
                    //                   fontWeight: FontWeight.bold,
                    //                   color: Colors.blueAccent,
                    //                 ),
                    //               ),
                    //               SizedBox(height: 10),
                    //               Text(
                    //                 insideHave,
                    //                 style: TextStyle(
                    //                   fontSize: 12.0,
                    //                   color: Colors.black,
                    //                 ),
                    //               ),
                    //               SizedBox(height: 10),
                    //               RatingBar.builder(
                    //                 itemSize: 15,
                    //                 initialRating: 1,
                    //                 direction: Axis.horizontal,
                    //                 allowHalfRating: true,
                    //                 itemCount: 5,
                    //                 itemPadding:
                    //                 EdgeInsets.symmetric(horizontal: 1.0),
                    //                 itemBuilder: (context, _) => Icon(
                    //                   Icons.star,
                    //                   color: Colors.amber,
                    //                 ),
                    //                 onRatingUpdate: (rating) {
                    //                   print(rating);
                    //                 },
                    //               ),
                    //             ],
                    //           ),
                    //           SizedBox(width: width*0.20),
                    //           Container(
                    //             height: 35,
                    //             width: 35,
                    //             decoration: BoxDecoration(
                    //                 color: primaryAppColor,
                    //                 borderRadius:
                    //                 BorderRadius.all(Radius.circular(10))),
                    //             child: Center(
                    //               child:
                    //               Icon(Icons.arrow_forward_ios, color: white),
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //     );
                    //   },
                    // ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
