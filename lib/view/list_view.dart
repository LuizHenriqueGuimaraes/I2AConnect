import 'package:aplicativo/models/touro.dart';
import 'package:aplicativo/pages/detalhes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:aplicativo/layout/layout.dart';

class ListViewPage extends StatefulWidget{

  static String tag = 'list-page';

  @override
  State<StatefulWidget> createState() => _ListViewState();
}

class _ListViewState extends State<ListViewPage>{

  List itens = getListData();

  @override
  Widget build(BuildContext context) {

    final content = Container(
      child: ListView.builder(
        itemCount: itens.length,
        itemBuilder: (context, index){
            return InkWell (
              onTap: (){ 
                Navigator.of(context).push(
                  CupertinoPageRoute(
                    fullscreenDialog: true,
                    builder: (context) => DetalhesPage(touro: new Touro(index, itens[index], "https://images2.alphacoders.com/500/thumb-1920-500800.jpg"),)
                  )
                );
              }, // Chama o modal de detalhamento









            );
          }),
    );
    return Layout.getContent(context, content);
  }

  /*Método utilizado para pegar dados para a lista*/
  static List getListData() {
    List list = List.generate(17, (i) {
      return "Ingresso:00 ${i + 1}";
    });
    return list;
  }
}