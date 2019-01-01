import 'package:flutter/material.dart';
import 'package:instagram/components/listStories.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {

  final posts = new Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
      new Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 10.0, 8.0, 10.0),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Row(
                children: <Widget>[
                  new Container(
                    width: 40.0,
                    height: 40.0,
                    margin: const EdgeInsets.only(right: 8.0),
                    decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                          image: new NetworkImage('https://avatars3.githubusercontent.com/u/41260098?s=460&v=4')
                      )
                    ),
                  ),
                  new Text('mohamadrezamosalli', style: TextStyle(fontWeight: FontWeight.bold))
                ],
              ),
              new IconButton(icon: new Icon(Icons.more_vert), onPressed: null)
            ],
          ),
      ),
      new Row(
        children: <Widget>[
          new Expanded(
              child: new Image.network(
                  'https://scontent-lht6-1.cdninstagram.com/vp/eb69f4b57f9c82a0019d1c7535e43dcd/5CD1DC75/t51.2885-15/e35/46563275_1334185393389905_5947145339520380370_n.jpg?_nc_ht=scontent-lht6-1.cdninstagram.com',
                  fit: BoxFit.cover
              )
          )
        ],
      ),
      new Padding(
          padding: const EdgeInsets.all(8.0),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Row(
                children: <Widget>[
                  new IconButton(icon: new Icon(FontAwesomeIcons.heart, color: Colors.black), onPressed: null),
                  new IconButton(icon: new Icon(FontAwesomeIcons.comment, color: Colors.black), onPressed: null),
                  new IconButton(icon: new Icon(FontAwesomeIcons.telegramPlane, color: Colors.black), onPressed: null)
                ],
              ),
              new IconButton(icon: new Icon(FontAwesomeIcons.bookmark, color: Colors.black), onPressed: null)
            ],
          ),
      ),
      new Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: new Text('likes 10,320', style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      new Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 8.0),
          child: new Row(
            children: <Widget>[
              new Text('mohamadrezamosalli', style: TextStyle(fontWeight: FontWeight.bold))
            ],
          ),
      ),
      new Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 16.0, 0.0, 16.0),
          child: new Row(
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
              new Expanded(
                  child: new TextField(
                    decoration: new InputDecoration(
                      border: InputBorder.none,
                      hintText: 'add comment...',
                    ),
                  )
              )
            ],
          ),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
           return index == 0
              ? new SizedBox(
                  child: new ListStories(),
                  height: MediaQuery.of(context).size.height * 0.15,
                )
              : posts;
        }
    );
  }

}