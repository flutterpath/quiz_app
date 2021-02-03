import 'package:flutter/material.dart';
import 'package:quiz_app/util/color_picker.dart';
import 'package:quiz_app/util/image_picker.dart';
import 'package:quiz_app/util/string.dart';

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: primaryAppColor,
      body: Column(
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
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: height * 0.04),
                    Container(
                      height: height * 0.05,
                      width: width * 0.09,
                      decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Center(
                        child: InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: ImageIcon(
                            AssetImage(back),
                            size: 15.0,
                            color: primaryAppColor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.14,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          Payment,
                          style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                              color: white),
                        ),
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
                    height: height * 0.66,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 18),
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: height * 0.02),
                          Container(
                            height: height * 0.27,
                            width: MediaQuery.of(context).size.width,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 3,
                                itemBuilder: (context, index) {
                                  return Container(
                                      width: width * 0.90,
                                      margin: EdgeInsets.only(right: 21),
                                      padding: EdgeInsets.all(20),
                                      height: height * 0.10,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          gradient: LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                              colors: [
                                                Color(0xff328BFB),
                                                Color(0xff70D8FF)
                                              ])),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Text(
                                                Paymall,
                                                style: TextStyle(
                                                    fontSize: 12.0,
                                                    fontWeight: FontWeight.bold,
                                                    color: white),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: height * 0.02),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                height: height * 0.06,
                                                width: width * 0.17,
                                                decoration: BoxDecoration(
                                                  color: fadeYellow,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(10)),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: height * 0.02),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                Value4,
                                                style: TextStyle(
                                                    fontSize: 12.0,
                                                    fontWeight: FontWeight.bold,
                                                    color: white),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: height * 0.02),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                ValidThru,
                                                style: TextStyle(
                                                    fontSize: 10.0,
                                                    color: white),
                                              ),
                                              SizedBox(width: width * 0.02),
                                              Text(
                                                Value5,
                                                style: TextStyle(
                                                    fontSize: 17.0,
                                                    fontWeight: FontWeight.bold,
                                                    color: white),
                                              ),
                                              SizedBox(width: width * 0.05),
                                              Text(
                                                MemberSince,
                                                style: TextStyle(
                                                    fontSize: 10.0,
                                                    color: white),
                                              ),
                                              SizedBox(width: width * 0.02),
                                              Text(
                                                Value20,
                                                style: TextStyle(
                                                    fontSize: 17.0,
                                                    fontWeight: FontWeight.bold,
                                                    color: white),
                                              ),
                                              SizedBox(width: width * 0.15),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Stack(
                                                    overflow: Overflow.visible,
                                                    children: [
                                                      Stack(
                                                        children: [
                                                          CircleAvatar(
                                                            radius: 19.0,
                                                            backgroundColor:
                                                                Color(
                                                                    0xffFFC85D),
                                                          ),
                                                        ],
                                                      ),
                                                      Positioned(
                                                        left: 20,
                                                        child: Stack(
                                                          children: [
                                                            CircleAvatar(
                                                              radius: 19.0,
                                                              backgroundColor:
                                                                  Color(
                                                                      0xffFF6363),
                                                            ),
                                                          ],
                                                        ),
                                                      )
                                                    ],
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ],
                                      ));
                                }),
                          ),
                          SizedBox(height: height * 0.01),
                          Container(
                              padding: EdgeInsets.all(20),
                              height: height * 0.15,
                              decoration: BoxDecoration(
                                color: white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset: Offset(0, 3), // changes position of shadow
                                  ),
                                ],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        Value4,
                                        style: TextStyle(
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.bold,
                                            color: primaryAppColor),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: height * 0.02),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        ValidThru,
                                        style: TextStyle(
                                            fontSize: 10.0,
                                            color: primaryAppColor),
                                      ),
                                      SizedBox(width: width * 0.02),
                                      Text(
                                        Value5,
                                        style: TextStyle(
                                            fontSize: 17.0,
                                            fontWeight: FontWeight.bold,
                                            color: primaryAppColor),
                                      ),
                                      SizedBox(width: width * 0.05),
                                      Text(
                                        MemberSince,
                                        style: TextStyle(
                                            fontSize: 10.0,
                                            color: primaryAppColor),
                                      ),
                                      SizedBox(width: width * 0.02),
                                      Text(
                                        Value20,
                                        style: TextStyle(
                                            fontSize: 17.0,
                                            fontWeight: FontWeight.bold,
                                            color: primaryAppColor),
                                      ),
                                      SizedBox(width: width * 0.15),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Stack(
                                            overflow: Overflow.visible,
                                            children: [
                                              Stack(
                                                children: [
                                                  CircleAvatar(
                                                    radius: 19.0,
                                                    backgroundColor:
                                                        Color(0xffFFC85D),
                                                  ),
                                                ],
                                              ),
                                              Positioned(
                                                left: 20,
                                                child: Stack(
                                                  children: [
                                                    CircleAvatar(
                                                      radius: 19.0,
                                                      backgroundColor:
                                                          Color(0xffFF6363),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              )),
                          SizedBox(height: height * 0.01),
                          Container(
                              padding: EdgeInsets.all(20),
                              height: height * 0.14,
                              decoration: BoxDecoration(
                                color: white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset: Offset(0, 3), // changes position of shadow
                                  ),
                                ],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Image.asset(Card1,
                                          height: height * 0.08,
                                          width: width * 0.15),
                                      SizedBox(width: width * 0.04),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            Use_Voucher,
                                            style: TextStyle(
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.bold,
                                                color: primaryAppColor),
                                          ),
                                          SizedBox(height: height * 0.01),
                                          Text(
                                            Detail,
                                            style: TextStyle(
                                                fontSize: 12.0,
                                                color: primaryAppColor),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                          SizedBox(height: height * 0.01),
                          Center(
                            child: Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    Total,
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                        color: primaryTextColor),
                                  ),
                                  Text(
                                    Value3,
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                        color: primaryTextColor),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.06,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton(
                  color: primaryAppColor,
                  child: Text(
                    Payment,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: white,
                    ),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
