import 'package:flutter/material.dart';


class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  new Scaffold(
      appBar: AppBar( title: Image.asset('images/sebrae.png', fit: BoxFit.cover, height: 150, width: 100,),backgroundColor: Color.fromRGBO(10, 14, 209, 50), centerTitle: true ,
      ),
      body: Center(
        child : Text('No momento esse serviço esta indisponivel'
            ':(',
        style: TextStyle(
          fontSize: 75

        ),
        )
      ),
    );
  }
}