import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Detailquiz2 extends StatefulWidget {
  @override
  _Detailquiz2State createState() => _Detailquiz2State();
}

class _Detailquiz2State extends State<Detailquiz2> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Column(
        children: [
          Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: AssetImage("images/bgImage1.png"),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(30.0, 20.0, 0.0, 0.0),
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: Center(
                        child: ImageIcon(
                          AssetImage("images/back.png"),
                          size: 15.0,
                          color: Colors.blueAccent,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                          padding: EdgeInsets.fromLTRB(30.0, 60.0, 180.0, 0.0),
                          child:Text("Quiz 1",
                            style: TextStyle(
                                fontFamily: "Montserrat-Black",
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )
                      ),

                      Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 65.0, 0.0, 0.0),
                        child: LinearPercentIndicator(
                          width: 140.0,
                          lineHeight: 5.0,
                          percent: 0.6,
                          backgroundColor: Colors.white,
                          progressColor: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ],
              )
          ),
          Expanded(
            child: Stack(
              overflow: Overflow.visible,
              children: [
                Positioned(
                    top: -90,
                    left: 0,
                    right: 0,
                    bottom: 10,
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                            child: Row(
                              children: [
                                Container(
                                  height: 55,
                                  width: 55,
                                  decoration: BoxDecoration(
                                    color: Colors.blueAccent,
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "11",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18.0,
                                          fontFamily: "Montserrat-Black",
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                                  color: Colors.white,
                                  height: 45,

                                  child: Center(
                                    child: Text(
                                      "Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          height: 2.0,
                                          fontFamily: "Montserrat-Black"),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 12),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 5.0),
                            height: 100.0,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        child: Image.asset("images/Frame.png",
                                            width: 100),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                                  color: Colors.white,
                                  height: 45,

                                  child: Center(
                                    child: Text(
                                      "Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          height: 2.0,
                                          fontFamily: "Montserrat-Black"),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        child: Image.asset("images/Frameb.png",
                                            width: 100),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                                  color: Colors.white,
                                  height: 45,

                                  child: Center(
                                    child: Text(
                                      "Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          height: 2.0,
                                          fontFamily: "Montserrat-Black"),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 12),
                          Container(
                            padding: EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                            child: Row(
                              children: [
                                Container(
                                  height: 55,
                                  width: 55,
                                  decoration: BoxDecoration(
                                    color: Colors.blueAccent,
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "12",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18.0,
                                          fontFamily: "Montserrat-Black",
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                                  color: Colors.white,
                                  height: 45,

                                  child: Center(
                                    child: Text(
                                      "Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          height: 2.0,
                                          fontFamily: "Montserrat-Black"),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 12),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 5.0),
                            height: 100.0,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        child: Image.asset("images/Frame.png",
                                            width: 100),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                                  color: Colors.white,
                                  height: 45,

                                  child: Center(
                                    child: Text(
                                      "Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          height: 2.0,
                                          fontFamily: "Montserrat-Black"),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        child: Image.asset("images/Frameb.png",
                                            width: 100),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                                  color: Colors.white,
                                  height: 45,

                                  child: Center(
                                    child: Text(
                                      "Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          height: 2.0,
                                          fontFamily: "Montserrat-Black"),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 12),
                          Container(
                            padding: EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                            child: Row(
                              children: [
                                Container(
                                  height: 55,
                                  width: 55,
                                  decoration: BoxDecoration(
                                    color: Colors.blueAccent,
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "13",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18.0,
                                          fontFamily: "Montserrat-Black",
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                                  color: Colors.white,
                                  height: 45,

                                  child: Center(
                                    child: Text(
                                      "Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          height: 2.0,
                                          fontFamily: "Montserrat-Black"),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 12),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 5.0),
                            height: 100.0,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        child: Image.asset("images/Frame.png",
                                            width: 100),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                                  color: Colors.white,
                                  height: 45,

                                  child: Center(
                                    child: Text(
                                      "Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          height: 2.0,
                                          fontFamily: "Montserrat-Black"),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        child: Image.asset("images/Frameb.png",
                                            width: 100),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                                  color: Colors.white,
                                  height: 45,

                                  child: Center(
                                    child: Text(
                                      "Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          height: 2.0,
                                          fontFamily: "Montserrat-Black"),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                    )
                )
              ],
            ),
          ),
          SizedBox(
            height: 60.0,
            child: Padding(
              padding: EdgeInsets.fromLTRB(270.0, 0.0, 0.0, 0.0),
              child: Container(
                constraints: BoxConstraints(maxWidth: 120.0, minHeight: 50.0),
                margin: EdgeInsets.all(15),
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.blueAccent,
                  child: Padding(
                    padding: EdgeInsets.all(0),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Next',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontFamily: "Montserrat-Black"
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

