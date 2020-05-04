import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'Consumidor.dart';

class SecondPageComercio4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = "ListView List";

    List<Choice> choices = const <Choice>[
      const Choice( title: 'Pizza Media Calabresa', price : 'R\u0024\: 31,99',  description: 'Pizza de 35 cm de calabresa e sem borda', img:'images/pizza1.jpg'),
      const Choice(title: 'Pizza Media frango c/ catupiry', price : 'R\u0024\: 34,99',  description: 'Pizza de 35 cm de frango c/ catupiry e sem borda', img:'images/pizza2.jpg'),
      const Choice(title: 'Pizza gigante 4 sabores', price : 'R\u0024\: 54,99', description: 'Pizza de 40 cm, Sabores disponiveis : calabresa,bacon,frango c/ catupiry, alho, 4 queijos', img:'images/pizza3.jpg'),
      const Choice(title: 'Pizza Broto' , price : 'R\u0024\: 24,99',description: 'Pizza de 25 cm, sabores disponveis: calabresa,mussarela,frango c/ catupiry', img:'images/pizza4.jpg'),
      const Choice(title: 'Pizza Maracanã', price : 'R\u0024\: 67,99',description: 'Pizza de 45cm , 4 sabores, com borda recheada', img:'images/pizza5.jpg'),
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


