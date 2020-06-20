import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class Stats extends StatefulWidget {
  @override
  _StatsState createState() => _StatsState();
}

class _StatsState extends State<Stats> {

  Map data ={};
  var tgl = DateFormat.yMEd().format(DateTime.now());

  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 370,
              decoration: BoxDecoration(
                color: Color.fromRGBO(49, 196, 146, 1),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)
                )
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 50, 8, 0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Statistik', 
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Colors.white
                      ),),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            width: 160,                      
                            decoration: BoxDecoration(
                              color: Colors.red[200],
                              borderRadius: BorderRadiusDirectional.circular(10)
                            ),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.red[100],
                                      image: DecorationImage(
                                        image: AssetImage('assets/positif.png'),
                                        fit: BoxFit.fill)
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(data['terinfeksi'], style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),),
                                  Text('Positif', style: TextStyle(
                                    color: Colors.white
                                  ),),
                                ],
                              ),
                            )
                          ),
                          Container(
                            width: 160,                      
                            decoration: BoxDecoration(
                              color: Colors.blue[200],
                              borderRadius: BorderRadiusDirectional.circular(10)
                            ),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.blue[100],
                                      image: DecorationImage(
                                        image: AssetImage('assets/hospital.png'),
                                        fit: BoxFit.fill)
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(data['dirawat'], style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),),
                                  Text('Dirawat', style: TextStyle(
                                    color: Colors.white
                                  ),),
                                ],
                              ),
                            )
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            width: 160,                      
                            decoration: BoxDecoration(
                              color: Colors.green[200],
                              borderRadius: BorderRadiusDirectional.circular(10)
                            ),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.green[100],
                                      image: DecorationImage(
                                        image: AssetImage('assets/heart.png'),
                                        fit: BoxFit.contain)
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(data['sembuh'], style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),),
                                  Text('Sembuh', style: TextStyle(
                                    color: Colors.white
                                  ),),
                                ],
                              ),
                            )
                          ),
                          Container(
                            width: 160,                      
                            decoration: BoxDecoration(
                              color: Colors.orange[200],
                              borderRadius: BorderRadiusDirectional.circular(10)
                            ),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.orange[100],
                                      image: DecorationImage(
                                        image: AssetImage('assets/close.png'),
                                        fit: BoxFit.fill)
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Text(data['meninggal'], style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),),
                                  Text('Meninggal', style: TextStyle(
                                    color: Colors.white
                                  ),),
                                ],
                              ),
                            )
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}