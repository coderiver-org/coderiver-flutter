import 'package:coderiver/common/GlobalConfig.dart';
import 'package:coderiver/common/color_const.dart';
import 'package:coderiver/utils/SizeUtil.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _MarketPageState createState() => new _MarketPageState();
}

class _MarketPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        /*appBar: new AppBar(
          title: new Text('登录', textAlign: TextAlign.right),
        ),*/
        body: Container(
          alignment: AlignmentDirectional.topStart,
          padding: EdgeInsets.only(top: 40, left: 20, right: 20),
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [GREEN, GlobalConfig.colorPrimary]),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
          Padding(
          padding: const EdgeInsets.fromLTRB(280.0, 10.0, 0.0, 0.0),
          child: Text(
            '登录',
            style: TextStyle(
                fontSize: 18,
                inherit: false, //2.不继承默认样式
                color: Colors.white),
            //TextDirection.ltr从左至右，TextDirection.rtl从右至左
            textDirection: TextDirection.rtl,
          ),
        ),
        ImageIcon(
          AssetImage('sources/images/logo.png'), color: Colors.white,)
        //TopTitleBar(),
        //_body(),
        ],
      ),
    ),)
    ,
    );
  }
}
