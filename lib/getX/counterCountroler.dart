import 'package:get/get.dart';

class counterControlor extends GetxController {
  var number = 0.obs;

  void increment() {
    number++;
  }
}
