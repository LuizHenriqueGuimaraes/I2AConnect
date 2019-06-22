import 'package:aplicativo/models/touro.dart';
import 'package:aplicativo/pages/detalhes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:aplicativo/layout.dart';

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
              child: Card(
                elevation: 5,
                child: Container(
                  height: 200.0,
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 200.0,
                        width: 150.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(5),
                            topLeft: Radius.circular(5),

                          ),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                              image: NetworkImage("https://images2.alphacoders.com/500/thumb-1920-500800.jpg"))
                        ),
                      ),
                      Container(
                        height: 200,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 2, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(itens[index]),
                              
                              Container(
                                width: 30,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.teal),
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                                ),
                                child: Text("3D", textAlign: TextAlign.center,),
                              ),
                              Container(
                                width: 260,
                                child: Text("Peter Parker está em uma viagem de duas semanas pela Europa, ao lado de seus amigos de colégio, quando é surpreendido pela visita de Nick Fury.", style: TextStyle(
                                  fontSize: 13,
                                  color: Color.fromARGB(255, 48, 48, 54),
                                ),),
                              ),
                            ],
                          ),
                        
                        ),
                        
                      ),
                      Text(itens[index])],
                  ),
                ),
              ),
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