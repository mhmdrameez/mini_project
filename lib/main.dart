import 'package:flutter/material.dart';
import 'package:minpro/screens/alerts.dart';
import 'package:minpro/screens/bill.dart';
import 'package:minpro/screens/data.dart';
import 'package:minpro/screens/homepage.dart';
import 'package:minpro/screens/loginpage.dart';
import 'package:minpro/screens/send.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/home': (context) => HomePage(),
        '/bill': (context) => Bill(),
        '/data': (context) => Data(),
        '/send': (context) => Send(),
        '/alerts': (context) => Alerts()
      },
      home: MyHomePage(),
    );
  }
}
