import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class Coba extends StatefulWidget {
  @override
  _CobaState createState() => _CobaState();
}

class _CobaState extends State<Coba> {

    @override
  void initState() {
    super.initState();
    getData();
  }
 
  List userData;
  Map data ={};
  Map jsonData;

  Future getData() async {
    http.Response response = await http.get("https://indonesia-covid-19.mathdro.id/api/provinsi");
    jsonData = json.decode(response.body);
    setState(() {
      userData = jsonData["data"];
    });
  }
  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 370,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/frame.png'),
                fit: BoxFit.cover
              ),
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
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 24, 0, 0),
            child: Text('Statistik per provinsi',
              style: GoogleFonts.ubuntu(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20
                )
              )
            ),
          ),
          Container(
            height: 421,
            child: ListView.builder(
            scrollDirection: Axis.vertical,
              itemCount: userData == null ? 0 : userData.length,
              itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 8, 10, 10),
                  child: Card(
                    color: Colors.white,
                    elevation: 5.0,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10, right: 30),
                            child: Text("${userData[index]["provinsi"]}",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w700,
                            ),),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Image.asset('assets/positif.png', scale: 13,),
                                  Text(userData[index]['kasusPosi'].toString(),
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold
                                  ),),
                                  Text('Positif',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold
                                  ),)
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Image.asset('assets/heart.png', scale: 13,),
                                  Text(userData[index]['kasusSemb'].toString(),
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold
                                  ),),
                                  Text('Sembuh',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold
                                  ),)
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Image.asset('assets/close.png', scale: 13,),
                                  Text(userData[index]['kasusMeni'].toString(),
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold
                                  ),),
                                  Text('Meninggal',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold
                                  ),)
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
              ),
        ],
      )
    );
  }
}