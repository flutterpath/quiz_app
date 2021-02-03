import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/main_ui/onboarding/login.dart';
import 'package:quiz_app/utils/colorsPicker.dart';
import 'package:quiz_app/utils/image.helper.dart';
import 'package:quiz_app/utils/string.dart';
import 'package:url_launcher/url_launcher.dart';

import 'menuBarListTile.dart';

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
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
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: ImageIcon(
                        AssetImage(ic_arrow),color: primaryAppColor,
                      ),
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
                        GestureDetector(child: MenuBarListTile(image: ic_changeSecurity,title: changeSecurity,),onTap: _launchURL),
                        Divider(color: Colors.grey[400],height: 25,),
                        GestureDetector(child: MenuBarListTile(image: ic_changePassword,title: changePassword,),onTap: _launchURL),
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
                        GestureDetector(child: MenuBarListTile(image: ic_appsInfo,title: appsInfo,),onTap: _launchURL,),
                        Divider(color: Colors.grey[400],height: 25,),
                        GestureDetector(child: MenuBarListTile(image: ic_appsSetting,title: appsSetting,),onTap: _launchURL,),
                        Divider(color: Colors.grey[400],height: 25,),
                        GestureDetector(child: MenuBarListTile(image: ic_termAnd,title: termAndAgreement,),onTap: _launchURL,),
                        Divider(color: Colors.grey[400],height: 25,),
                        GestureDetector(child: MenuBarListTile(image: ic_privacyPolicy,title: privacyPolicy,),onTap: _launchURL,),
                        Divider(color: Colors.grey[400],height: 25,),
                        GestureDetector(child: MenuBarListTile(image: ic_helpCenter,title: helpCenter,),onTap: _launchURL,),
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
  _launchURL() async {
    const url = 'https://flutter.dev';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
