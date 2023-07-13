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


class  LoginController extends GetxController {

  TextEditingController emailController =    TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final   _formkey = GlobalKey<FormState>();



  RxBool isLoadig =false.obs;
  var deviceType;

  @override
  void onReady() {
    super.onReady();
  }



  Future<void> devicTypeCheck()async{
    if (Platform.isAndroid) {
      var androidInfo = await DeviceInfoPlugin().androidInfo;
      var release = androidInfo.version.release;
      var sdkInt = androidInfo.version.sdkInt;
      var manufacturer = androidInfo.manufacturer;
      var model = androidInfo.model;
      print('Android $release (SDK $sdkInt), $manufacturer $model');
      deviceType="0";
    }else{
      deviceType="1";
    }
  }


  loginwithEmail()async{

      final response = await BaseClient01().post(Appurls.login,{
        "email": emailController.text.trim(),
        "password": passwordController.text,
        "fcm_token" : "demo",
        "device_type" : "1",
      });
      print(response);
      var status= response["status"];
      print( "status ___$status");
      if(status==200){
        var token = response["toekn"];
        int user_id = response["data"][0]["id"];
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setBool("isLoggedIn", true);
        prefs.setInt('user_id', user_id);
        prefs.setString( 'token' ,"token" );
        emailController.clear();
        passwordController.clear();
        Get.toNamed(AppRoutes.homePage);
      }
      var msg= response["message"];
      print( "msg ___$msg");
      DialogHelper.snackbar(msg);
  }

}

