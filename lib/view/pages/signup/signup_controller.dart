import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class  Page2Controller extends GetxController {
  var page1Name = "page Name ";
  var count = 0.obs;


  increment(){
    return count++;
  }

}