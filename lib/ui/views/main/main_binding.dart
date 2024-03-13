import 'package:flutter_pos/ui/views/main/main_controller.dart';
import 'package:get/get.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
     Get.lazyPut(() => MainController());
  }

}