import 'package:coderiver/common/GlobalConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MinePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MinePageState();
  }
}

class _MinePageState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text('想法'),
            actions: <Widget>[new Container()],
          ),
          body: new Center(
            child: new Text('想法'),
          ),
        ),
        theme: GlobalConfig.themeData);
  }
}
