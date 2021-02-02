import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:quiz_app/util/color_picker.dart';
import 'package:quiz_app/util/image_picker.dart';
import 'package:quiz_app/util/string.dart';

class Detailquiz2 extends StatefulWidget {
  final double _expendedBottomSheetBottomPosition = 0;
  final double _collapsedBottomSheetBottomPosition = -250;
  final double _completeCollapsedBottomSheetBottomPosition = -330;

  @override
  _Detailquiz2State createState() => _Detailquiz2State();
}

class _Detailquiz2State extends State<Detailquiz2>
    with AfterLayoutMixin<Detailquiz2> {
  double _bottomSheetBottomPosition = -330;
  bool isCollapsed = false;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: primaryAppColor,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            child: Column(
              children: [
                Container(
                    height: height * 0.32,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: AssetImage(bgImage1),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(30.0, 20.0, 0.0, 0.0),
                          child: Container(
                            height: height * 0.04,
                            width: width * 0.08,
                            decoration: BoxDecoration(
                                color: white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Center(
                              child: InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: ImageIcon(
                                  AssetImage(back),
                                  size: 14.0,
                                  color: primaryAppColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: height * 0.08),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 28),
                                child: Text(
                                  Quiz1,
                                  style: TextStyle(
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.bold,
                                      color: white),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: width * 0.32),
                                child: LinearPercentIndicator(
                                  width: width * 0.30,
                                  lineHeight: 5.0,
                                  percent: 0.6,
                                  backgroundColor: Colors.grey,
                                  progressColor: white,
                                ),
                              ),
                              Text("50:00",style: TextStyle(fontSize: 12,color: white),)
                            ],
                          ),
                        ),
                      ],
                    )),
                Expanded(
                  child: Stack(
                    overflow: Overflow.visible,
                    children: [
                      Positioned(
                          height: height * 0.72,
                          left: 0,
                          right: 0,
                          bottom: 10,
                          child: Container(
                            width: double.infinity,
                            alignment: Alignment.center,
                            padding: EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
                            decoration: BoxDecoration(
                              color: white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  padding:
                                      EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: height * 0.06,
                                        width: width * 0.12,
                                        decoration: BoxDecoration(
                                          color: primaryAppColor,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                        ),
                                        child: Center(
                                          child: Text(
                                            Eleven,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18.0,
                                                color: white),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: width * 0.01),
                                      Container(
                                        padding: EdgeInsets.fromLTRB(
                                            20.0, 0.0, 0.0, 0.0),
                                        color: white,
                                        height: height * 0.06,
                                        child: Center(
                                          child: Text(
                                            Detail,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                fontSize: 12.0,
                                                height: 2.0,
                                                color: primaryTextColor,
                                                fontFamily:
                                                    "Montserrat-Regular"),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: height * 0.01),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 5.0),
                                  height: height * 0.12,
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: <Widget>[
                                      Container(
                                        padding: EdgeInsets.fromLTRB(
                                            30.0, 0.0, 0.0, 0.0),
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              child: Image.asset(FrameA,
                                                  width: width * 0.23),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: width * 0.01),
                                      Container(
                                        padding: EdgeInsets.fromLTRB(
                                            20.0, 0.0, 0.0, 0.0),
                                        color: white,
                                        height: height * 0.18,
                                        child: Center(
                                          child: Text(
                                            Detail,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                fontSize: 12.0,
                                                height: 2.0,
                                                fontFamily:
                                                    "Montserrat-Regular"),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.fromLTRB(
                                            30.0, 0.0, 0.0, 0.0),
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              child: Image.asset(FrameB,
                                                  width: width * 0.23),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: width * 0.01),
                                      Container(
                                        padding: EdgeInsets.fromLTRB(
                                            20.0, 0.0, 0.0, 0.0),
                                        color: white,
                                        height: height * 0.18,
                                        child: Center(
                                          child: Text(
                                            Detail,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                fontSize: 12.0,
                                                height: 2.0,
                                                fontFamily:
                                                    "Montserrat-Regular"),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: height * 0.02),
                                Container(
                                  padding:
                                      EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: height * 0.06,
                                        width: width * 0.12,
                                        decoration: BoxDecoration(
                                          color: primaryAppColor,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                        ),
                                        child: Center(
                                          child: Text(
                                            Twelve,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18.0,
                                                fontFamily:
                                                    "Montserrat-Regular",
                                                color: white),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: width * 0.01),
                                      Container(
                                        padding: EdgeInsets.fromLTRB(
                                            20.0, 0.0, 0.0, 0.0),
                                        color: white,
                                        height: height * 0.06,
                                        child: Center(
                                          child: Text(
                                            Detail,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                fontSize: 12.0,
                                                height: 2.0,
                                                fontFamily:
                                                    "Montserrat-Regular"),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: height * 0.01),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 5.0),
                                  height: height * 0.12,
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: <Widget>[
                                      Container(
                                        padding: EdgeInsets.fromLTRB(
                                            30.0, 0.0, 0.0, 0.0),
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              child: Image.asset(FrameA,
                                                  width: width * 0.23),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: width * 0.01),
                                      Container(
                                        padding: EdgeInsets.fromLTRB(
                                            20.0, 0.0, 0.0, 0.0),
                                        color: white,
                                        height: height * 0.25,
                                        child: Center(
                                          child: Text(
                                            Detail,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                fontSize: 12.0,
                                                height: 2.0,
                                                fontFamily:
                                                    "Montserrat-Regular"),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.fromLTRB(
                                            30.0, 0.0, 0.0, 0.0),
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              child: Image.asset(FrameB,
                                                  width: width * 0.23),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: width * 0.01),
                                      Container(
                                        padding: EdgeInsets.fromLTRB(
                                            20.0, 0.0, 0.0, 0.0),
                                        color: white,
                                        height: height * 0.07,
                                        child: Center(
                                          child: Text(
                                            Detail,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                fontSize: 12.0,
                                                height: 2.0,
                                                fontFamily:
                                                    "Montserrat-Regular"),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: height * 0.01),
                                Container(
                                  padding:
                                      EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: height * 0.06,
                                        width: width * 0.12,
                                        decoration: BoxDecoration(
                                          color: primaryAppColor,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                        ),
                                        child: Center(
                                          child: Text(
                                            Thirteen,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18.0,
                                                fontFamily:
                                                    "Montserrat-Regular",
                                                color: white),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: width * 0.01),
                                      Container(
                                        padding: EdgeInsets.fromLTRB(
                                            20.0, 0.0, 0.0, 0.0),
                                        color: white,
                                        height: height * 0.07,
                                        child: Center(
                                          child: Text(
                                            Detail,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                fontSize: 12.0,
                                                height: 2.0,
                                                fontFamily:
                                                    "Montserrat-Regular"),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: height * 0.01),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 5.0),
                                  height: height * 0.12,
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: <Widget>[
                                      Container(
                                        padding: EdgeInsets.fromLTRB(
                                            30.0, 0.0, 0.0, 0.0),
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              child: Image.asset(FrameA,
                                                  width: width * 0.23),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: width * 0.01),
                                      Container(
                                        padding: EdgeInsets.fromLTRB(
                                            20.0, 0.0, 0.0, 0.0),
                                        color: white,
                                        height: height * 0.05,
                                        child: Center(
                                          child: Text(
                                            Detail,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                fontSize: 12.0,
                                                height: 2.0,
                                                fontFamily:
                                                    "Montserrat-Regular"),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.fromLTRB(
                                            30.0, 0.0, 0.0, 0.0),
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              child: Image.asset(FrameB,
                                                  width: width * 0.23),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: height * 0.01),
                                      Container(
                                        padding: EdgeInsets.fromLTRB(
                                            20.0, 0.0, 0.0, 0.0),
                                        color: white,
                                        height: height * 0.13,
                                        child: Center(
                                          child: Text(
                                            Detail,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                fontSize: 12.0,
                                                height: 2.0,
                                                fontFamily:
                                                    "Montserrat-Regular"),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.06,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(270.0, 0.0, 0.0, 0.0),
                    child: RaisedButton(
                      onPressed: () {},
                      color: primaryAppColor,
                      child: Padding(
                        padding: EdgeInsets.all(0),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[],
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 500),
            curve: Curves.bounceInOut,
            bottom: _bottomSheetBottomPosition,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: _onTap,
                    child: Container(
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.symmetric(horizontal: 32),
                      height: 80,
                      child: Text("Next >",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white,
                          )),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: _clipWidget(),
                  )
                ],
              ),
            ),
          ),

          // DraggableScrollableSheet(
          //   expand: true,
          //   initialChildSize: 0.1,
          //   minChildSize: 0.1,
          //   maxChildSize: 0.8,
          //   builder: (BuildContext context, ScrollController scrollController) {
          //     return Container(
          //       decoration: BoxDecoration(
          //         borderRadius: BorderRadius.only(
          //             topRight: Radius.circular(30),
          //             topLeft: Radius.circular(30)),
          //         color: primaryAppColor,
          //       ),
          //       child: Column(
          //         children: [
          //           Row(
          //             crossAxisAlignment: CrossAxisAlignment.center,
          //             mainAxisAlignment: MainAxisAlignment.spaceAround,
          //             children: [
          //               SizedBox(width: 115),
          //               Container(
          //                 margin: EdgeInsets.only(top: 2.0),
          //                 height: 5,
          //                 width: 90,
          //                 decoration: BoxDecoration(
          //                   borderRadius: BorderRadius.circular(10),
          //                   color: Colors.white,
          //                 ),
          //               ),
          //               Container(
          //                   margin: EdgeInsets.only(top: 26),
          //                   child: Row(
          //                   children: [
          //                     FlatButton(
          //                       onPressed: (){},
          //                       child: Text("Next",
          //                       style: TextStyle(
          //                         fontSize: 18,
          //                         fontWeight: FontWeight.bold,
          //                         color: white,
          //                       ),),),
          //
          //                   SizedBox(width: 2),
          //                   Icon(Icons.navigate_next,
          //                     color: Colors.white,
          //                     size: 30,),
          //                 ],
          //               )),
          //             ],
          //           ),
          //           SizedBox(
          //             height: 5,
          //             child: GridView.count(
          //               semanticChildCount: 10,
          //               padding: const EdgeInsets.all(80),
          //               crossAxisSpacing: 20,
          //               mainAxisSpacing: 20,
          //               crossAxisCount: 3,
          //               children: <Widget>[
          //                 Container(
          //                   padding: const EdgeInsets.all(8),
          //                   child: Center(
          //                       child: const Text(
          //                     "1",
          //                     style: TextStyle(
          //                       color: Colors.blueAccent,
          //                       fontWeight: FontWeight.bold,
          //                       fontSize: 18.0,
          //                     ),
          //                   )),
          //                   color: white,
          //                 ),
          //
          //               ],
          //             ),
          //           ),
          //         ],
          //       ),
          //     );
          //   },
          // ),
        ],
      ),
    );
  }

  Widget _clipWidget() {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(left: 30),
      height: 250,
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              roundedContainer("1"),
              SizedBox(height: 20),
              roundedContainer("2"),
              SizedBox(height: 20),
              roundedContainer("3"),
            ],
          ),
          SizedBox(width: 16),
          Column(
            children: <Widget>[
              roundedContainer("4"),
              SizedBox(height: 20),
              roundedContainer("5"),
              SizedBox(height: 20),
              roundedContainer("6"),
            ],
          ),
          SizedBox(width: 16),
          Column(
            children: <Widget>[
              roundedContainer("7"),
              SizedBox(height: 20),
              roundedContainer("8"),
              SizedBox(height: 20),
              roundedContainer("9"),
            ],
          ),
          SizedBox(width: 16),
          Column(
            children: <Widget>[
              roundedContainer("10"),
              SizedBox(height: 20),
              roundedContainer("11"),
              SizedBox(height: 20),
              roundedContainer("12"),
            ],
          ),
          SizedBox(width: 16),
          Column(
            children: <Widget>[
              roundedContainer("13"),
              SizedBox(height: 20),
              roundedContainer("14"),
              SizedBox(height: 20),
              roundedContainer("15"),
            ],
          ),
        ],
      ),
    );
  }

  Widget roundedContainer(String title) {
    return Container(
      alignment: Alignment.center,
      width: 55,
      height: 55,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Text(
        title,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }

  _onTap() {
    setState(() {
      _bottomSheetBottomPosition = isCollapsed
          ? widget._expendedBottomSheetBottomPosition
          : widget._collapsedBottomSheetBottomPosition;
      isCollapsed = !isCollapsed;
    });
  }

  @override
  void afterFirstLayout(BuildContext context) {
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        isCollapsed = true;
        _bottomSheetBottomPosition = widget._collapsedBottomSheetBottomPosition;
      });
    });
  }
}
