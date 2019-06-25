import 'package:flutter/material.dart';
import 'package:aplicativo/layout/layout.dart';
import 'package:aplicativo/pages/about.dart';

class HomePage extends StatelessWidget{

  static String tag = 'home-page';
  int producaoLeite = 0,
      gorduraLeite = 0,
      proteinaLeite = 0,
      coformacaoUbere = 0,
      coformacaoPernas = 0;

  List<String> selecionados = new List();


  @override
  Widget build(BuildContext context) {

    final content = Container(
        //margin: EdgeInsets.only(top: 10.0),
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Column(
          children: <Widget>[
            // Cabecalho
            Container(
              height: MediaQuery.of(context).size.height * 0.15,

              ///alignment: Alignment.center,
              child: Center(
                child: Text(
                    "Escolha até 3 características que você deseja melhorar no seu rebanho:",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                    )),
              ),
              //  margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.02),
            ),

            Container(
              height: 1.0,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey,
              margin: const EdgeInsets.only(left: 10.0, right: 10.0),
            ),

            // Producao de leite
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              alignment: Alignment.center,
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.05),
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: Text("Produção de leite (PTA leite)"),
                  ),
                  Radio(
                    value: 1,
                    groupValue: producaoLeite,
                   // onChanged: (int e) => onChangeProducaoLeite(e),
                  ),
                  Text("Sim"),
                  Radio(
                    value: 0,
                    groupValue: producaoLeite,
                   // onChanged: (int e) => onChangeProducaoLeite(e),
                  ),
                  Text("Não"),
                ],
              ),
            ),
            Container(
              height: 1.0,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey,
              margin: const EdgeInsets.only(left: 10.0, right: 10.0),
            ),
            // Gordura do leite
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              alignment: Alignment.center,
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.05),
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: Text("Gordura do leite (PTA gordura)"),
                  ),
                  Radio(
                    value: 1,
                    groupValue: gorduraLeite,
                   // onChanged: (int e) => onChangeGorduraLeite(e),
                  ),
                  Text("Sim"),
                  Radio(
                    value: 0,
                    groupValue: gorduraLeite,
                  //  onChanged: (int e) => onChangeGorduraLeite(e),
                  ),
                  Text("Não"),
                ],
              ),
            ),
            Container(
              height: 1.0,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey,
              margin: const EdgeInsets.only(left: 10.0, right: 10.0),
            ),
            // Proteina do leite
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              alignment: Alignment.center,
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.05),
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: Text("Proteína do leite (PTA proteína)"),
                  ),
                  Radio(
                    value: 1,
                    groupValue: proteinaLeite,
                  //  onChanged: (int e) => onChangeProteinaLeite(e),
                  ),
                  Text("Sim"),
                  Radio(
                    value: 0,
                    groupValue: proteinaLeite,
                   // onChanged: (int e) => onChangeProteinaLeite(e),
                  ),
                  Text("Não"),
                ],
              ),
            ),
            Container(
              height: 1.0,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey,
              margin: const EdgeInsets.only(left: 10.0, right: 10.0),
            ),
            // Conformacao do u'bere
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              alignment: Alignment.center,
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.05),
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: Text("Conformação de úbere"),
                  ),
                  Radio(
                    value: 1,
                    groupValue: coformacaoUbere,
                  //  onChanged: (int e) => onChangeCoformacaoUbere(e),
                  ),
                  Text("Sim"),
                  Radio(
                    value: 0,
                    groupValue: coformacaoUbere,
                  //  onChanged: (int e) => onChangeCoformacaoUbere(e),
                  ),
                  Text("Não"),
                ],
              ),
            ),
            Container(
              height: 1.0,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey,
              margin: const EdgeInsets.only(left: 10.0, right: 10.0),
            ),
            // Conformacao de pernas e pe's #checar: pernas e pe's sao juntos
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              alignment: Alignment.center,
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.05),
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: Text("Conformação de pernas e pés"),
                  ),
                  Radio(
                    value: 1,
                    groupValue: coformacaoPernas,
                  //  onChanged: (int e) => onChangeCoformacaoPernas(e),
                  ),
                  Text("Sim"),
                  Radio(
                    value: 0,
                    groupValue: coformacaoPernas,
                  //  onChanged: (int e) => onChangeCoformacaoPernas(e),
                  ),
                  Text("Não"),
                ],
              ),
            ),
            // Outro mode de criar margin
            const SizedBox(height: 20),
            // Botao
            RaisedButton(
              onPressed: () {
                //Navigator.of(context).pushNamed(AboutPage.tag);
              },
              textColor: Colors.white,
              padding: const EdgeInsets.all(0.0),
              child: Container(
                decoration:
                    const BoxDecoration(color: Color.fromRGBO(34, 70, 105, 1)),
                padding: const EdgeInsets.all(10.0),
                child: const Text("Pesquisar", style: TextStyle(fontSize: 20)),
              ),
            ),
          ],
        ),
      );
    
    return Layout.getContent(context, content);
  }

 /* void onChangeProducaoLeite(int e) {
    setState(() {
      if (e == 1) {
        producaoLeite = 1;
        selecionados.add("producaoLeite");
        desabilitarBotao();
      } else {
        producaoLeite = 0;
        int i = selecionados.indexOf("producaoLeite");
        print(i);
        if (i != -1) {
          print(selecionados.removeAt(i));
        }
      }
    });
  }

  void onChangeGorduraLeite(int e) {
    setState(() {
      if (e == 1) {
        gorduraLeite = 1;
        selecionados.add("gorduraLeite");
        desabilitarBotao();
      } else {
        gorduraLeite = 0;
        int i = selecionados.indexOf("gorduraLeite");
        if (i != -1) {
          selecionados.removeAt(i);
        }
      }
    });
  }

  void onChangeProteinaLeite(int e) {
    setState(() {
      if (e == 1) {
        proteinaLeite = 1;
        selecionados.add("proteinaLeite");
        desabilitarBotao();
      } else {
        proteinaLeite = 0;
        int i = selecionados.indexOf("proteinaLeite");
        if (i != -1) {
          selecionados.removeAt(i);
        }
      }
    });
  }

  void onChangeCoformacaoUbere(int e) {
    setState(() {
      if (e == 1) {
        coformacaoUbere = 1;
        selecionados.add("coformacaoUbere");
        desabilitarBotao();
      } else {
        coformacaoUbere = 0;
        int i = selecionados.indexOf("coformacaoUbere");
        if (i != -1) {
          selecionados.removeAt(i);
        }
      }
    });
  }

  void onChangeCoformacaoPernas(int e) {
    setState(() {
      if (e == 1) {
        coformacaoPernas = 1;
        selecionados.add("coformacaoPernas");
        desabilitarBotao();
      } else {
        coformacaoPernas = 0;
        int i = selecionados.indexOf("coformacaoPernas");
        if (i != -1) {
          selecionados.removeAt(i);
        }
      }
    });
  }

  void desabilitarBotao() {
    if (selecionados.length == 4) {
      String caracteristicaRemovida = selecionados.removeAt(0);

      print(selecionados.elementAt(0));
      print(selecionados.elementAt(1));
      print(selecionados.elementAt(2));

      print(selecionados.length);
      print(caracteristicaRemovida);
      switch (caracteristicaRemovida) {
        case "producaoLeite":
          producaoLeite = 0;
          break;
        case "gorduraLeite":
          gorduraLeite = 0;
          break;
        case "proteinaLeite":
          proteinaLeite = 0;
          break;
        case "coformacaoUbere":
          coformacaoUbere = 0;
          break;
        case "coformacaoPernas":
          coformacaoPernas = 0;
          break;
        default:
      }
    }
  }*/

}