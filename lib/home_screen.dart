import 'package:calendar_strip/calendar_strip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:quiz_app/all_course.dart';
import 'package:quiz_app/menu_screen.dart';
import 'package:quiz_app/profile_screen.dart';
import 'package:quiz_app/utils/colorsPicker.dart';
import 'package:quiz_app/utils/image.helper.dart';
import 'package:quiz_app/utils/string.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime startDate = DateTime.now().subtract(Duration(days: 2));
  DateTime endDate = DateTime.now().add(Duration(days: 2));
  DateTime selectedDate = DateTime.now().subtract(Duration(days: 0));
  List<DateTime> markedDates = [
    DateTime.now().subtract(Duration(days: 1)),
    DateTime.now().subtract(Duration(days: 2)),
    DateTime.now().add(Duration(days: 4))
  ];

  @override
  void initState() {
    super.initState();
  }

  onSelect(data) {
    print("Selected Date -> $data");
  }

  onWeekSelect(data) {
    print("Selected week starting at -> $data");
  }

  _monthNameWidget(monthName) {
    return Container(
      child: Text(
        monthName,
        style: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w600,
          color: Colors.blue,
          fontStyle: FontStyle.italic,
        ),
      ),
      padding: EdgeInsets.only(top: 6, bottom: 3),
    );
  }

  getMarkedIndicatorWidget() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        margin: EdgeInsets.only(left: 1, right: 1),
        width: 7,
        height: 7,
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.red),
      ),
      Container(
        width: 7,
        height: 7,
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
      )
    ]);
  }

  dateTileBuilder(
      date, selectedDate, rowIndex, dayName, isDateMarked, isDateOutOfRange) {
    bool isSelectedDate = date.compareTo(selectedDate) == 0;
    Color fontColor = isDateOutOfRange ? Colors.white : Colors.white;
    TextStyle normalStyle =
        TextStyle(fontSize: 17, fontWeight: FontWeight.w800, color: fontColor);
    TextStyle selectedStyle = TextStyle(
        fontSize: 17, fontWeight: FontWeight.w800, color: Colors.white);
    TextStyle dayNameStyle = TextStyle(fontSize: 12.5, color: fontColor);
    List<Widget> _children = [
      Text(dayName, style: dayNameStyle),
      Text(date.day.toString(),
          style: !isSelectedDate ? normalStyle : selectedStyle),
    ];

    if (isDateMarked == true) {
      _children.add(getMarkedIndicatorWidget());
    }

    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      alignment: Alignment.center,
      padding: EdgeInsets.only(top: 3, left: 3, right: 3, bottom: 4),
      decoration: BoxDecoration(
        color: !isSelectedDate ? Colors.transparent : Colors.blue,
        borderRadius: BorderRadius.all(Radius.circular(60)),
      ),
      child: Column(
        children: _children,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              elevation: 2,
              expandedHeight: 220.0,
              floating: false,
              pinned: true,
              leading: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ProfileScreen(),
                  ));
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 9),
                  child: CircleAvatar(
                    radius: 35.0,
                    child: Text(
                      dummyImageText,
                      style: TextStyle(color: white, fontSize: 9),
                    ),
                    backgroundColor: primaryTextColor,
                  ),
                ),
              ),
              actions: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => MenuScreen(),
                    ));
                  },
                  child: Icon(
                    Icons.menu,
                    size: 30,
                    color: white,
                  ),
                )
              ],
              backgroundColor: primaryAppColor,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(bg_home),
                centerTitle: true,
                title: Text(
                  helloAmanda,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Stack(
              //   overflow: Overflow.clip,
              //   children: [
              //     Container(
              //       height: height * 0.40,
              //       width: width,
              //       decoration: BoxDecoration(
              //         image: DecorationImage(
              //           image: AssetImage(bg_home),
              //           fit: BoxFit.fill,
              //         ),
              //       ),
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
              //       child: Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: [
              //           InkWell(
              //             onTap: () {
              //               Navigator.of(context).push(MaterialPageRoute(
              //                 builder: (context) => Profile(),
              //               ));
              //             },
              //             child: CircleAvatar(
              //               radius: 25.0,
              //               child: Text(
              //                 dummyImageText,
              //                 style: TextStyle(color: white, fontSize: 10),
              //               ),
              //               backgroundColor: primaryTextColor,
              //             ),
              //           ),
              //           InkWell(
              //             onTap: () {
              //               Navigator.of(context).push(MaterialPageRoute(
              //                 builder: (context) => Menu(),
              //               ));
              //             },
              //             child: Icon(
              //               Icons.menu,
              //               size: 30,
              //               color: white,
              //             ),
              //           )
              //         ],
              //       ),
              //     ),
              //     Padding(
              //       padding: const EdgeInsets.only(top: 160, left: 30),
              //       child: Text(
              //         helloAmanda,
              //         style: TextStyle(
              //             fontSize: 35,
              //             fontWeight: FontWeight.bold,
              //             color: Colors.white),
              //       ),
              //     ),
              //   ],
              // ),
              Container(
                  child: CalendarStrip(
                startDate: startDate,
                endDate: endDate,
                selectedDate: selectedDate,
                onDateSelected: onSelect,
                onWeekSelected: onWeekSelect,
                dateTileBuilder: dateTileBuilder,
                iconColor: Colors.redAccent,
                monthNameWidget: _monthNameWidget,
                markedDates: markedDates,
                containerDecoration: BoxDecoration(color: Colors.black12),
                addSwipeGesture: true,
              )),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 11),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    studying,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: primaryTextColor),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: height * 0.30,
                width: width,
                child: ListView.builder(
                    itemCount: 4,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                            color: primaryAppColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        height: height * 0.27,
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
                              height: 78,
                            ),
                            SizedBox(height: height * 0.02),
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
                            SizedBox(height: 7),
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
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 11),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    service,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: primaryTextColor),
                  ),
                ),
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
                  SizedBox(width: 25),
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
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 17, right: 25),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => AllCourse(),
                    ));
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            bestToLearn,
                            style: TextStyle(
                              fontSize: 22,
                              color: primaryTextColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            bestOfThis,
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                      Container(
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
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(right: width * 0.04, left: width * 0.03),
                child: ListView.builder(
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
                          SizedBox(width: width*0.01),
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
                              child:
                              Icon(Icons.arrow_forward_ios, color: white),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
