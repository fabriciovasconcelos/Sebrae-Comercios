
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:fluttersebrae/Second.dart';
import 'package:fluttersebrae/comercio-1.dart';
import 'package:fluttersebrae/comercio-2.dart';
import 'package:fluttersebrae/comercio-4.dart';
import 'package:fluttersebrae/comercio-5.dart';

class SebraeFlutter extends StatelessWidget{
  launchURL(){
    launch('https://m.sebrae.com.br/sites/PortalSebrae/cursosonline');
  }
  launchUrl2(){
    launch('https://m.sebrae.com.br/sites/PortalSebrae/ufs/sp/transparencia/recursos-e-investimentos,501b975cfef17510VgnVCM1000004c00210aRCRD');
  }
  launchUrl3(){
    launch('https://www.sebrae.com.br/sites/PortalSebrae/Busca?q=Servi%C3%A7os');
  }
  launchUrl4(){
    launch('https://www3.bcb.gov.br/CALCIDADAO/jsp/index.jsp');
  }
  Widget build(context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.grey
      ),
      title: 'Sebrae Flutter',
      home: Builder(
        builder: (context) =>
            Scaffold(
              appBar: AppBar(
                title: Image.asset('images/sebrae.png', fit: BoxFit.cover, height: 150, width: 100,),backgroundColor: Color.fromRGBO(10, 14, 209, 50), centerTitle: true,
                actions: <Widget>[
                  IconButton(

                    icon: Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),

                  )
                ],

              ),
              backgroundColor: Colors.white,
              body: ListView(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12
                    ),
                    child: Column( // TEXTO DA ENTREGA QUE FICA NO TOPO DO APP
                      crossAxisAlignment:  CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Entregar em', style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w700,
                            fontSize: 18),
                        ),
                        Row(
                          children: <Widget>[
                            Icon(Icons.home, color: Colors.blue,),
                            Text('Rua General Canabarro, 291', style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                            ),
                            Icon(Icons.keyboard_arrow_down, color: Colors.blue,),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14,),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                              color: Colors.grey.shade300,
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Qual estabelecimento procura?',
                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.search,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 14,
                        ),
                        Text('filtros', style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child:Container(
                      height: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: ListView(
                        padding: EdgeInsets.only(right: 12),
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              ClipRRect(borderRadius: BorderRadius.circular(8),
                                child: GestureDetector(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => SecondPage()));
                                  },
                                  child: Image.asset(
                                    'images/quadrado1-decima.png',
                                    height: 150,),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[

                              ClipRRect(borderRadius: BorderRadius.circular(8),
                                child: RaisedButton(onPressed: launchUrl2,
                                  child: Image.asset('images/a.png', height: 150,),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[

                              ClipRRect(borderRadius: BorderRadius.circular(8),
                                child : RaisedButton(
                                  onPressed: launchUrl3,
                                  child: Image.asset('images/5.png', height: 150,),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                    ),
                  ),
                  Container(
                    height: 10,
                    color : Colors.grey.shade300,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Container(
                      height: 150,
                      padding: EdgeInsets.only(top: 12, left: 12),
                      alignment: Alignment.topLeft,
                      child: Column(

                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Lojas em destaque',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Expanded(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(4),
                                      child : GestureDetector(
                                        onTap: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => SecondPageComercio1()));
                                        },
                                        child: Image.asset('images/burg.jpg', height: 70, ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(4),
                                      child : GestureDetector(
                                        onTap: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => SecondPageComercio2()));
                                        },
                                        child: Image.asset('images/logo2.png', height: 70,),
                                      ),
                                    ),

                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(4),
                                      child : GestureDetector(
                                        onTap: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => SecondPageComercio4()));
                                        },
                                        child: Image.asset('images/logo4.jpg', height: 70, ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(4),

                                      child : GestureDetector(
                                        onTap: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => SecondPageComercio5()));
                                        },
                                        child: Image.asset('images/logo5.jpg', height: 70, ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 10,
                    color: Colors.grey.shade300,
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
                ],
              ),
              bottomNavigationBar: BottomNavigationBar(

                elevation: 4,
                items:[
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home, color: Colors.blue,),
                      title: Text('Inicio',
                        style: TextStyle(
                            color: Colors.blue
                        ),
                      )
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person_outline, color: Colors.blue,),
                    title: Text('Perfil',
                      style: TextStyle(
                          color: Colors.blue
                      ),
                    ),
                  ),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.receipt, color: Colors.blue,
                      ),
                      title: Text('pedidos',
                        style: TextStyle(
                            color: Colors.blue
                        ),
                      )
                  ),
                ],
              ),
            ),
      ),
    );
  }
}

