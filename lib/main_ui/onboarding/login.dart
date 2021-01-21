import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:quiz_app/utils/colorsPicker.dart';
import 'package:quiz_app/utils/image.helper.dart';
import 'package:quiz_app/utils/string.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: height * 0.30,
              width: width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(bgImage),
                  fit: BoxFit.fill,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          eLearning,
                          style: TextStyle(
                              color: white,
                              fontFamily: "Montserrat-Bold",
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30,left: 10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          login,
                          // textAlign: TextAlign.left,
                          style: TextStyle(
                              color:white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: height * 0.3,
              child: Stack(
                overflow: Overflow.visible,
                children: [
                  Positioned(
                    top: -20,
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                          color: white,
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(30))),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            SizedBox(height: 16),
                            Text(
                              loremIpsumDolor,
                              style: TextStyle(fontSize: 12),
                            ),
                            SizedBox(height: 20),
                            TextFormField(
                              style: TextStyle(
                                fontSize: 14,
                                color: primaryTextColor,
                              ),
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: primaryAppColor, width: 1.0),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                  //borderSide: BorderSide.none,
                                ),
                                hintText: jhanedoe,
                                hintStyle: TextStyle(
                                  color: primaryTextColor,
                                ),
                              ),
                            ),
                            SizedBox(height: 16),
                            TextFormField(
                              obscureText: true,
                              style: TextStyle(
                                fontSize: 14,
                                color: primaryTextColor,
                              ),
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: primaryAppColor, width: 1.0),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                  //borderSide: BorderSide.none,
                                ),
                                hintText: point,
                                hintStyle: TextStyle(
                                  color: primaryTextColor,
                                ),
                              ),
                            ),
                            // SizedBox(height: 15),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MaterialButton(
                  minWidth: width * 0.40,
                  height: 60,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  color: primaryAppColor,
                  child: Text(
                    register,
                    style: TextStyle(
                      fontSize: 16,
                      color: white,
                    ),
                  ),
                ),
                MaterialButton(
                  minWidth: width * 0.40,
                  height: 60,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  color: primaryAppColor,
                  child: Text(
                    register,
                    style: TextStyle(
                      fontSize: 16,
                      color: white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            Text(
              forgotPassword,
              style: TextStyle(
                fontSize: 16,
                color: primaryTextColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
