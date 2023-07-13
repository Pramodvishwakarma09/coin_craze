import 'package:get/get.dart';

import 'login_controller.dart';

class Page1Binding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<LoginController>(() => LoginController());
  }
}