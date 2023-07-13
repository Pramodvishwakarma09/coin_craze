import 'dart:io';
import 'package:device_info/device_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:project_stucture/view/dialogs/dialogs.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../consts/app_urls.dart';
import '../../../routes/app_routes.dart';
import '../../../services/base_client01.dart';
import 'data_model.dart';


class ProductController extends GetxController {

  RxBool isLoading = false.obs;
  ExamsubjectModel ? subjects;


  @override
  void onReady() {
    fetchProducts();
    super.onReady();

  }
   Future<void> fetchProducts() async {
      isLoading(true);
      var response = await BaseClient01().get(Uri.parse('https://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline'));
      print(response);
      subjects=ExamsubjectModel.fromJson(response.body);;
      isLoading(false);

    }



}

