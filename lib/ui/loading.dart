import 'package:copid_tracker/services/copid_api.dart';
import 'package:flutter/material.dart';


class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

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
    getCopid();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Hoho meme'),
      
    );
  }
}