import 'package:copid_tracker/ui/bantuan.dart';
import 'package:copid_tracker/ui/home.dart';
import 'package:copid_tracker/ui/loading.dart';
import 'package:copid_tracker/ui/nav.dart';
import 'package:copid_tracker/ui/stats.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/' : (context) => Loading(),
      '/home' : (context) => Home(),
      '/stats' : (context) => Stats(),
      '/nav' : (context) => Nav(),
      '/bantuan' : (context) => Bantuan()
    },
  ));
}