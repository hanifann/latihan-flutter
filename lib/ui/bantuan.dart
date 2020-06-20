import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Bantuan extends StatefulWidget {
  @override
  _BantuanState createState() => _BantuanState();
}

class _BantuanState extends State<Bantuan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/hwty.png'),
                    fit: BoxFit.fill),
                color: Color.fromRGBO(49, 196, 146, 1),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)
                )
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 16, top: 40),
                child: Text('Pusat\nBantuan Covid-19',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Container(
                width: 400,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.5),
                      blurRadius: 7,
                      spreadRadius: 5
                    )
                  ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(12)
                  )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Image.asset('assets/call.png',scale: 10,),
                    Text('Hotline Covid-19'),
                    RaisedButton(
                      child: Text('Telepon'),
                      splashColor: Color.fromRGBO(195, 244, 227, 1),
                      color: Color.fromRGBO(49, 196, 146, 1),
                      textColor: Colors.white,
                      onPressed: () => launch("tel://199")
                    ),
                  ],
                ),
              ),            
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Container(
                width: 400,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.5),
                      blurRadius: 7,
                      spreadRadius: 5
                    )
                  ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(12)
                  )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Image.asset('assets/web.png',scale: 10,),
                    Text('Website Covid-19 Indonesia'),
                    RaisedButton(
                      child: Text('Kunjungi'),
                      splashColor: Color.fromRGBO(195, 244, 227, 1),
                      color: Color.fromRGBO(49, 196, 146, 1),
                      textColor: Colors.white,
                      onPressed: () async{
                        const url = 'https://covid19.go.id/';
                        if (await canLaunch(url)) {
                          await launch(url, forceSafariVC: false);
                        } else {
                          throw 'Could not launch $url';
                        }
                      }
                    ),
                  ],
                ),
              ),            
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Container(
                width: 400,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.5),
                      blurRadius: 7,
                      spreadRadius: 5
                    )
                  ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(12)
                  )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Image.asset('assets/map.png',scale: 10,),
                    Text('Peta Sebaran Covid-19'),
                    RaisedButton(
                      child: Text('Kunjungi'),
                      splashColor: Color.fromRGBO(195, 244, 227, 1),
                      color: Color.fromRGBO(49, 196, 146, 1),
                      textColor: Colors.white,
                      onPressed: () async{
                        const url = 'https://covid19.go.id/peta-sebaran';
                        if (await canLaunch(url)) {
                          await launch(url, forceSafariVC: false);
                        } else {
                          throw 'Could not launch $url';
                        }
                      }
                    ),
                  ],
                ),
              ),            
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Container(
                width: 400,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.5),
                      blurRadius: 7,
                      spreadRadius: 5
                    )
                  ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(12)
                  )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Image.asset('assets/lapor.png',scale: 10,),
                    Text('Pelaporan Mandiri Covid-19'),
                    RaisedButton(
                      child: Text('Kunjungi'),
                      splashColor: Color.fromRGBO(195, 244, 227, 1),
                      color: Color.fromRGBO(49, 196, 146, 1),
                      textColor: Colors.white,
                      onPressed: () async{
                        const url = 'https://covid19.go.id/pelaporan-mandiri';
                        if (await canLaunch(url)) {
                          await launch(url, forceSafariVC: false);
                        } else {
                          throw 'Could not launch $url';
                        }
                      }
                    ),
                  ],
                ),
              ),            
            )
          ],
        ),
      ),
    );
  }
}