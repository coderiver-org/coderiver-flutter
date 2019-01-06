import 'package:coderiver/common/GlobalConfig.dart';
import 'package:coderiver/common/color_const.dart';
import 'package:coderiver/ui/login/LoginPhone.dart';
import 'package:coderiver/ui/mine/ClearableInputField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterNickNamePage extends StatefulWidget {
  @override
  _RegisterNickNamePageState createState() => new _RegisterNickNamePageState();
}

class _RegisterNickNamePageState extends State<RegisterNickNamePage> {
  ClearableInputField _userNameInputForm;
  TextEditingController _userNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        floatingActionButton: new Theme(
          data: Theme.of(context).copyWith(accentColor: Colors.white),
          child: new FloatingActionButton(
            onPressed: () {

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
                  '您的昵称？',
                  style: new TextStyle(
                      fontSize: 28.0,
                      color: Colors.white,
                      fontStyle: FontStyle.normal),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 40.0, 0.0, 20.0),

                child: new Text(
                  '昵称',
                  style: new TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontStyle: FontStyle.normal),
                ),
              ),
              SizedBox(height: 0.0),
              _buildUserNameInputForm(),
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
      hintStyle: new TextStyle(color: Colors.white, fontSize: 18.0),
      textStyle: new TextStyle(color: Colors.white, fontSize: 24.0),
      padding: const EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 20.0),
    );
    return _userNameInputForm;
  }
}
