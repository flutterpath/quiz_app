import 'package:calendar_strip/calendar_strip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:quiz_app/detail_study2.dart';
import 'package:quiz_app/utils/colorsPicker.dart';
import 'package:quiz_app/utils/image.helper.dart';
import 'package:quiz_app/utils/string.dart';

import 'Detail_quiz1.dart';

class DetailSyuying extends StatefulWidget {
  @override
  _DetailSyuyingState createState() => _DetailSyuyingState();
}


class _DetailSyuyingState extends State<DetailSyuying> {
  // String rectArg = "20";
  DateTime startDate = DateTime.now().subtract(Duration(days: 2));
  DateTime endDate = DateTime.now().add(Duration(days: 2));
  DateTime selectedDate = DateTime.now().subtract(Duration(days: 0));
  List<DateTime> markedDates = [
    DateTime.now().subtract(Duration(days: 1)),
    DateTime.now().subtract(Duration(days: 2)),
    DateTime.now().add(Duration(days: 4))
  ];
  String foos = 'One';


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

  List<NewItem> items = <NewItem>[
    NewItem(
      false, // isExpanded ?
      'Header', // header
      Padding(
        padding: EdgeInsets.all(20.0),
        child: ListView.builder(
            itemCount: 2,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Detailquiz(),
                  ));
                },
                child: Container(
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 5, right: 5),
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(50)),
                            child: Container(
                              decoration: BoxDecoration(
                                  border:
                                  Border.all(color: Colors.white, width: 2),
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(50)),
                              height: 20,
                              width: 20,
                            ),
                          ),
                          index == 1
                              ? Container(
                            width: 4,
                            height: 80,
                          )
                              : Container(
                            width: 4,
                            height: 80,
                            color: Colors.green,
                          ),
                        ],
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(),
                          height: 100,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "integral",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "2 video 2 quiz",
                                  style: TextStyle(
                                      fontSize: 9,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                SizedBox(height: 5),
                                Row(
                                  children: [
                                    CircleAvatar(
                                        radius: 7, backgroundColor: Colors.green),
                                    SizedBox(width: 10),
                                    Text(
                                      "Quiz 1 Paised",
                                      style: TextStyle(
                                          fontSize: 9,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.green),
                                    ),
                                    SizedBox(width: 110),
                                    Text(
                                      "Grade:A",
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 9,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 5),
                                Row(
                                  children: [
                                    CircleAvatar(
                                        radius: 7,
                                        backgroundColor: Color(0xFFDBD549)),
                                    SizedBox(width: 10),
                                    Text(
                                      "Quiz 2 Paised",
                                      style: TextStyle(
                                          fontSize: 10, color: Color(0xFFDBD549)),
                                    ),
                                    SizedBox(width: 105),
                                    Text(
                                      "Grade:c",
                                      style: TextStyle(
                                          color: Color(0xFFDBD549), fontSize: 10),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ), // body
      Icon(Icons.minimize), // iconPic
    ),
  ];

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
    TextStyle dayNameStyle = TextStyle(fontSize: 14.5, color: fontColor);
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
      padding: EdgeInsets.only(top: 6, left: 4, right: 3, bottom: 5),
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
            onTap: () {
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
          padding:  EdgeInsets.only(top: 150, left: width*0.01,right: width*0.01),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(left: width*0.35),
                    child: Text(
                      lessonFrom,
                      style: TextStyle(color: white, fontSize: 10),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        mathematic,
                        style: TextStyle(
                            color: white,
                            fontSize: 23,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(width: 45),
                      LinearPercentIndicator(
                        width: 130.0,
                        lineHeight: 3.0,
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
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: height*0.28,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 10),
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            exam,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          )),
                    ),
                    SizedBox(height: 15),
                    Container(
                      height: height * 0.28,
                      width: width,
                      child: ListView.builder(
                          itemCount: 2,
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
                                height: height * 0.25,
                                width: width * 0.80,
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      bab1,
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: white),
                                    ),
                                    SizedBox(height: 15),
                                    Text(
                                      limitAndFunction,
                                      style:
                                          TextStyle(fontSize: 12, color: white),
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
                                          style: TextStyle(
                                              fontSize: 9, color: white),
                                        ),
                                        SizedBox(width: width * 0.10),
                                        Text(
                                          am,
                                          style: TextStyle(
                                              fontSize: 9, color: white),
                                        ),
                                        SizedBox(width: width * 0.20),
                                        Text(
                                          grades,
                                          style: TextStyle(
                                              fontSize: 9, color: white),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                    SizedBox(height: height * 0.05),
                    Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey[500],
                              blurRadius: 22.0,
                            ),
                          ],
                          color: white,
                        ),
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
                          containerDecoration:
                              BoxDecoration(color: Colors.black12),
                          addSwipeGesture: true,
                        )),
                    SizedBox(height: height * 0.02),
                    Text(
                      learn,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: height * 0.01),
                    Text(
                      youDailyLearn,
                      style: TextStyle(fontSize: 9),
                    ),
                    SizedBox(height: height * 0.01),
                    SizedBox(
                      width: double.infinity,
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 3,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Container(
                            // decoration: BoxDecoration(
                            //   boxShadow: [
                            //     BoxShadow(
                            //       color: Colors.grey[350],
                            //       blurRadius: 25.0,
                            //     ),
                            //   ],
                            //   color: white,
                            //   borderRadius: BorderRadius.all(Radius.circular(10)),
                            // ),
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: ExpansionPanelList(
                                // elevation: 0,
                                expansionCallback: (int index, bool isExpanded) {
                                  setState(() {
                                    items[index].isExpanded = !items[index].isExpanded;
                                  });
                                },
                                children: items.map((NewItem item) {
                                  return ExpansionPanel(
                                    headerBuilder: (BuildContext context, bool isExpanded) {
                                      return InkWell(
                                        onTap: () {
                                          Navigator.of(context).push(MaterialPageRoute(
                                            builder: (context) => DetailSyuyingTwo(),
                                          ));
                                        },
                                        child: ListTile(
                                          // leading: item.iconpic,
                                          title: Row(
                                            children: <Widget>[
                                              Image.asset(ic_image, height: height*0.10, width: width*0.25),
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
                                            ],
                                          ),
                                          // trailing: Container(
                                          //   height: 35,
                                          //   width: 35,
                                          //   decoration: BoxDecoration(
                                          //
                                          //       color: primaryAppColor,
                                          //       borderRadius:
                                          //       BorderRadius.all(Radius.circular(10))),
                                          //   child: Center(
                                          //     child: Icon(Icons.arrow_forward_ios, color: white),
                                          //   ),
                                          // ),
                                        ),
                                      );
                                    },
                                    isExpanded: item.isExpanded,
                                    body: item.body,
                                  );
                                }).toList(),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: height * 0.02),
                  ]),
            ),
          ),
        ),
      ],
    ));
  }
}

class NewItem {
  bool isExpanded;
  final String header;
  final Widget body;
  final Icon iconpic;

  NewItem(this.isExpanded, this.header, this.body, this.iconpic);
}
