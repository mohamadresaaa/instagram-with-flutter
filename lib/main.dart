import 'package:flutter/material.dart';

// pages
import 'package:instagram/myHomePage.dart';

void main() => runApp(new MyApp());


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'instagram',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primaryIconTheme: new IconThemeData(color: Colors.black),
        primaryTextTheme: new TextTheme(title: new TextStyle(color: Colors.black))
      ),
      home: new MyPages(),
    );
  }

}