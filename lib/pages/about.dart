import 'package:flutter/material.dart';
import 'package:aplicativo/layout/layout.dart';

class AboutPage extends StatelessWidget{

  static String tag = 'about-page';

  @override
  Widget build(BuildContext context) {
    return Layout.getContent( context, Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/abc.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        )
      ));
  }

}