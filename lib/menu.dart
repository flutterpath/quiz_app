import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/utils/colorsPicker.dart';
import 'package:quiz_app/utils/image.helper.dart';
import 'package:quiz_app/utils/string.dart';

import 'menuBarListTile.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            child: Column(
              children: [
                Stack(
                  overflow: Overflow.visible,
                  children: [
                    Container(
                      height: height*0.28,
                      width: width,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              menuBgImage),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: CircleAvatar(
                          radius: 70.0,
                          child: Text(dummyImageText,style: TextStyle(color: white),),
                          backgroundColor: primaryTextColor,
                        ),
                      ),
                    ),
                    ImageIcon(
                      AssetImage(ic_arrow),color: primaryAppColor,
                    ),
                    Align(alignment: Alignment.centerRight,
                        child:  Image.asset(ic_logout,scale: 16,)),
                  ],
                ),
                Text(amandaRoman,style: TextStyle(
                  color: primaryTextColor,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                )),
                SizedBox(height: height*0.05),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[350],
                        blurRadius: 15.0,
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Align(alignment: Alignment.centerLeft,
                            child: Text(security,style: TextStyle(fontSize: 16,),)),
                        SizedBox(height: 25),
                        MenuBarListTile(image: ic_changeSecurity,title: changeSecurity,),
                        Divider(color: Colors.grey[400],height: 25,),
                        MenuBarListTile(image: ic_changePassword,title: changePassword,),
                        Divider(color: Colors.grey[400],height: 25,),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[350],
                        blurRadius: 15.0,
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Align(alignment: Alignment.centerLeft,
                            child: Text(about,style: TextStyle(fontSize: 16,),)),
                        SizedBox(height: 25),
                        MenuBarListTile(image: ic_appsInfo,title: appsInfo,),
                        Divider(color: Colors.grey[400],height: 25,),
                        MenuBarListTile(image: ic_appsSetting,title: appsSetting,),
                        Divider(color: Colors.grey[400],height: 25,),
                        MenuBarListTile(image: ic_termAnd,title: termAndAgreement,),
                        Divider(color: Colors.grey[400],height: 25,),
                        MenuBarListTile(image: ic_privacyPolicy,title: privacyPolicy,),
                        Divider(color: Colors.grey[400],height: 25,),
                        MenuBarListTile(image: ic_helpCenter,title: helpCenter,),
                        Divider(color: Colors.grey[400],height: 25,),
                        SizedBox(height: 15,),
                        Text(versionCopyRight,style: TextStyle(fontSize: 12,color: Colors.grey[500]),),
                        SizedBox(height: 10),
                        Text(eLearning,style: TextStyle(fontSize: 21,color: primaryAppColor,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
