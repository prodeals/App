import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class page extends GetxController {
  var Page = 0.obs;

  void changePage(int val) {
    Page = val.obs;
  }
}
