import 'package:flutter/material.dart';

class Detailquiz extends StatefulWidget {
  @override
  _DetailquizState createState() => _DetailquizState();
}

class _DetailquizState extends State<Detailquiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Column(
        children: [
          Container(
              height: 260,
              child: Image.asset(
                "images/bgImage.png",
                fit: BoxFit.cover,
                width: 450,
              )),
          Expanded(
            child: Stack(
              overflow: Overflow.visible,
              children: [
                Positioned(
                    top: -35,
                    left: 0,
                    right: 0,
                    bottom: 10,
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(30.0, 32.0, 10.0, 0.0),
                            child: Row(
                              children: <Widget>[
                                Image.asset("images/Information.png",
                                    width: 100.0),
                                SizedBox(width: 25),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Question",
                                      style: TextStyle(
                                        fontFamily: "Montserrat-Black",
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blueAccent,
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      "50 minutes processing time",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      "2 times chance",
                                      style: TextStyle(
                                        fontFamily: "Montserrat-Black",
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blueAccent,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 35, horizontal: 30),
                            child: Text(
                              "Friends who ready",
                              style: TextStyle(
                                fontFamily: "Montserrat-Black",
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff515151),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Stack(
                                overflow: Overflow.visible,
                                children: [
                                  Stack(
                                    children: [
                                      CircleAvatar(
                                        radius: 30.0,
                                        child: Text(
                                          'Dummy\nImage',
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 11, fontFamily: "Montserrat-Black"),
                                        ),
                                        backgroundColor: Color(0xff515151),
                                      ),
                                    ],
                                  ),
                                  Positioned(
                                    left: 50,
                                    child: Stack(
                                      children: [
                                        CircleAvatar(
                                          radius: 30.0,
                                          child: Text(
                                            'Dummy\nImage',
                                            style: TextStyle(
                                                color: Colors.white, fontSize: 11, fontFamily: "Montserrat-Black"),
                                          ),
                                          backgroundColor: Color(0xff515151),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    left: 95,
                                    child: Stack(
                                      children: [
                                        CircleAvatar(
                                          radius: 30.0,
                                          child: Text(
                                            'Dummy\nImage',
                                            style: TextStyle(
                                                color: Colors.white, fontSize: 11, fontFamily: "Montserrat-Black"),
                                          ),
                                          backgroundColor: Color(0xff515151),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    left: 140 ,
                                    child: Stack(
                                      children: [
                                        CircleAvatar(
                                          radius: 30.0,
                                          child: Text(
                                            'Dummy\nImage',
                                            style: TextStyle(
                                                color: Colors.white, fontSize: 11, fontFamily: "Montserrat-Black"),
                                          ),
                                          backgroundColor: Color(0xff515151),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 05,
                              ),
                              RichText(
                                text: TextSpan(
                                  text: '60+ ',
                                  style: TextStyle(
                                      fontSize: 24, color: Color(0xff515151)),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'online',
                                        style: TextStyle(fontSize: 14,
                                            color: Color(0xff515151))),
                                    TextSpan(
                                        text: '\nFriends',
                                        style: TextStyle(
                                            fontSize: 24,
                                            color: Color(0xff515151),
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(30.0, 32.0, 10.0, 0.0),
                            child: Text(
                              "About",
                              style: TextStyle(
                                  fontFamily: "Montserrat-Black",
                                  fontSize: 18.0,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(30.0, 32.0, 10.0, 0.0),
                            child: Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit,\nsed do eiusmod tempor incididunt ut labore et dolore\nmagna aliqua. Ut enim",
                                style: TextStyle(
                                  fontFamily: "Montserrat-Black",
                                  fontSize: 12.0,
                                  color: Colors.black54,
                                )),
                          ),
                        ],
                      ),
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 55.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton(
                  color: Colors.blueAccent,
                  child: Text(
                    "Ready",
                    style: TextStyle(
                      fontFamily: "Montserrat-Black",
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
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
