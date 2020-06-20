import 'dart:convert';

import 'package:http/http.dart';


class CopidApi {
  String meninggal;
  String sembuh;
  String dirawat;
  String terinfeksi;
  

  Future <void> getData(String api) async{

    try{
      //get json response
      Response response = await get('https://lintangwisesa.github.io/Indonesia-Covid19-Maps/data/$api');
      Map data = jsonDecode(response.body);
      
      //get json properties
      meninggal = data['Deaths'].toString();
      sembuh = data['Recovered'].toString();
      dirawat = data['Active cases'].toString();
      terinfeksi = data['Confirmed'].toString();
    }catch(e){
      print(e);
    }
  }
}

class Provinsi {
  String provinsi;
  String confirmed;
  String recovered;
  String deaths;
  String activeCases;

  Provinsi(
      {this.provinsi,
      this.confirmed,
      this.recovered,
      this.deaths,
      this.activeCases,});

  // Provinsi.fromJson(Map<String, dynamic> json) {
  //   provinsi = json['Provinsi'];
  //   confirmed = json['Confirmed'];
  //   recovered = json['Recovered'];
  //   deaths = json['Deaths'];
  //   activeCases = json['Active cases'];
  // }

  // factory Provinsi.fromJson(Map<String, dynamic> json){
  //   return Provinsi(
  //     provinsi: json['Provinsi'],
  //     confirmed: json['Confirmed'],
  //     recovered: json['Recovered'],
  //     deaths: json['Deaths'],
  //     activeCases: json['Active cases']
  //   );
  // }
  // @override
  // String toString() {
  // return 'Provinsi{provinsi: $provinsi, confirmed: $confirmed, recovered: $recovered, deaths: $deaths,activeCases: $activeCases}';
  //  }
  Future getData() async {
    try{
      Response data = await get('https://lintangwisesa.github.io/Indonesia-Covid19-Maps/data/provinsi/all.json');
      final jsonData = jsonDecode(data.body);
      Provinsi sample = Provinsi.fromJson(jsonData[0]);
      print(sample.confirmed.toString());
    }catch(e){
      print(e);
    }
  }

  factory Provinsi.fromJson(Map<String, dynamic> json){
    return new Provinsi(
      provinsi: json['Provinsi'],
      confirmed: json['Confirmed'].toString(),
      recovered: json['Recovered'].toString(),
      deaths: json['Deaths'].toString(),
      activeCases: json['Active cases'].toString()
    );
  }
}

class ProvList{
  final List<Provinsi> prov;

  ProvList({this.prov});

  factory ProvList.fromJson(List<dynamic> parsedJson){
    List<Provinsi> prov = new List<Provinsi>();
    prov = parsedJson.map((e) => Provinsi.fromJson(e)).toList();
    return new ProvList(prov: prov);
  }
}

