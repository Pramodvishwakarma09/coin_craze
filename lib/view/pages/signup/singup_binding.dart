import 'package:get/get.dart';
import 'package:project_stucture/view/pages/signup/signup_controller.dart';


class Page2Binding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<Page2Controller>(() => Page2Controller());
  }
}