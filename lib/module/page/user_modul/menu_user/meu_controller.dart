import 'package:get/get.dart';

class MenuXController extends GetxController {
  RxInt page = 0.obs;
  RxBool showlogout = false.obs;

  void change(int value) {
    page.value = value;
  }
}
