import 'package:flutter/material.dart';
import 'package:aplicativo/layout/layout.dart';
import 'package:aplicativo/layout/layout__navigation.dart';

class LoginPage extends StatelessWidget {
  static String tag = 'login-page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
                width:
                    MediaQuery.of(context).size.width, //Pega o tamanho da tela
                height: MediaQuery.of(context).size.height *
                    (0.4), //Altura é 40% da tela
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xFF120A8F), Color(0xFF1E84D4)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter),
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(160))),
                child: Column(
                  // ===============> Stack serve para sobrepor um widget em cima do outro
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Align(
                        alignment: Alignment.center,
                        child: new Icon(
                          Icons.access_time,
                          size: MediaQuery.of(context).size.width * 0.4,
                          color: Colors.white,
                        )),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 32,
                          right: 32,
                        ),
                        child: Text(
                          "I²A CONNECT",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                )),
            Container(
              //height:  MediaQuery.of(context).size.height -  (MediaQuery.of(context).size.height * (0.5)),
              padding: EdgeInsets.only(
                top: 64,
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8, //Pega o tamanho da tela
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.black, blurRadius: 20)
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10000)),
                        prefixIcon: Icon(Icons.label_important),
                        hintText: 'Login',
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width *
                        0.8, //Pega o tamanho da tela
                    margin: EdgeInsets.only(
                      top: 32,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.black, blurRadius: 20)
                      ],
                    ),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100)),
                        prefixIcon: Icon(Icons.vpn_key),
                        hintText: 'Senha',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8, right: 55),
                  child: Text("Esqueceu a senha?",
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold)),
                )),
            GestureDetector(
              onTap: (){
                login(context);
              },

              child: Container(
                width: MediaQuery.of(context).size.width * 0.5,
                margin: EdgeInsets.only(
                  top: 32,
                ),
                //height: 80,

                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xFF120A8F), Color(0xFF1E84D4)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter),
                    borderRadius:
                    BorderRadius.all(Radius.circular(100))),

                child: Padding(padding: const EdgeInsets.only(
                    top: 8, bottom: 8
                ),
                  child: Center(
                      child: Text("Login".toUpperCase(), style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      )
                  ),
                ),

              ),
            ),



            Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                 padding: const EdgeInsets.only(top: 32),
                  child: Text("Cadastre-se no nosso aplicativo",
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold)),
                )),

          ],
        ),
      ),


    );
  }

  void login(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LayoutNavigation()));
//    Navigator.replace(context,
//        oldRoute: context,
//        newRoute: MaterialPageRoute(builder: (context) => LayoutNavigation()));

  }

}
