import 'package:coderiver/common/GlobalConfig.dart';
import 'package:coderiver/common/ShowToast.dart';
import 'package:coderiver/common/color_const.dart';
import 'package:coderiver/ui/login/LoginPage.dart';
import 'package:coderiver/ui/mine/ClearableInputField.dart';
import 'package:coderiver/ui/mine/RegisterNickNamePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPhonePage extends StatefulWidget {
  @override
  _LoginPhonePageState createState() => new _LoginPhonePageState();
}

class _LoginPhonePageState extends State<LoginPhonePage> {
  ClearableInputField _userNameInputForm;
  ClearableInputField _psdInputForm;
  TextEditingController _userNameController = TextEditingController();
  TextEditingController _psdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        floatingActionButton: new Theme(
          data: Theme.of(context).copyWith(accentColor: Colors.white),
          child: new FloatingActionButton(
            onPressed: () {
              Fluttertoast.showToast(msg: ".....");
            },
            child: new Icon(Icons.arrow_forward_ios,
                color: GlobalConfig.colorPrimary),
          ),
        ),
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
                padding: const EdgeInsets.all(6.0),
                child: new GestureDetector(
                    child: Icon(Icons.arrow_back_ios, color: Colors.white),
                    onTap: () {
                      Navigator.pop(context);
                    }),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 40.0, 0.0, 20.0),
                child: new Text(
                  '登录',
                  style: new TextStyle(
                      fontSize: 28.0,
                      color: Colors.white,
                      fontStyle: FontStyle.normal),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 40.0, 0.0, 10.0),
                child: new Text(
                  '手机号码',
                  style: new TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontStyle: FontStyle.normal),
                ),
              ),
              SizedBox(height: 0.0),
              _buildUserNameInputForm(),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 20.0, 0.0, 0.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new Expanded(
                        child: new Container(
                          margin: const EdgeInsets.only(left: 0.0),
                          child: new Text(
                            "输入密码",
                            style: new TextStyle(
                              fontSize: 18.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      new Container(
                        child: new FlatButton(
                            onPressed: () {},
                            child: new Text(
                              "隐藏",
                              style: new TextStyle(
                                  color: Colors.white, fontSize: 18),
                              textAlign: TextAlign.right,
                            )),
                      )
                    ]),
              ),
              SizedBox(height: 0.0),
              _buildPsdInputForm(),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(5.0),
                  child: _emailText(context),
                ),
                flex: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildUserNameInputForm() {
    _userNameInputForm = ClearableInputField(
      controller: _userNameController,
      inputType: TextInputType.text,
      hintTxt: null,
      showPrefixIcon: false,
      hintStyle: new TextStyle(color: Colors.white, fontSize: 18.0),
      textStyle: new TextStyle(color: Colors.white, fontSize: 24.0),
      padding: const EdgeInsets.fromLTRB(10.0, 4.0, 0.0, 20.0),
    );
    return _userNameInputForm;
  }

  Widget _buildPsdInputForm() {
    _psdInputForm = ClearableInputField(
      controller: _psdController,
      inputType: TextInputType.text,
      hintTxt: null,
      showPrefixIcon: true,
      hintStyle: new TextStyle(color: Colors.white, fontSize: 18.0),
      textStyle: new TextStyle(color: Colors.white, fontSize: 24.0),
      padding: const EdgeInsets.fromLTRB(10.0, 4.0, 0.0, 20.0),
    );
    return _psdInputForm;
  }
}

Widget _emailText(context) {
  return new Align(
    alignment: FractionalOffset.bottomLeft,
    child: new Padding(
      padding: EdgeInsets.only(right: 0.0, top: 0.0),
      child: _btnCreadeAccound(context),
    ),
  );
}

Widget _btnCreadeAccound(context) {
  return Container(
    margin: new EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),
    child: FlatButton(
        color: Colors.transparent,
        disabledColor: Colors.transparent,
        onPressed: () {
          Fluttertoast.showToast(msg: "使用邮箱");
          /*Navigator.push(
              context,
              new MaterialPageRoute(
                  builder: (BuildContext context) =>
                      new RegisterNickNamePage()));*/
        },
        shape: new RoundedRectangleBorder(
            side: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.all(Radius.circular(50))),
        child: new Text(
          '使用邮箱',
          style: new TextStyle(
              color: Colors.white, fontStyle: FontStyle.normal, fontSize: 20),
        )),
    height: 50,
    width: 160,
  );
}
