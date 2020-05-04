import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttersebrae/Consumidor.dart';


class SecondPageComercio1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = "ListView List";

    List<Choice> choices = const <Choice>[
      const Choice( title: 'ChesseBurguer Bacon X', price : 'R\u0024\: 14,99',  description: '2 pães, 1 carne, bacon, queijo, molho especial', img:'images/hamburguer1.jpeg'),
      const Choice(title: 'Hambuguer Atersanal Bacon Jack', price : 'R\u0024\: 14,99 ',  description: '2 pães, 2 carnes, bacon, peperoni,alface ', img:'images/hamburguer2.jpg'),
      const Choice(title: 'Hambuguer Atersanal Triplo Cheddar', price : 'R\u0024\: 19,99', description: '4 carnes, 2 pães, cheddar, pepino, tomate, molho especial', img:'images/hamburguer3.jpg'),
      const Choice(title: 'Hambuguer Billy McTop' , price : 'R\u0024\: 17,99',description: '1 carne normal, 1 carne empanada, cebola roxa, tomate, molho shoyo', img:'images/hamburguer4.jpg'),
      const Choice(title: 'Combo Casal', price : 'R\u0024\: 34,99',description: 'O combo acompanha 2 hamburgueres atersanais, 2 coca colas de 600ml', img:'images/hamburguer5.jpg'),
    ];


    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: title,
        home: Scaffold(appBar: AppBar(
          title: Image.asset('images/sebrae.png', fit: BoxFit.cover, height: 150, width: 100,),backgroundColor: Color.fromRGBO(10, 14, 209, 50), centerTitle: true ,
          automaticallyImplyLeading: true,
          leading: IconButton(icon: Icon(Icons.arrow_back_ios),
              onPressed: (){
                Navigator.pop(context, MaterialPageRoute(builder: (BuildContext context) => SebraeFlutter()));
              }
          ),
        ),
            body: new ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.all(20.0),
                children: List.generate(choices.length, (index) {
                  return Center(
                    child: ChoiceCard(choice: choices[index], item: choices[index]),
                  );
                }
                )
            )
        )
    );
  }
}

class Choice {
  final String title;
  final String price;
  final String description;
  final String img;

  const Choice({this.title, this.price, this.description, this.img});
}


class ChoiceCard extends StatelessWidget {
  const ChoiceCard(
      {Key key, this.choice, this.onTap, @required this.item, this.selected: false}
      ) : super(key: key);

  final Choice choice;
  final VoidCallback onTap;
  final Choice item;
  final bool selected;


  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.display1;
    if (selected)
      textStyle = textStyle.copyWith(color: Colors.lightGreenAccent[400]);
    return Card(

        color: Colors.white,

        child: Column(
          children: <Widget>[

            new Container(
                padding: const EdgeInsets.all(8.0),
                child:
                Image.asset(
                    choice.img
                )),


            new Container(
              padding: const EdgeInsets.all(10.0),
              child:
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(choice.title, style: Theme.of(context).textTheme.title),
                  Text(choice.price, style: TextStyle(color: Colors.black)),
                  Text(choice.description),
                ],
              ),

            )

          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        )

    );
  }
}
