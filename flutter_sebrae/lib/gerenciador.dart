import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'dashboard.dart';


class Gerenciador extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gerenciador de dinheiro',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  launchURL(){
    launch('https://m.sebrae.com.br/sites/PortalSebrae/cursosonline');
  }
  launchUrl4(){
    launch('https://www3.bcb.gov.br/CALCIDADAO/jsp/index.jsp');
  }

  @override
  Widget build(BuildContext context) {
    Color primaryColor = Color.fromRGBO(0, 0, 200, 1);
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 244, 244, 1),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: primaryColor,
                  border: Border.all(color: primaryColor)
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 30.0, right: 15.0, left: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.notifications_none),
                      color: Colors.white,
                      iconSize: 30.0,
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ),
            Stack(
              children: <Widget>[
                ClipPath(
                  clipper: CustomShapeClipper(),
                  child: Container(
                    height: 350.0,
                    decoration: BoxDecoration(color:primaryColor),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '2800.00',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 15.0),
                            Text(
                              'Saldo disponível',
                              style:
                              TextStyle(color: Colors.white, fontSize: 14.0),
                            )
                          ],
                        ),
                        Material(
                          elevation: 1.0,
                          borderRadius: BorderRadius.circular(100.0),
                          color: Colors.blue[300],
                          child: MaterialButton(
                              onPressed: (){
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context)=> DashboardPage()
                                ));
                              },
                              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                              child: Text(
                                'Faturamento',
                                style:
                                TextStyle(fontSize: 16.0, color: Colors.white),
                              )
                          ),
                        ),
                      ],
                    )
                ),
                Padding(
                  padding: EdgeInsets.only(top: 120.0, right:25.0, left: 25.0),
                  child: Container(
                    width: double.infinity,
                    height: 370.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              offset: Offset(0.0, 3.0),
                              blurRadius: 15.0
                          )
                        ]
                    ),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 40.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Material(
                                    borderRadius: BorderRadius.circular(100.0),
                                    color: Colors.blue.withOpacity(0.1),
                                    child: IconButton(
                                      padding: EdgeInsets.all(15.0),
                                      icon: Icon(Icons.person),
                                      color: Colors.blue,
                                      iconSize: 30.0,
                                      onPressed: (){},
                                    ),
                                  ),
                                  SizedBox(height: 8.0),
                                  Text('Atendente',
                                      style:TextStyle(
                                          color:Colors.black54,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Material(
                                    borderRadius: BorderRadius.circular(100.0),
                                    color: Colors.blue.withOpacity(0.1),
                                    child: IconButton(
                                      padding: EdgeInsets.all(15.0),
                                      icon: Icon(Icons.credit_card),
                                      color: Colors.blue,
                                      iconSize: 30.0,
                                      onPressed: (){},
                                    ),
                                  ),
                                  SizedBox(height:8.0),
                                  Text('Cartão',
                                      style:TextStyle(
                                          color:Colors.black54,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Material(
                                    borderRadius: BorderRadius.circular(100.0),
                                    color: Colors.blue.withOpacity(0.1),
                                    child: IconButton(
                                      padding: EdgeInsets.all(15.0),
                                      icon: Icon(Icons.receipt),
                                      color: Colors.blue,
                                      iconSize: 30.0,
                                      onPressed: (){},
                                    ),
                                  ),
                                  SizedBox(height:8.0),
                                  Text('Extrato',
                                      style:TextStyle(
                                          color:Colors.black54,
                                          fontWeight: FontWeight.bold))
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Material(
                                    borderRadius: BorderRadius.circular(100.0),
                                    color: Colors.blue.withOpacity(0.1),
                                    child: IconButton(
                                      padding: EdgeInsets.all(15.0),
                                      icon: Icon(Icons.shopping_cart),
                                      color: Colors.blue,
                                      iconSize: 30.0,
                                      onPressed: (){},
                                    ),
                                  ),
                                  SizedBox(height: 8.0),
                                  Text('Vendas',
                                      style:TextStyle(
                                          color:Colors.black54,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Material(
                                    borderRadius: BorderRadius.circular(100.0),
                                    color: Colors.blue.withOpacity(0.1),
                                    child: IconButton(
                                      padding: EdgeInsets.all(15.0),
                                      icon: Icon(Icons.score),
                                      color: Colors.blue,
                                      iconSize: 30.0,
                                      onPressed: (){},
                                    ),
                                  ),
                                  SizedBox(height:8.0),
                                  Text('Graficos',
                                      style:TextStyle(
                                          color:Colors.black54,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Material(
                                    borderRadius: BorderRadius.circular(100.0),
                                    color: Colors.blue.withOpacity(0.1),
                                    child: IconButton(
                                      padding: EdgeInsets.all(15.0),
                                      icon: Icon(Icons.attach_money),
                                      color: Colors.blue,
                                      iconSize: 30.0,
                                      onPressed: (){},
                                    ),
                                  ),
                                  SizedBox(height:8.0),
                                  Text('Saldo',
                                      style:TextStyle(
                                          color:Colors.black54,
                                          fontWeight: FontWeight.bold))
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 15.0),
                        Divider(),
                        SizedBox(height: 15.0),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Expanded(
                                child:Text(
                                  'Sebrae, sempre com você',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(width: 40.0),
                              Material(
                                borderRadius: BorderRadius.circular(100.0),
                                color: Colors.blueAccent.withOpacity(0.1),
                                child: IconButton(
                                  icon: Icon(Icons.arrow_forward_ios),
                                  color: Colors.blueAccent,
                                  onPressed: (){},
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal:25.0, vertical: 30.0),
              child: Text(
                'Faturamento Mensal',
                style: TextStyle(color: Colors.black.withOpacity(0.7),
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,

                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 35.0, bottom:25.0),
              child: Container(
                height: 150.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children:<Widget>[
                    UpcomingCard(title: 'Janeiro', value: 2540, color: Colors.blueAccent,),
                    UpcomingCard(title: 'Fevereiro', value: 4370, color: Colors.blue,),
                    UpcomingCard(title: 'Março', value: 3643, color: Colors.lightBlueAccent,),
                  ],
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal:25.0, vertical: 30.0),
                child: Text(
                  'Extras',
                  style: TextStyle(color: Colors.black.withOpacity(0.7),
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),

              ),

            ),
            Container(
                padding: EdgeInsets.all(12) ,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child:RaisedButton(
                    onPressed: launchURL,
                    child: Image.asset('images/1.png'),
                  ) ,
                )
            ),
            Container(
                padding: EdgeInsets.all(12) ,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child:RaisedButton(
                    onPressed: launchUrl4,
                    child: Image.asset('images/quadradofinal2.png'),
                  ) ,
                )
            ),
          ],
        ),
      ),
    );
  }
}
class CustomShapeClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size){
    var path = Path();
    path.lineTo(0.0, 390.0 - 200);
    path.quadraticBezierTo(size.width/2, 280, size.width, 390.0-200.0);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper)=>true;
}
class UpcomingCard extends StatelessWidget{
  final String title;
  final double value;
  final Color color;

  UpcomingCard({this.title, this.value, this.color});

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: EdgeInsets.only(right: 15.0),
      child: Container(
        width:120.0,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(Radius.circular(25.0))
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(title, style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
              SizedBox(height:20),
              Text('$value',
                  style:TextStyle(fontSize: 22.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold))
            ],
          ),
        ),
      ),
    );
  }
}





