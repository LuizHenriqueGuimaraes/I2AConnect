import 'package:flutter/material.dart';
import 'package:aplicativo/layout/layout.dart';
import 'package:flutter/semantics.dart';

enum itensPesquisa {
  producaoLeite,
  gorduraLeite,
  proteinaLeite,
  coformacaoUbere,
  coformacaoPernas
}

class AboutPage extends StatefulWidget {
//AboutPage({Key key, this.title}) : super(key: key);
// final String title;
  static String tag = 'about-page';
  _AboutPage createState() => _AboutPage();
}

class _AboutPage extends State<AboutPage> {
  List<DropdownMenuItem<String>> listaDrop;

  List<String> itens = [
    "Produção de leite (PTA leite)",
    "Gordura do leite (PTA gordura)",
    "Proteína do leite (PTA proteína)",
    "Conformação de úbere",
    "Conformação de pernas e pés"
  ];

  String caracterista1 = null;
  String caracterista2 = null;
  String caracterista3 = null;

  // @override
  // Widget build(BuildContext context) {
  //   return Layout.getContent( context, Center(
  //       child: Container(
  //         decoration: BoxDecoration(
  //           image: DecorationImage(
  //             image: AssetImage("assets/abc.jpg"),
  //             fit: BoxFit.cover,
  //           ),
  //         ),
  //       )
  //     ));
  // }

  void preencherDados() {
    listaDrop = [];

    listaDrop = itens
        .map((val) => new DropdownMenuItem<String>(
              child: new Text(val),
              value: val,
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    preencherDados();
    return Layout.getContent(
        context,
        Center(
            child: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Card(
                  elevation: 10,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        children: <Widget>[
                          Text(
                            "O que você deseja melhorar no seu rebanho?",
                            style: TextStyle(
                              fontSize: 22,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "(escolha até 3 características)",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 4.0),
                child: Card(
                  elevation: 8,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Característica 1",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: DropdownButton(
                                items: listaDrop,
                                value: caracterista1,
                                hint: Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text("_ _ _ _ _                     "),
                                ),
                                onChanged: (String newValue) {
                                  setState(() {
                                    // print("batata: $newValue");

                                    // PRIMEIRA TENTATIVA
                                    /* if (caracterista1 != null)
                                      listaDrop.add(new DropdownMenuItem(
                                        child: new Text(caracterista1),
                                        value: caracterista1,
                                      ));
                                    caracterista1 = newValue;

                                    for(int x = 0; x < listaDrop.length; x++){
                                      if(listaDrop.elementAt(x).value == caracterista1){
                                          print(listaDrop.removeAt(x).value);
                                          x = listaDrop.length;
                                      }
                                    } */

                                    // SEGUNDA TENTATIVA
                                    /*if (caracterista1 != null) {
                                      itens.add(caracterista1);
                                    } */
                                    caracterista1 = newValue;

                                    //print(itens.removeAt(itens.indexOf(caracterista1)));

                                    //preencherDados();
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 4.0),
                child: Card(
                  elevation: 8,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Característica 2",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: DropdownButton(
                                items: listaDrop,
                                value: caracterista2,
                                hint: Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text("_ _ _ _ _                     "),
                                ),
                                onChanged: (String newValue) {
                                  setState(() {
                                    // print("batata: $newValue");
                                    caracterista2 = newValue;
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 4.0),
                child: Card(
                  elevation: 8,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Característica 3",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: DropdownButton(
                                items: listaDrop,
                                value: caracterista3,
                                hint: Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text("_ _ _ _ _                     "),
                                ),
                                onChanged: (String newValue) {
                                  setState(() {
                                    // print("batata: $newValue");
                                    caracterista3 = newValue;
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )));
  }
}
