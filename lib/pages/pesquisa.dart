import 'package:aplicativo/pages/resultado.dart';
import 'package:flutter/material.dart';
import 'package:aplicativo/layout/layout.dart';
import 'package:flutter/semantics.dart';
import 'package:aplicativo/layout/layout__navigation.dart';

enum itensPesquisa {
  producaoLeite,
  gorduraLeite,
  proteinaLeite,
  coformacaoUbere,
  coformacaoPernas
}

class PesquisaPage extends StatefulWidget {
//AboutPage({Key key, this.title}) : super(key: key);
// final String title;
  static String tag = 'about-page';
  _PesquisaPage createState() => _PesquisaPage();
}

class _PesquisaPage extends State<PesquisaPage> {
  List<DropdownMenuItem<String>> listaDrop;

  static String nulo = "Escolha uma característica";

  List<String> itens = [
    nulo,
    "Produção de leite (PTA leite)",
    "Gordura do leite (PTA gordura)",
    "Proteína do leite (PTA proteína)",
    "Conformação de úbere",
    "Conformação de pernas e pés"
  ];

  List<String> caracteristica = [
    null,
    null,
    null,
  ];

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
                                isExpanded: true,
                                items: listaDrop,
                                value: caracteristica[0],
                                hint: Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(nulo),
                                ),
                                onChanged: (String newValue) {
                                  setState(() {

                                    for(int i = 0; i < caracteristica.length; i++){
                                      if(caracteristica[i] != null){
                                        if(caracteristica[i].compareTo(newValue) == 0){
                                          caracteristica[i] = nulo;
                                        }
                                      }
                                    }
                                    caracteristica[0] = newValue;
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
                                isExpanded: true,
                                items: listaDrop,
                                value: caracteristica[1],
                                hint: Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(nulo),
                                ),
                                onChanged: (String newValue) {
                                  setState(() {

                                    for(int i = 0; i < caracteristica.length; i++){
                                      if(caracteristica[i] != null){
                                        if(caracteristica[i].compareTo(newValue) == 0){
                                          caracteristica[i] = nulo;
                                        }
                                      }
                                    }
                                    caracteristica[1] = newValue;
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
                                isExpanded: true,
                                items: listaDrop,
                                value: caracteristica[2],
                                hint: Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(nulo),
                                ),
                                onChanged: (String newValue) {
                                  setState(() {
                                    for(int i = 0; i < caracteristica.length; i++){
                                      if(caracteristica[i] != null){
                                        if(caracteristica[i].compareTo(newValue) == 0){
                                          caracteristica[i] = nulo;
                                        }
                                      }
                                    }
                                    caracteristica[2] = newValue;
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

              Spacer(),

              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: RaisedButton(
                  onPressed: () {
                    pesquisar(context);
                  },
                  elevation: 10,
                  color: Color(0xFF244767),
                  child: Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.75,
                      height: 30,
                      child: Center(
                        child: Text("Pesquisar".toUpperCase(),
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w400)),
                      ),
                    ),
                  ),
                ),
              ),

              Spacer(),


            ],
          ),
        )));
  }


  void pesquisar(context){
    LayoutNavigation.state.setState((){
        LayoutNavigationState.pagina_corrente = ResultadoViewPage();
      }
    );
  }
}
