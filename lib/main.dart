import 'package:flutter/material.dart';
import 'package:aplicativo/pages/home.dart';
import 'package:aplicativo/pages/about.dart';
import 'package:aplicativo/pages/list_view.dart';
import 'package:aplicativo/pages/login.dart';

void main() => runApp(Aplicativo());

class Aplicativo extends StatelessWidget{

  final routes = <String, WidgetBuilder>{
    HomePage.tag: (context) => HomePage(),
    AboutPage.tag: (context) => AboutPage(),
    ListViewPage.tag: (context) => ListViewPage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          bottomAppBarColor: Color(0xFF244767),
          primaryColor: Color(0xFF244767),
          accentColor: Colors.black45,
          textTheme: TextTheme(
            headline: TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
            title: TextStyle(fontSize: 36, fontStyle: FontStyle.italic, color: Colors.white),
            body1: TextStyle(fontSize: 14, color: Colors.black),
          )
      ),
      home: LoginPage(),//LayoutNavigation(),
      routes: routes,
    );
  }

}