import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';



class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: SingleChildScrollView(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              decoration: BoxDecoration(
                color: Color.fromRGBO(49, 196, 146, 1),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)
                ),
                image: DecorationImage(
                  image: AssetImage('assets/undraw.png'))
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 90),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 35),
                      child: Text('Covid-19',
                      style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                          color: Colors.white,
                          letterSpacing: 2,                        
                        )),),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Text('Gejala',
                      style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w500
                        )
                      ),),
                    ),
                    Container(
                      // color: Colors.white,
                      width: 250,
                      child: CarouselSlider(
                      options: CarouselOptions(
                        height: 100.0,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        enlargeCenterPage: true),
                      items: [
                        "Penderita covid-19 biasanya mengalami demam diatas 38 C",
                        "Penderita covid-19 biasanya akan mengalami kelelahan atau lemas",
                        "Penderita covid-19 biasanya akan mengalami pegal-pegal",
                        "Penderita covid-19 biasanya akan mengalamu penurunan nafsu makan",
                        "Hilangnya kemampuan mengecap rasa atau mencium"
                      ].map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              // decoration: BoxDecoration(
                              //   color: Colors.amber
                              // ),
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 20.0),
                              child: Text('$i', 
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white),)
                            );
                          },
                        );
                      }).toList(),
                    ),
                    )
                  ],),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, top: 20),
              child: Text('Pencegahan', 
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0
                ) ),),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Image.asset('assets/edited.png', scale: 8,),
                Image.asset('assets/face.png', scale: 8,),
                Image.asset('assets/rumah.png', scale: 8,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('Hindari\nTempat ramai',textAlign: TextAlign.center,),
                SizedBox(width: 1),
                Text('Tidak\nMenyentuh wajah', textAlign: TextAlign.center,),
                SizedBox(width: 1),
                Text('Diam\nDirumah Saja', textAlign: TextAlign.center,),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Image.asset('assets/handshake.png', scale: 8,),
                Image.asset('assets/tutup.png', scale: 8,),
                Image.asset('assets/cuci.png', scale: 8,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('Hindari\nmelakukan kontak',textAlign: TextAlign.center,),
                SizedBox(width: 1),
                Text('Menutup mulut\nketika bersin', textAlign: TextAlign.center,),
                SizedBox(width: 1),
                Text('Cuci tangan\nminimal 20 detik', textAlign: TextAlign.center,),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 30, left: 20, right: 20),
              child: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 180,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    image: DecorationImage(
                      image: AssetImage('assets/hotline.png'),
                      fit: BoxFit.cover
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20)
                    )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 150, top: 10),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Text('informasi Covid-19?',
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 20,),
                          child: Text('Bagi anda yang mempunyai pertanyaan ataupun membnutukan informasi seputar Covid-19 bisa menghubungi 199 atau mengunjungi website www.covid19.go.id/'),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),      
    );
  }
}