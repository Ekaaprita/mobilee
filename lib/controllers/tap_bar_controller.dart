import 'package:get/get.dart';

class TapBarController extends GetxController {
  RxInt currentIndex = 0.obs;

  void setCurrentIndex(int index) {
    currentIndex.value = index;
  }
}
