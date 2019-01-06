import 'package:coderiver/common/GlobalConfig.dart';
import 'package:coderiver/common/ShowToast.dart';
import 'package:coderiver/common/Snack.dart';
import 'package:coderiver/common/color_const.dart';
import 'package:coderiver/ui/Application.dart';
import 'package:coderiver/ui/home/HomePage.dart';
import 'package:coderiver/ui/login/LoginPhone.dart';
import 'package:coderiver/ui/mine/RegisterNickNamePage.dart';
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
              _logText(context),
              Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 70.0, 0.0, 0.0),
                  child: new Image.asset(
                    'images/logo.png',
                    width: 90,
                    height: 90,
                  )),
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 20.0),
                child: new Text(
                  '欢迎来到CodeRiver',
                  style: new TextStyle(
                      fontSize: 24.0,
                      color: Colors.white,
                      fontStyle: FontStyle.normal),
                ),
              ),
              _btnGithubLogin(context),
              _btnCreadeAccound(context),
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
                child: new Text(
                  '更多登录方式',
                  style: new TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontStyle: FontStyle.normal),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 26.0, 0.0, 0.0),
                      child: weiboOR('新浪微博')),
                  Padding(
                      padding: EdgeInsets.fromLTRB(20.0, 26.0, 0.0, 0.0),
                      child: weChatOR('微信')),
                ],
              )
              //_body(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _logText(context) {
  return new Align(
    alignment: FractionalOffset.topRight,
    child: new Padding(
      padding: EdgeInsets.only(right: 0.0, top: 0.0),
      child: new GestureDetector(
        child: new Text(
          '登录',
          style: new TextStyle(
              fontSize: 18.0, color: Colors.white, fontStyle: FontStyle.normal),
        ),
        onTap: () {
          Navigator.push(
              context,
              new MaterialPageRoute(
                  builder: (BuildContext context) => new LoginPhonePage()));
        },
      ),
    ),
  );
}

Widget _btnGithubLogin(context) {
  return Container(
    child: RaisedButton.icon(
        color: Colors.white,
        disabledColor: Colors.transparent,
        shape: new RoundedRectangleBorder(
            side: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.all(Radius.circular(50))),
        icon: new Icon(Icons.star),
        onPressed: () {
          Navigator.push(
              context,
              new MaterialPageRoute(
                  builder: (BuildContext context) => new ApplicationPage()));
        },
        label: new Text(
          '使用GitHub账号登录',
          style: new TextStyle(
              color: Colors.green, fontStyle: FontStyle.normal, fontSize: 20),
        )),
    width: double.infinity,
    height: 50,
  );
}

Widget _btnCreadeAccound(context) {
  return Container(
    margin: new EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
    child: FlatButton(
        color: Colors.transparent,
        disabledColor: Colors.transparent,
        onPressed: () {
          Navigator.push(
              context,
              new MaterialPageRoute(
                  builder: (BuildContext context) =>
                      new RegisterNickNamePage()));
        },
        shape: new RoundedRectangleBorder(
            side: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.all(Radius.circular(50))),
        child: new Text(
          '创建账号',
          style: new TextStyle(
              color: Colors.white, fontStyle: FontStyle.normal, fontSize: 20),
        )),
    width: double.infinity,
    height: 50,
  );
}

Widget weiboOR(String str) {
  return Row(
    children: <Widget>[
      Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
          child: new Image.asset(
            'images/silan_icon.png',
          )),
      Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
        child: new GestureDetector(
            child: new Text(
              str,
              style: new TextStyle(
                  color: Colors.white, fontStyle: FontStyle.normal),
            ),
            onTap: () {
              Fluttertoast.showToast(msg: "微博登录");
            }),
      ),
    ],
  );
}

Widget weChatOR(String str) {
  return Row(
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
        child: new Image.asset(
          'images/wechat_icon.png',
        ),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
        child: new GestureDetector(
            child: new Text(
              str,
              style: new TextStyle(
                  color: Colors.white, fontStyle: FontStyle.normal),
            ),
            onTap: () {
              Fluttertoast.showToast(msg: "微信登录");
            }),
      ),
    ],
  );
}
