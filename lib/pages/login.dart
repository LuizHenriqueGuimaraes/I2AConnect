import 'package:flutter/material.dart';
import 'package:aplicativo/layout/layout.dart';
import 'package:aplicativo/layout/layout__navigation.dart';
import 'dart:ui';

import 'package:flutter/widgets.dart' as prefix0;

class LoginPage extends StatelessWidget {
  static String tag = 'login-page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background_login.png"),
            fit: BoxFit.fitHeight,
          ),
        ),

        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
          child: Column(
            children: <Widget>[
              /*
              Container(
                  width: MediaQuery.of(context).size.width, //Pega o tamanho da tela
                  height: MediaQuery.of(context).size.height * (0.4), //Altura é 40% da tela
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
              */
              Spacer(),
              Card(

                elevation: 10,
                child: Container(
                  //height:  MediaQuery.of(context).size.height -  (MediaQuery.of(context).size.height * (0.5)),
                  padding: EdgeInsets.only(top: 8,),
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 430,


                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          margin: EdgeInsets.only(top: 16),
                          width: 130,
                          height: 130,
                          decoration: new BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/logo.jpg"),
                              fit: BoxFit.fitHeight,
                            ),
                            //color: Color(0xFF244767),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      //Login TextField
                      Container(
                        margin: EdgeInsets.only(
                          top: 32,
                        ),
                        width: MediaQuery.of(context).size.width * 0.75, //Pega o tamanho da tela
                        decoration: BoxDecoration(
                          color: Color(0xFFEEEEEE)
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.label_important),
                            hintText: 'Login',
                          ),
                        ),
                      ),
                      //Senha TextField
                      Container(
                        width: MediaQuery.of(context).size.width * 0.75, //Pega o tamanho da tela
                        margin: EdgeInsets.only(top: 8),
                        decoration: BoxDecoration(
                          color: Color(0xFFEEEEEE)
                        ),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.vpn_key),
                            hintText: 'Senha',
                          ),
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.only(
                          top: 32,
                        ),
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: GestureDetector(
                          onTap: (){
                            login(context);
                          },

                          child: Container(
                            height: 45,
                            width: 180,

                            decoration: BoxDecoration(
                                color: Color(0xFF9CEAAA),
                                borderRadius:
                                BorderRadius.all(Radius.circular(100))),

                            child: Padding(padding: const EdgeInsets.only(
                                top: 8, bottom: 8
                                ),
                              child: Center(
                                  child: Text("Login".toUpperCase(), style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w100,
                                  )
                                ),
                              )
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 16, bottom: 8),
                          child: Text("Esqueceu a senha?",
                              style: TextStyle(
                                color: Color(0xFF4A86E8),
                              )
                            ),
                        )
                      ),
                    ],
                  ),
                ),




              ),
              Spacer(),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 48),
                  child: RaisedButton(
                    onPressed: (){
                      login(context);
                    },
                    elevation: 10,
                    color: Color(0xFF244767),
                    child: Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.75,
                        child: Center(
                          child: Text("Criar nova conta".toUpperCase(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w400
                              )
                            ),
                          ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
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
