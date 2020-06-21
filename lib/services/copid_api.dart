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



// class Provinsi {
//   int fid;
//   int kodeProvi;
//   String provinsi;
//   int kasusPosi;
//   int kasusSemb;
//   int kasusMeni;

//   Provinsi(
//       this.fid,
//       this.kodeProvi,
//       this.provinsi,
//       this.kasusPosi,
//       this.kasusSemb,
//       this.kasusMeni);
// }

// class Provinsi {
//   List<Data> data;

//   Provinsi({this.data});

//   Provinsi.fromJson(Map<String, dynamic> json) {
//     if (json['data'] != null) {
//       data = new List<Data>();
//       json['data'].forEach((v) {
//         data.add(new Data.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.data != null) {
//       data['data'] = this.data.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class Data {
//   int fid;
//   int kodeProvi;
//   String provinsi;
//   int kasusPosi;
//   int kasusSemb;
//   int kasusMeni;

//   Data(
//       this.fid,
//       this.kodeProvi,
//       this.provinsi,
//       this.kasusPosi,
//       this.kasusSemb,
//       this.kasusMeni);

//   Data.fromJson(Map<String, dynamic> json) {
//     fid = json['fid'];
//     kodeProvi = json['kodeProvi'];
//     provinsi = json['provinsi'];
//     kasusPosi = json['kasusPosi'];
//     kasusSemb = json['kasusSemb'];
//     kasusMeni = json['kasusMeni'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['fid'] = this.fid;
//     data['kodeProvi'] = this.kodeProvi;
//     data['provinsi'] = this.provinsi;
//     data['kasusPosi'] = this.kasusPosi;
//     data['kasusSemb'] = this.kasusSemb;
//     data['kasusMeni'] = this.kasusMeni;
//     return data;
//   }
// }
