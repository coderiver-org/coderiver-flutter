import 'package:coderiver/common/GlobalConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SeconedPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SeconedPageState();
  }
}

class _SeconedPageState extends State<SeconedPage>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => null;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(GlobalConfig.homeTab),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: new Icon(Icons.assignment),
              onPressed: () {},
            )
          ],
        ),
        body: Text(('开发中..')));
  }
}
