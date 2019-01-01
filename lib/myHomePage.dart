import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:instagram/pages/addPage.dart';
import 'package:instagram/pages/homePage.dart';
import 'package:instagram/pages/likesPage.dart';
import 'package:instagram/pages/profilePage.dart';
import 'package:instagram/pages/searchPage.dart';


class MyPages extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyPagesState();

}


class MyPagesState extends State<MyPages> {

  String currentPage = 'home';

  final Map<String, Widget> children = <String, Widget> {
    'home': new HomePage(),
    'search': new SearchPage(),
    'add': new AddPage(),
    'likes': new LikesPage(),
    'profile': new ProfilePage()
  };

  void changePage(page) => setState(() => this.currentPage = page);


  final appBar = new AppBar(
    backgroundColor: new Color(0xfff8faf8),
    elevation: 1.0,
    centerTitle: true,
    leading: new Icon(Icons.camera_alt),
    title: new SizedBox(
        height: 40.0,
        child: new Image.asset('assets/images/insta_logo.png')
    ),
    actions: <Widget>[
      new Padding(padding: EdgeInsets.only(right: 12.0), child: new Icon(Icons.live_tv)),
      new Padding(padding: EdgeInsets.only(right: 12.0), child: new Icon(FontAwesomeIcons.telegramPlane))
    ],
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: appBar,
      body: this.children[this.currentPage],
      bottomNavigationBar: new Container(
        height: 50.0,
        color: Colors.white,
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            new IconButton(icon: new Icon(FontAwesomeIcons.home), onPressed: () => changePage('home')),
            new IconButton(icon: new Icon(FontAwesomeIcons.search), onPressed: () => changePage('search')),
            new IconButton(icon: new Icon(FontAwesomeIcons.plusSquare), onPressed: () => changePage('add')),
            new IconButton(icon: new Icon(FontAwesomeIcons.heart), onPressed: () => changePage('likes')),
            new IconButton(icon: new Icon(FontAwesomeIcons.user), onPressed: () => changePage('profile')),
          ],
        ),
      ),
    );
  }

}

//class MyPagesState extends State<MyPages> {
//
//  int currentIndexPage = 0;
//
//  final List children = [
//    new HomePage(),
//    new SearchPage(),
//    new AddPage(),
//    new LikesPage(),
//    new ProfilePage()
//  ];
//
//  void changePage(int index) => setState(() => this.currentIndexPage = index);
//
//
//  final appBar = new AppBar(
//    backgroundColor: new Color(0xfff8faf8),
//    elevation: 1.0,
//    centerTitle: true,
//    leading: new Icon(Icons.camera_alt),
//    title: new SizedBox(
//        height: 40.0,
//        child: new Image.asset('assets/images/insta_logo.png')
//    ),
//    actions: <Widget>[
//      new Padding(padding: EdgeInsets.only(right: 12.0), child: new Icon(Icons.live_tv)),
//      new Padding(padding: EdgeInsets.only(right: 12.0), child: new Icon(Icons.send))
//    ],
//  );
//
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return new Scaffold(
//      appBar: appBar,
//      body: this.children[currentIndexPage],
//      bottomNavigationBar: new BottomNavigationBar(
//          items: <BottomNavigationBarItem>[
//            new BottomNavigationBarItem(
//                icon: new Icon(Icons.home, color: Colors.black),
//                title: new Text('Home', style: new TextStyle(color: Colors.black))
//            ),
//            new BottomNavigationBarItem(
//                icon: new Icon(Icons.search, color: Colors.black),
//                title: new Text('Search', style: new TextStyle(color: Colors.black))
//            ),
//            new BottomNavigationBarItem(
//                icon: new Icon(Icons.add_box, color: Colors.black),
//                title: new Text('Add', style: new TextStyle(color: Colors.black))
//            ),
//            new BottomNavigationBarItem(
//                icon: new Icon(Icons.favorite, color: Colors.black),
//                title: new Text('Favorite', style: new TextStyle(color: Colors.black))
//            ),
//            new BottomNavigationBarItem(
//                icon: new Icon(Icons.account_circle, color: Colors.black),
//                title: new Text('Profile', style: new TextStyle(color: Colors.black))
//            ),
//          ],
//        onTap: changePage,
//        currentIndex: this.currentIndexPage,
//      ),
//    );
//  }
//
//}