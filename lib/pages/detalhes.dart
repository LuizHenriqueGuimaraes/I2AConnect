import 'package:flutter/material.dart';
import 'package:aplicativo/models/touro.dart';

class DetalhesPage extends StatelessWidget{

  static String tag = 'detalhes-page';
  final Touro touro;


  DetalhesPage({Key key, @required this.touro}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(touro.nome),
      ),
      body: Stack(
        children: <Widget>[
          _buildImagemFundo(screenSize),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(height: screenSize.height / 3.50),
                  _buildNome(context),
                  _buildStatus(context),
                  _buildDados(context),
                ],
              ),
            ),
          )
        ],
      )
    );
  }

  Widget _buildStatusItem(String label, String count) {
    TextStyle _statLabelTextStyle = TextStyle(
      fontFamily: 'Roboto',
      color: Colors.black,
      fontSize: 16.0,
      fontWeight: FontWeight.w200,
    );

    TextStyle _statCountTextStyle = TextStyle(
      color: Colors.black54,
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          count,
          style: _statCountTextStyle,
        ),
        Text(
          label,
          style: _statLabelTextStyle,
        ),
      ],
    );
  }

  Widget _buildStatus(BuildContext context) {
    return Container(
      height: 60.0,
      margin: EdgeInsets.only(top: 8.0),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _buildStatusItem("Distância", touro.id.toString()),
          _buildStatusItem("Filhos", touro.id.toString()),
          _buildStatusItem("Rebanhos", touro.id.toString()),
        ],
      ),
    );
  }

  Widget _buildDados(BuildContext context) {
    TextStyle bioTextStyle = TextStyle(
      fontWeight: FontWeight.w400,
      color: Color(0xFF799497),
      fontSize: 16.0,
    );

    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      padding: EdgeInsets.all(8.0),
      child: Text(
        touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome + " " + touro.nome,
        textAlign: TextAlign.justify,
        style: bioTextStyle,
      ),
    );
  }
  
  Widget _buildNome(BuildContext context){
    TextStyle _nameTextStyle = TextStyle(
      color: Colors.black,
      fontSize: 28.0,
      fontWeight: FontWeight.w700,
    );

    return Container(
      padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 6.0),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Text(
        touro.nome,
        style: _nameTextStyle,
      ),
    );
  }

  Widget _buildImagemFundo(Size screenSize){
    return Container (
      height: screenSize.height / 3.6,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(touro.urlImagem),
          fit: BoxFit.cover
        )
      ),
    );
  }
}