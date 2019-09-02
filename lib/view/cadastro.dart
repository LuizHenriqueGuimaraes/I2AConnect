import 'package:flutter/material.dart';


class CadastroPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _CadastroPage();

}

class _CadastroPage extends State<CadastroPage>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Form(
          child: Column(
              children: <Widget>[

                Spacer(),

                input('Email', Icon(Icons.accessibility)),
                input('Senha', Icon(Icons.vpn_key)),
                input('Confirmar senha', Icon(Icons.vpn_key)),

                Spacer(),


              ],

        ),

        ),
      ),
    );
  }



}