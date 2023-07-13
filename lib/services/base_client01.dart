import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import '../view/dialogs/dialogs.dart';
import 'app_exceptions.dart';

class BaseClient01 {
  static const int TIME_OUT_DURATION = 60;
  //GET
  Future<dynamic> get(Uri api) async {
    try {
      DialogHelper.showLoading();
      var response = await http.get(api).timeout(Duration(seconds: TIME_OUT_DURATION));
      print(response.statusCode);
      DialogHelper.hideLoading();
      return _processResponse(response);
    } on SocketException {

      print("No Internet connection");
      DialogHelper.snackbar("No Internet connection");
      // throw FetchDataException('No Internet connection', api.toString());
    } on TimeoutException {
      throw ApiNotRespondingException('API not responded in time', api.toString());
    }
  }

  //POST
  Future<dynamic> post(Uri api,dynamic body) async {
    try {

      var _headers = {
        'Authorization': 'Bearer sfie328370428387=',
      };
      var response = await http.post(api, body: body,headers: _headers).timeout(Duration(seconds: TIME_OUT_DURATION));
      return _processResponse(response);
    }on SocketException {
      print("No Internet connection");
      DialogHelper.snackbar("No Internet connection");
      // throw FetchDataException('No Internet connection', api.toString());
    } on TimeoutException {
      DialogHelper.snackbar("API not responded in time");
      // throw ApiNotRespondingException('API not responded in time', api.toString());
    }
  }

  //DELETE
  //OTHER

  dynamic _processResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson =  jsonDecode(response.body);
        return responseJson;
        break;
      case 201:
        var responseJson = jsonDecode(response.body);
        return responseJson;
        break;
      case 404:
        var responseJson1 = jsonDecode(response.body);
        print("Wrong url  ${response.request!.url.toString()}");
        DialogHelper.snackbar("Wrong Url");
        print(responseJson1);
        return responseJson1;
        break;
      case 400:
        print("Wrong url  ${response.request!.url.toString()}");
        throw BadRequestException(jsonDecode(response.body), response.request!.url.toString());
      case 401:
      case 403:
        throw UnAuthorizedException(utf8.decode(response.bodyBytes), response.request!.url.toString());
      case 422:
        throw BadRequestException(utf8.decode(response.bodyBytes), response.request!.url.toString());
      case 500:
      default:
      DialogHelper.snackbar("Error occured with code");
        throw FetchDataException('Error occured with code : ${response.statusCode}', response.request!.url.toString());
    }
  }
}