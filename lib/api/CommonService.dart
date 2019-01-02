import 'dart:async';

import 'package:coderiver/common/User.dart';
import 'package:dio/dio.dart';
import 'Api.dart';

class CommonService {

  Future<Response> getWeChatListData(String url) async {
    return await Dio().get(url, options: _getOptions());
  }

  Future<Response> getTreeItemList(String url) async {
    return await Dio().get(url, options: _getOptions());
  }

  Future<Response> getArticleListData(int page) async {
    return await Dio()
        .get("${Api.HOME_LIST}$page/json", options: _getOptions());
  }


  Future<Response> getProjectListData(String url) async {
    return await Dio().get(url, options: _getOptions());
  }


  Future<Response> login(String username, String password) async {
    FormData formData = new FormData.from({
      "username": "$username",
      "password": "$password",
    });
    return await Dio().post(Api.HOME_LOGIN, data: formData);
  }

  Future<Response> register(String username, String password) async {
    FormData formData = new FormData.from({
      "username": "$username",
      "password": "$password",
    });
    return await Dio().post(Api.REGISTER, data: formData);
  }

  Options _getOptions() {
    return Options(headers: User().getHeader());
  }
}
