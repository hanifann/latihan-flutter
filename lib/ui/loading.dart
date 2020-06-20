import 'dart:async';

import 'package:copid_tracker/services/copid_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_splash_screen/flutter_splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';


class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  startTime() async{
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration,(){
      getCopid();
    }
    );
  }

  void getCopid() async{
    CopidApi copidApi = new CopidApi();
    await copidApi.getData('indonesia.json');
    Navigator.pushReplacementNamed(context, '/nav', arguments: {
      'meninggal' : copidApi.meninggal,
      'sembuh' : copidApi.sembuh,
      'dirawat' : copidApi.dirawat,
      'terinfeksi' : copidApi.terinfeksi
    });
  } 
  @override
  void initState() {
    super.initState();
    startTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(195, 244, 227, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/virus.png', scale: 2,),
            Text('Corona Virus Tracker',
            style: GoogleFonts.ruda(
              textStyle: TextStyle(
              color: Color.fromRGBO(49, 196, 146, 1),
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),
            ))
          ],
        ),
      )
      
    );
  }
}