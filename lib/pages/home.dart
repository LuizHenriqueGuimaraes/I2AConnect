import 'package:flutter/material.dart';
import 'package:aplicativo/layout.dart';
import 'package:aplicativo/pages/about.dart';

class HomePage extends StatelessWidget{

  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {

    final content = Center(
      child: Column(
        children: <Widget>[
          Text('Hello World!!'),
          RaisedButton(
            child: Text('Nome do botão'),
            onPressed: (){
              Navigator.of(context).pushNamed(AboutPage.tag);
            },
          ),
          Text('asdasdasdsd'),
        ],

      )

    );
    return Layout.getContent(context, content);
  }

}