import 'package:flutter/material.dart';
import 'package:aplicativo/pages/home.dart';
import 'package:aplicativo/pages/about.dart';
import 'package:aplicativo/pages/list_view.dart';

class Layout{

  static int currItem = 0;
  /*Páginas onde serão chamadas na navigation Bar - Necessário importar as páginas da pasta package*/
  static final pages = [
    HomePage.tag,
    AboutPage.tag,
    ListViewPage.tag,
  ];

  static Scaffold getContent(BuildContext context, content){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(
          child: Text('Título Default'),
        ),
      ),
      body: content,
      backgroundColor: Colors.redAccent,
      bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home),title: Text('Home')),
        BottomNavigationBarItem(icon: Icon(Icons.forum),title: Text('Mensagem')),
        BottomNavigationBarItem(icon: Icon(Icons.send),title: Text('Enviar')),
        BottomNavigationBarItem(icon: Icon(Icons.settings),title: Text('Configuração')),
      ],
      onTap: (int i){
        if(i != currItem) {/*Não precisa empilhar uma tela que ja está no topo*/
          currItem = i;
          /*TODO desempilhar a página anterior*/
          Navigator.of(context).pushNamed(pages[i]);
        }
      },//onTap

      backgroundColor: Colors.blue,
      unselectedItemColor: Colors.black,
      selectedItemColor: Colors.blue,

      ),



    );
  }
}