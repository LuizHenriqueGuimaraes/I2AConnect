import 'package:flutter/material.dart';
import 'package:aplicativo/pages/home.dart';
import 'package:aplicativo/pages/list_view.dart';
import 'package:aplicativo/pages/resultado.dart';

import 'package:aplicativo/pages/pesquisa.dart';

class LayoutNavigation extends StatefulWidget{

  static LayoutNavigationState state = null;

  @override
  State<StatefulWidget> createState() {
    state = LayoutNavigationState();
    return state;
  }

}

class LayoutNavigationState extends State<LayoutNavigation>{

  int currentIndex = 0;
  final List<Widget> pages = [
    PesquisaPage(),
    HomePage(),
    ResultadoViewPage(),
  ];

  static Widget pagina_corrente = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(child: Text("I²A CONNECT")),
      ),

      body: (pagina_corrente != null) ? pagina_corrente : pages[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(icon: new Icon(Icons.search), title: new Text('Pesquisa'),),
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
      pagina_corrente = pages[index];
    });
  }

}
