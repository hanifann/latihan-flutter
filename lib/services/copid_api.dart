import 'dart:convert';

import 'package:http/http.dart';


class CopidApi {
  String meninggal;
  String sembuh;
  String dirawat;
  String terinfeksi;
  

  Future <void> getData() async{

    try{
      //get json response
      Response response = await get('https://indonesia-covid-19-api.now.sh/api');
      Map data = jsonDecode(response.body);
      
      //get json properties
      meninggal = data['meninggal'].toString();
      sembuh = data['sembuh'].toString();
      dirawat = data['perawatan'].toString();
      terinfeksi = data['jumlahKasus'].toString();
    }catch(e){
      print(e);
    }
  }
}