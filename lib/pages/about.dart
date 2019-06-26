import 'package:flutter/material.dart';
import 'package:aplicativo/layout/layout.dart';

enum itensPesquisa {
  producaoLeite, gorduraLeite, proteinaLeite, coformacaoUbere, coformacaoPernas
}

class AboutPage extends StatelessWidget{

  static String tag = 'about-page';

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

  @override
  Widget build(BuildContext context) {
    return Layout.getContent( context, Center(
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
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 4.0),
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
                                items: null,
                                onChanged: null,
                                hint: Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    "_ _ _ _ _                     "
                                  ),
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
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 4.0),
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
                                items: null,
                                onChanged: null,
                                hint: Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    "_ _ _ _ _                     "
                                  ),
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
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 4.0),
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
                                items: null,
                                onChanged: null,
                                hint: Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    "_ _ _ _ _                     "
                                  ),
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
            ],
          ),
        )
      ));
  }

}