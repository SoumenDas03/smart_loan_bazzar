import 'package:get/get.dart';

class Registercontroller extends GetxController {
  final isChecked = false.obs;

  void toggleCheckbox(bool newValue) {
    isChecked.value = newValue;
  }
}
