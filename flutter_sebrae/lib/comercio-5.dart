import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'Consumidor.dart';

class SecondPageComercio5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = "ListView List";

    List<Choice> choices = const <Choice>[
      const Choice( title: 'Sarrafo Pinus Ap 1"X4" 3000', price : 'R\u0024\: 16,67',  description: 'Produto pode ser utilizado na confecção de estrutura para estofados, gabinetes de cozinha, laterais de gaveta para moveis.', img:'images/madeira1.png'),
      const Choice(title: 'Compensado Sumaúma 2500 x 1600 x 4mm Maseal', price : 'R\u0024\: 76,87',  description: 'Pode ser aplicado sobre a superfície de pisos, desde que não esteja em contato direto com o solo, produção de estrutura de moveis, divisórias, painéis, pecas de artesanato e brinquedos, todos destinados a ambientes internos e livres de umidade.', img:'images/madeira2.png'),
      const Choice(title: 'Sarrafo Cedrinho Aparelhado 1"x3" 4000 Pinheirão Madeiras', price : 'R\u0024\: 37,81', description: 'Produção da estrutura de moveis e stands em geral, trabalhos de acabamento, pecas de artesanato e brinquedos, todos destinados a ambientes internos e livres de umidade.', img:'images/madeira3.png'),
      const Choice(title: 'Porta Ciliegio Claro 2,11x82 35mm Eucatex' , price : 'R\u0024\: 102,92',description: 'Porta revestida com chapas de fibra de madeira, pintadas e/ou revestimento BP (Baixa Pressão) requadro (montantes e travessas) em madeira tipo finger joint, miolo em estrutura de núcleo solido ou núcleo vazado.', img:'images/madeira4.png'),
      const Choice(title: 'Porta Semi Oca Capa Virola 2100x720x35mm Andrade e Martins', price : 'R\u0024\: 122,37',description: 'Utilizada como porta de passagem em ambientes internos.', img:'images/madeira5.png'),
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


