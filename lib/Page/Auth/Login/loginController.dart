import 'package:get/get.dart';

class Logincontroller extends GetxController {
  final isChecked = false.obs;

  void toggleCheckbox(bool newValue) {
    isChecked.value = newValue;
  }
}
