import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttersebrae/loginCNPJ.dart';
import 'package:fluttersebrae/loginCPF.dart';

void main() => runApp(LoginApp());

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Sebrae',
      theme: ThemeData(
          primarySwatch: Colors.deepPurple
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
        body: Container(
        child: Column(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2.5,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF0a0ed1),
                        Color(0xFF332af4)
                      ],
                    ),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(90)
                    )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ClipRRect(
                        child:Image.asset('images/sebrae.png',)
                    ),
                    Spacer(),
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => LoginCPF()));
                        },
                        child: Image.asset('images/cliente.png'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                   child: ClipRRect(
                     borderRadius: BorderRadius.circular(10),
                     child: GestureDetector(
                       onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => LoginCNPJ()));
                       },
                       child: Image.asset('images/comerciante.png'),
                     ),
                   ),
                  ),
                ],
              ),
            ],
        ),
        )
    );
  }
}