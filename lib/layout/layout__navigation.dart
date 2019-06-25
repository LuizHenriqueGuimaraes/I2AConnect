import 'package:flutter/material.dart';
import 'package:aplicativo/pages/home.dart';
import 'package:aplicativo/pages/list_view.dart';
import 'package:aplicativo/pages/resultado.dart';

class LayoutNavigation extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return LayoutNavigationState();
  }

}

class LayoutNavigationState extends State<LayoutNavigation>{

  int currentIndex = 0;
  final List<Widget> pages = [
    HomePage(),
    ListViewPage(),
    ResultadoViewPage(),
    ListViewPage(),
    //ResultadoViewPage(),
    //ListViewWidget(),ListViewWidget(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("I²A CONNECT"),
      ),

      body: pages[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(icon: new Icon(Icons.home), title: new Text('Home'),),
          BottomNavigationBarItem(icon: new Icon(Icons.mail), title: new Text('Messages'),),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('Profile')),
        ],
        onTap: (index){
          onTabTapped(index);
        },
      ),
    );
  }

  void onTabTapped(int index){
    setState(() {
      currentIndex = index;
    });
  }

}
