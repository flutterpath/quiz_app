import 'package:flutter/material.dart';
import 'package:quiz_app/utils/colorsPicker.dart';
import 'package:url_launcher/url_launcher.dart';

class MenuBarListTile extends StatelessWidget {
  final String image ;
  final String title;

  const MenuBarListTile({Key key, this.image, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(image,height: 45,color: primaryAppColor,),
        Text(title,style: TextStyle(fontSize: 14,color: primaryTextColor),),
        Icon(Icons.arrow_forward,color: primaryTextColor,),
        // Divider(color: Colors.red,thickness: 10,height: 5,endIndent: 20,),
      ],

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
