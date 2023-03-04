import 'package:get/get.dart';

class MenuController extends GetxController {
  RxInt page = 0.obs;

  void change(int value) {
    page.value = value;
  }
}
