import 'package:flutter/material.dart';


class ListStories extends StatelessWidget{
  
  final stories = new Expanded(
   child: new ListView.builder(
     scrollDirection: Axis.horizontal,
     itemCount: 10,
     itemBuilder: (BuildContext context, int index) {
       return new Stack(
         children: <Widget>[
           new Container(
             width: 50.0,
             height: 50.0,
             decoration: new BoxDecoration(
               shape: BoxShape.circle,
               image: new DecorationImage(
                   fit: BoxFit.cover,
                   image: new NetworkImage('https://avatars3.githubusercontent.com/u/41260098?s=460&v=4')
               )
             ),
             margin: const EdgeInsets.symmetric(horizontal: 5.0),
           ),
           index == 0
               ? new Positioned(
                    child: new CircleAvatar(
                      radius: 10.0,
                      backgroundColor: Colors.blueAccent,
                      child: new Icon(Icons.add, size: 14.0),
                    ),
                    right: 3.0,
                    bottom: 18.0
                  )
               : new Container()
         ],
       );
     },
   ),
  );
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      margin: const EdgeInsets.all(16.0),
      child: new Column(
        children: <Widget>[this.stories],
      ),
    );
  }

}