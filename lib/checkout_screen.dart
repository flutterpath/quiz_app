import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:quiz_app/payment_screen.dart';
import 'package:quiz_app/util/color_picker.dart';
import 'package:quiz_app/util/image_picker.dart';
import 'package:quiz_app/util/string.dart';

class CheckoutScreen extends StatefulWidget {
  @override
  _CheckoutScreenState createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: primaryAppColor,
      body: Column(
        children: [
          Container(
              height: height*0.32,
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
                    SizedBox(height: height*0.04),
                    Container(
                      height: height*0.05,
                      width: width*0.09,
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
                      height: height*0.14,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          Checkout,
                          style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                              color: white),
                        ),
                        Text(
                          Learning_take,
                          style: TextStyle(
                              fontSize: 10.0,
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
                    height: height*0.64,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      child: Column(
                        children: [
                          ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: 3,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return Card(
                                elevation: 3,
                                child: Container(
                                  // padding: EdgeInsets.symmetric(horizontal: 0.0),
                                  // margin: EdgeInsets.only(top: 15,),
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: white,
                                        blurRadius: 25.0,
                                      ),
                                    ],
                                    color: white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  child: Row(
                                    children: <Widget>[
                                      Image.asset(Ecourse,
                                          height: height*0.11, width: width*0.22),
                                      SizedBox(width: width*0.04),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            English_deep_learn,
                                            style: TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold,
                                              color: primaryAppColor,
                                            ),
                                          ),
                                          SizedBox(height: height*0.01),
                                          Text(
                                            Inside_have_lesson,
                                            style: TextStyle(
                                              fontSize: 10.0,
                                              color: primaryTextColor,
                                            ),
                                          ),
                                          SizedBox(height: height*0.01),
                                          Row(
                                            children: [
                                              RatingBar.builder(
                                                itemSize: 15,
                                                initialRating: 1,
                                                direction: Axis.horizontal,
                                                allowHalfRating: true,
                                                itemCount: 5,
                                                itemPadding: EdgeInsets.symmetric(
                                                    horizontal: 2.0),
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
                                      SizedBox(width: width*0.05),
                                      Column(
                                        children: [
                                          Container(
                                            width: width*0.10,
                                            height: height*0.05,
                                            decoration: BoxDecoration(
                                                color: primaryAppColor,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(40))),
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 6),
                                                  child: Icon(Icons.remove,color: white,),
                                                ),
                                                // Center(
                                                //   child: Text(
                                                //     Value1,
                                                //     style: TextStyle(
                                                //         fontSize: 22,
                                                //         color: white,
                                                //         fontWeight: FontWeight.bold),
                                                //   ),
                                                // ),
                                                SizedBox(height: height*0.01),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: height*0.01),
                                          Text(
                                            "7,92\$",
                                            style: TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold,
                                              color: primaryAppColor,
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),

                          SizedBox(height: height*0.02),

                          Container(
                            padding: EdgeInsets.zero,
                            height: height*0.12,
                            child: ListView.builder(
                              padding: EdgeInsets.zero,
                              itemCount: 3,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index){
                                return Card(
                                    color: white,
                                    elevation: 5.0,
                                    child: SizedBox(
                                        width: width*0.85,
                                        height: height*0.15,
                                        child:
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                                              child: Image.asset(Card1),
                                            ),

                                            SizedBox(width: width*0.01),

                                            Padding(
                                              padding: const EdgeInsets.only(top: 12),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(Credit_Card,
                                                    style: TextStyle(
                                                        fontSize: 18.0,
                                                        fontWeight: FontWeight.bold,
                                                        color: primaryAppColor),
                                                  ),
                                                  SizedBox(height: height*0.02),
                                                  Text(Detail2,
                                                    style: TextStyle(
                                                        fontSize: 12.0,
                                                        color: primaryAppColor),),
                                                ],
                                              ),
                                            ),
                                          ],
                                        )
                                    )
                                );
                              }
                            ),
                          ),

                          SizedBox(height: height*0.02),

                          Container(

                            child: Row(
                              children: [
                                Text(Total,
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: primaryTextColor),
                                ),

                                SizedBox(width: width*0.60),

                                Text(Value3,
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: primaryTextColor),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                ),
              ],
            ),
          ),
          SizedBox(
            height: height*0.07,
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
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => PaymentScreen(),
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



