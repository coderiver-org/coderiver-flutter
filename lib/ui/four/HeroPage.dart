import 'package:coderiver/common/GlobalConfig.dart';
import 'package:flutter/material.dart';

class HeroPage extends StatefulWidget {

  @override
  _IdeaPageState createState() => new _IdeaPageState();

}

class _IdeaPageState extends State<HeroPage> {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text('想法'),
            actions: <Widget>[
              new Container(

              )
            ],
          ),
          body: new Center(
              child: null
          ),
        ),
        theme: GlobalConfig.themeData
    );
  }

}