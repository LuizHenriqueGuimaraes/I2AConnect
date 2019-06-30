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

  List<Touro> touros = [
    Touro(1, "Jagunço IV FIV Shottle Alegre", "https://touros.altagenetics.com.br/Uploads/Bulls/8490/Original.jpg"),
    Touro(2, "Axxor Avalon RPM da Santo Antônio", "https://touros.altagenetics.com.br/Uploads/Bulls/9423/Original.jpg"),
    Touro(3, "RBC Arquiteto", "http://www.girolandorbc.com.br/wp-content/uploads/2011/09/slide_touro.jpg"),
    Touro(4, "Imperor Bolton Santa Luzia", "https://www.crvlagoa.com.br/images/animais/fotos/Imperor_leite%20zebu%202016_maior.jpg"),
    Touro(5, "Galanteio XA", "http://www.abspecplan.com.br/img/touros-destaque/349172718/galanteio.jpg"),  
  ];

  //Características do card
  int elevationCard = 5;
  double heightCard = 150.0;
  //double widthImage = MediaQuery.of(context).size.width * 0.8;
  double radiusImage = 10.0;


  double spaceImageText = 15.0;
  double spaceTopText = 5.0;


  @override
  Widget build(BuildContext context) {
    final content = Container(
      child: ListView.builder(
          itemCount: touros.length, //Definir o tamanho da lista
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.of(context).push(
                    CupertinoPageRoute(
                        fullscreenDialog: true,
                        builder: (context) =>
                            DetalhesPage(touro: touros[index])
                    )
                );
              }, // Chama o modal de detalhamento

              child: Card(
                elevation: 5,
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.circular(radiusImage),
                // ),

                child: ListItem(
                  index: index,
                  imagem: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              touros[index].urlImagem),
                        )
                    ),
                  ),
                  titulo: touros[index].nome,
                  rgd: "1030843",
                  conf1: "PTA LEITE(KG)",
                  conf2: "PTA IPP (DIAS)",
                  conf3: "PTA PROT. (KG)",
                  res1: "535.1",
                  res2: "-48.7",
                  res3: "6.3",
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
    this.index,
    this.imagem,
    this.titulo,
    this.rgd,
    this.conf1,
    this.conf2,
    this.conf3,
    this.res1,
    this.res2,
    this.res3,
  }) : super(key: key);

  final int index;
  final Widget imagem;
  final String titulo;
  final String rgd;
  final String conf1;
  final String conf2;
  final String conf3;
  final String res1;
  final String res2;
  final String res3;

  AssetImage goldMedal = AssetImage("assets/gold-medal.png");
  AssetImage silverMedal = AssetImage("assets/silver-medal.png");
  AssetImage bronzeMedal = AssetImage("assets/bronze-medal.png");

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0),
      child: SizedBox(
        height: MediaQuery.of(context).size.width * 0.33,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 1.5,
                  child: imagem
                ),
                Image(
                    height: MediaQuery.of(context).size.height* 0.15 * 0.33,
                    image:
                      (index == 0) ? goldMedal :
                      (index == 1) ? silverMedal :
                      (index == 2) ? bronzeMedal : AssetImage("assets/empty.png"),
                    fit: BoxFit.fitHeight,
                ),
              ]
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 10.0, 2.0, 10.0),
                child: TextListItem(
                  title: titulo,
                  rgd: rgd,
                  conf1: conf1,
                  conf2: conf2,
                  conf3: conf3,
                  res1: res1,
                  res2: res2,
                  res3: res3,
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
    this.res1,
    this.res2,
    this.res3,
  }) : super(key: key);

  final String title;
  final String rgd;
  final String conf1;
  final String conf2;
  final String conf3;
  final String res1;
  final String res2;
  final String res3;

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
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 18,),
             ),


            //const Padding(padding: EdgeInsets.only(bottom: 8.0)),

            Spacer(),

            //Expanded(
             // flex: 1,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[

                  Text(
                  'RGD: ',
                   style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0, color: Colors.black87,),
                  ),


                  Text(
                    '$rgd',
                      style: const TextStyle(fontSize: 12.0, color: Colors.black,),
                  ),
                ],
              ),
           // ),

            //  Expanded(
             //   flex: 1,
               Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[

                    Text(
                      '$conf1: ',
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0, color: Colors.black87,),
                    ),


                    Text(
                      '$res1',
                      style: const TextStyle(fontSize: 12.0, color: Colors.black,),
                    ),
                  ],
                ),
             // ),

              //Expanded(
                //flex: 1,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[

                    Text(
                      '$conf2: ',
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0, color: Colors.black87,),
                    ),


                    Text(
                      '$res2',
                      style: const TextStyle(fontSize: 12.0, color: Colors.black,),
                    ),
                  ],
                ),
              //),

//              Expanded(
//                flex: 1,
                 Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[

                    Text(
                      '$conf3: ',
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0, color: Colors.black87,),
                    ),


                    Text(
                      '$res3',
                      style: const TextStyle(fontSize: 12.0, color: Colors.black,),
                    ),
                  ],
                ),
//              ),

              Spacer(),
          ],
        ),

    ),


    ],
    );

  }
}