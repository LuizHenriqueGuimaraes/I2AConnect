import 'package:flutter/material.dart';
import 'package:aplicativo/pages/home.dart';
import 'package:aplicativo/pages/about.dart';
import 'package:aplicativo/pages/list_view.dart';

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
      title: 'Título do Aplicativo',
      theme: ThemeData(
        primaryColor: Colors.black,
        accentColor: Colors.black45,
        textTheme: TextTheme(
          headline: TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
          title: TextStyle(fontSize: 36, fontStyle: FontStyle.italic, color: Colors.white),
          body1: TextStyle(fontSize: 14, color: Colors.black),
        )
      ),
      home: HomePage(),
      routes: routes,
    );
  }

}