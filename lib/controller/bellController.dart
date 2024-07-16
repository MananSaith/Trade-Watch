import 'package:get/get.dart';

class MyController extends GetxController {
  RxBool flag = false.obs;

  void toggleFlag() {
    flag.value = !flag.value;
  }
}

