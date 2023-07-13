import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'app_exceptions.dart';

const String baseUrl = 'https://631c37911b470e0e12fcdd0b.mockapi.io/api';
 const int TIME_OUT_DURATION = 60;

class BaseClient {
  var client = http.Client();

  //GET
  Future<dynamic> get(String api) async {
    var url = Uri.parse(api);
    // var _headers = {
    //   'Authorization': 'Bearer sfie328370428387=',
    //   'api_key': 'ief873fj38uf38uf83u839898989',
    // };
    try {
      var response = await client.get(url);
      if (response.statusCode == 200) {
        print("response 200 : ${jsonDecode(response.body)}");
        return json.decode(response.body);
      } else {
        // throw AppException(response.body);
        //throw exception and catch it in UI
        print("Error 01: " + response.body);
        print("Error 02: " + "${response.statusCode}");

      }
    }on SocketException {
      throw FetchDataException('No Internet connection', api.toString());
    } on TimeoutException {
      throw ApiNotRespondingException('API not responded in time', api.toString());
    }catch(e){
      print("Catch Error 03: $e");
    }

  }

  Future<dynamic> post(String api, dynamic object) async {
    var url = Uri.parse(baseUrl + api);
    var _payload = json.encode(object);
    var _headers = {
      'Authorization': 'Bearer sfie328370428387=',
      'Content-Type': 'application/json',
      'api_key': 'ief873fj38uf38uf83u839898989',
    };

    var response = await client.post(url, body: _payload, headers: _headers);
    if (response.statusCode == 201) {
      return response.body;
    } else {
      //throw exception and catch it in UI
    }
  }

  ///PUT Request
  Future<dynamic> put(String api, dynamic object) async {
    var url = Uri.parse(baseUrl + api);
    var _payload = json.encode(object);
    var _headers = {
      'Authorization': 'Bearer sfie328370428387=',
      'Content-Type': 'application/json',
      'api_key': 'ief873fj38uf38uf83u839898989',
    };

    var response = await client.put(url, body: _payload, headers: _headers);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      //throw exception and catch it in UI
    }
  }

  Future<dynamic> delete(String api) async {
    var url = Uri.parse(baseUrl + api);
    var _headers = {
      'Authorization': 'Bearer sfie328370428387=',
      'api_key': 'ief873fj38uf38uf83u839898989',
    };

    var response = await client.delete(url, headers: _headers);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      //throw exception and catch it in UI
    }
  }
}