import 'package:absen_new/constant/constant.dart';
import 'package:absen_new/launcher.dart';
import 'package:absen_new/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Presensi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Launcher(),
      routes: <String, WidgetBuilder>{
        SPLASH_SCREEN: (BuildContext context) => Launcher(),
        HOME_SCREEN: (BuildContext context) => Login(),
      },
    );
  }
}