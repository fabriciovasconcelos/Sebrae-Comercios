import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'Consumidor.dart';

class SecondPageComercio2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = "ListView List";

    List<Choice> choices = const <Choice>[
      const Choice( title: 'Blade Runner', date : 'R\u0024\: 62,99',  description: 'Inspiração para um dos maiores clássicos do cinema, dirigido por Ridley Scott, este romance é de autoria do prolífico e revolucionário Philip K. Dick, um dos maiores expoentes da contracultura na ficção científica durante as décadas de 60 e 70. Rick Deckard é um caçador de recompensas, vivendo em uma San Francisco decadente, coberta pela poeira radioativa que dizimou inúmeras espécies de animais e plantas. Um novo trabalho pode ser o ponto de virada para melhorar seu padrão de vida e realizar seu sonho de consumo: uma ovelha de verdade, para substituir a réplica elétrica que ele cria em casa. Para isso, Deckard precisa perseguir e aposentar seis androides que estão foragidos, se passando por humanos.', img:'images/livro1.jpg'),
      const Choice(title: 'Guerra e Paz', date : 'R\u0024\: 168,99',  description: 'O que é Guerra e paz?”, questiona Liev Tolstói em um texto que detalha o processo de pesquisa e de criação de sua obra-prima. “Não é um romance, muito menos uma epopeia, menos ainda uma crônica histórica.” Ao acompanhar o percurso de cinco famílias aristocráticas russas no período de 1805 a 1820, Tolstói narra a marcha das tropas napoleônicas e seu impacto brutal sobre a vida de centenas de personagens. ', img:'images/livro2.jpg'),
      const Choice(title: 'Biografia Felipe Neto', date : 'R\u0024\: 15,50', description: 'Do anonimato ao sucesso, Felipe Neto batalhou, e muito, para conquistar toda a fama que tem hoje. A explosão do youtuber não se deu do dia para a noite, ao contrário, exigiu muita dedicação e amadurecimento ao longo de sua caminhada.', img:'images/livro5.jpg'),
      const Choice(title: 'O Capital' , date : 'R\u0024\: 74,99',description: 'Em 2011, a Boitempo deu início a uma de suas maiores empreitadas editoriais: a tradução completa de O capital, a principal obra de maturidade de Karl Marx. Em março de 2013, em meio ao projeto MARX: a criação destruidora, um conjunto de eventos que reuniu milhares de pessoas para debater a atualidade de seu pensamento, foi lançado o primeiro livro, O processo de produção do capital, traduzido pela primeira vez a partir da edição preparada no âmbito do projeto alemão MEGA-2 (Marx-Engels Gesamtausgabe), com tradução de Rubens Enderle.', img:'images/livro3.jpg'),
      const Choice(title: 'Manifesto Comunista', date : 'R\u0024\: 15,99',description: 'Uma obra sempre atual que, embora não tenha consolidado sua visão de futuro, é referência para quem pretende estudar política e economia. No Manifesto do Partido Comunista, o operário surge como força organizadora de uma sociedade onde os menos favorecidos guiam o mundo com o prisma da justiça e igualdade de meios, de oportunidades e do equilíbrio entre produção e riqueza. Marx e Engels convocam o homem comum para enfrentar a burguesia e criar o seu próprio Deus, garantindo assim o bem estar de todos. Trata-se de um documento histórico que detalha o pensamento comunista e nos ajuda a compreender o contexto sócio político do mundo moderno.', img:'images/livro4.jpg'),
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
  final String date;
  final String description;
  final String img;

  const Choice({this.title, this.date, this.description, this.img});
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
                  Text(choice.date, style: TextStyle(color: Colors.black)),
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


