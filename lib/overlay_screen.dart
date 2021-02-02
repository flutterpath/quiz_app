import 'package:flutter/material.dart';
import 'package:quiz_app/Content_model.dart';
import 'package:quiz_app/util/color_picker.dart';
import 'package:quiz_app/util/image_picker.dart';
import 'package:quiz_app/util/string.dart';


class OverlayScreen extends StatefulWidget {
  @override
  _OverlayScreenState createState() => _OverlayScreenState();
}

class _OverlayScreenState extends State<OverlayScreen> {
  int currentIndex = 0;
  PageController _controller;
  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: white,
      body: Column(
        children: <Widget>[
          Expanded(
              child: PageView.builder(
                controller: _controller,
                  itemCount: contents.length,
                  onPageChanged: (int index){
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  itemBuilder: (_, i){
                    return Padding(
                      padding: const EdgeInsets.all(45),
                      child: Column(
                        children: [
                          Image.asset(
                              contents[i].image,
                               height: height*0.45),

                          Text(
                              contents[i].title,
                              style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: primaryTextColor)
                          ),


                          SizedBox(height: height*0.05),

                          Text(
                              contents[i].discription,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 12.0,
                                  color: primaryTextColor)
                          ),
                        ],
                      ),
                    );
                  }
              )
          ),

          Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    contents.length,
                        (index) => buildDot(index,  context),
                ),
              )
          ),

          Container(
            height: height*0.08,
            width: double.infinity,
            margin: EdgeInsets.all(75),
            child: FlatButton(
              child: Text(currentIndex == contents.length -1 ? Login: Next),
                onPressed: (){
                if(currentIndex == contents.length -1){
                }
                _controller.nextPage(
                    duration: Duration(milliseconds: 100),
                    curve: Curves.bounceIn,
                 );
                },
                color: primaryAppColor,
                textColor: white,
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
                ),
                ),
                )
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
                    height: 10,
                    width: currentIndex == index ? 25 : 10,
                    margin: EdgeInsets.only(right: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: primaryAppColor,
                    ),
                  );
  }
}






