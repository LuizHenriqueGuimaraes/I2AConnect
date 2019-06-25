import 'package:flutter/material.dart';
import 'package:aplicativo/layout/layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:aplicativo/pages/detalhes.dart';
import 'package:aplicativo/models/touro.dart';


class ResultadoViewPage extends StatefulWidget {
  static String tag = 'resultado-page';

  @override
  State<StatefulWidget> createState() => _ResultadoViewState();
}


class _ResultadoViewState extends State<ResultadoViewPage> {
  List itens = getListData();

  //Características do card
  int elevationCard = 5;
  double heightCard = 150.0;
  double widthImage = 100.0;
  double radiusImage = 10.0;


  double spaceImageText = 15.0;
  double spaceTopText = 5.0;


  @override
  Widget build(BuildContext context) {
    final content = Container(
      child: ListView.builder(
          itemCount: itens.length, //Definir o tamanho da lista
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.of(context).push(
                    CupertinoPageRoute(
                        fullscreenDialog: true,
                        builder: (context) =>
                            DetalhesPage(touro: new Touro(index, itens[index],
                                "https://images2.alphacoders.com/500/thumb-1920-500800.jpg"),)
                    )
                );
              }, // Chama o modal de detalhamento

              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(radiusImage),
                ),

                child: ListItem(
                  imagem: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://images2.alphacoders.com/500/thumb-1920-500800.jpg"),
                        )
                    ),
                  ),
                  titulo: "Título do card",
                  rgd: "1030843",
                  conf1: "TesteConfig1",
                  conf2: "TesteConfig2",
                  conf3: "TesteConfig3",
                ),
              ),
            );
          }),
    );
    return Layout.getContent(context, content);
  }

  static List getListData() {
    List list = List.generate(17, (i) {
      return "Ingresso: ${i + 1}";
    });
    return list;
  }
}


class ListItem extends StatelessWidget {
  ListItem({
    Key key,
    this.imagem,
    this.titulo,
    this.rgd,
    this.conf1,
    this.conf2,
    this.conf3,
  }) : super(key: key);

  final Widget imagem;
  final String titulo;
  final String rgd;
  final String conf1;
  final String conf2;
  final String conf3;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: SizedBox(
        height: 100,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AspectRatio(
                aspectRatio: 1.0,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                  child: imagem,
                )
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 0.0, 2.0, 0.0),
                child: TextListItem(
                  title: titulo,
                  rgd: rgd,
                  conf1: conf1,
                  conf2: conf2,
                  conf3: conf3,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TextListItem extends StatelessWidget {
  TextListItem({
    Key key,
    this.title,
    this.rgd,
    this.conf1,
    this.conf2,
    this.conf3,
  }) : super(key: key);

  final String title;
  final String rgd;
  final String conf1;
  final String conf2;
  final String conf3;

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[


        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
              '$title',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20,),
             ),


            const Padding(padding: EdgeInsets.only(bottom: 2.0)),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                  'RGD: ',
                   style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0, color: Colors.black87,),
                  ),


                  Text(
                    '$rgd',
                      style: const TextStyle(fontSize: 12.0, color: Colors.black54,),
                  ),
                ],
              ),
            ),



              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      '$conf1.',
                      style: const TextStyle(fontSize: 12.0, color: Colors.black87,),
                    ),
                    Text(
                      '$conf2 · $conf3 ★',
                      style: const TextStyle(fontSize: 12.0, color: Colors.black54,),
                    ),
                  ],
                ),
              ),





          ],
        ),

    ),


    ],
    );

  }
}