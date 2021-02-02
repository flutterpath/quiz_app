import 'package:flutter/material.dart';
import 'package:quiz_app/util/color_picker.dart';
import 'package:quiz_app/util/image_picker.dart';
import 'package:quiz_app/util/string.dart';

class AboutScreen extends StatefulWidget {
  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: white,
      body: Column(children: [
        Container(
          height: height*0.26,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fitWidth,
              image: AssetImage(bgImage1),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(22),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      Assingment1,
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: white),
                    ),
                    Text(
                      Date,
                      style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                          color: white),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: height*0.03),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(25.0, 15.0, 0.0, 0.0),
                  child: Text(
                    About,
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: primaryTextColor),
                  ),
                ),
                SizedBox(height: height*0.05),
                Container(
                  padding: EdgeInsets.fromLTRB(25.0, 15.0, 0.0, 0.0),
                  child: Text(
                    Detail3,
                    style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.normal,
                        color: primaryTextColor),
                  ),
                ),
                SizedBox(height: height*0.03),

                Stack(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(25.0, 15.0, 0.0, 0.0),
                      child: Card(
                        color: white,
                        margin: const EdgeInsets.only(top: 20.0),
                        child: SizedBox(
                            height: height*0.25,
                            width: width*0.90,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 135.0, right: 35, left: 42.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    Add_File,
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.bold,
                                        color: primaryAppColor),
                                  ),
                                ],
                              ),
                            )),
                      ),
                    ),
                    Positioned(
                        height: height*0.22,
                        width: width*0.88,
                        right: .0,
                        bottom: 15.0,
                      child: Center(
                        child: CircleAvatar(
                          backgroundColor: white,
                          radius: 30.0,
                          child: IconButton(icon: Icon(Icons.add),
                            color: primaryAppColor,
                            iconSize: 35.0,
                            onPressed: (){},
                        ),
                      ),
                    )
                    )
                  ],
                ),


                SizedBox(height: height*0.03),
                Container(
                  padding: EdgeInsets.fromLTRB(300.0, 15.0, 0.0, 0.0),
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                    height: 60.0,
                    minWidth: 110.0,
                    color: primaryAppColor,
                    textColor: white,
                    child: Text(Submit),
                    onPressed: () => {},
                  )
                ),
              ],
            ),
          ],
        ),
      ]),
    );
  }
}


