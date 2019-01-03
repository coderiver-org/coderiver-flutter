import 'package:coderiver/common/GlobalConfig.dart';
import 'package:coderiver/common/Snack.dart';
import 'package:coderiver/common/color_const.dart';
import 'package:coderiver/ui/mine/MinePage.dart';
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
              new Align(
                alignment: FractionalOffset.topRight,
                child: new Padding(
                  padding: EdgeInsets.only(right: 0.0, top: 0.0),
                  child: new GestureDetector(
                    child: new Text(
                      '登录',
                      style: new TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                          fontStyle: FontStyle.normal),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  new LoginPage()));
                    },
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 70.0, 0.0, 0.0),
                  child: new Image.asset(
                    'images/logo.png',
                    width: 90,
                    height: 90,
                  )),
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 0.0),
                child: new Text(
                  '欢迎来到CodeRiver',
                  style: new TextStyle(
                      fontSize: 24.0,
                      color: Colors.white,
                      fontStyle: FontStyle.normal),
                ),
              ),
              RaisedButton.icon(
                  color: Colors.white,
                  disabledColor: Colors.transparent,
                  shape: new RoundedRectangleBorder(
                      side: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  icon: new Icon(Icons.star),
                  onPressed: () {
                    Snack.show(context, "666");
                  },
                  label: new Text('使用GitHub账号登录使用GitHub账号登录')),
              RaisedButton.icon(
                  color: Colors.transparent,
                  disabledColor: Colors.transparent,
                  onPressed: () {
                    Snack.show(context, "777");
                  },
                  shape: new RoundedRectangleBorder(
                      side: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  icon: new Icon(null),
                  label: new Text(
                    '创建账号创建账号创建账号创建账号创建账号',
                    style: new TextStyle(
                        color: Colors.white, fontStyle: FontStyle.normal),
                  )),
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
                      padding: EdgeInsets.all(10.0),
                      child: RaisedButton.icon(
                          color: Colors.white,
                          disabledColor: Colors.transparent,
                          icon: new Icon(Icons.star),
                          label: new Text('新浪微博',
                              style: new TextStyle(
                                  color: Colors.white,
                                  fontStyle: FontStyle.normal)))),
                  Padding(
                      padding: EdgeInsets.all(20.0),
                      child: RaisedButton.icon(
                          color: Colors.transparent,
                          disabledColor: Colors.transparent,
                          icon: new Icon(Icons.star),
                          label: new Text(
                            '微信',
                            style: new TextStyle(
                                color: Colors.white,
                                fontStyle: FontStyle.normal),
                          ))),
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

Widget _buildLoginBtn(BuildContext context) {
  return RaisedButton(
      padding: const EdgeInsets.all(8.0),
      color: GlobalConfig.colorPrimary,
      textColor: Colors.white,
      child: Text("登录"),
      elevation: 4.0,
      onPressed: () {
        Snack.show(context, "账号/密码不符合标准");
      });
}
