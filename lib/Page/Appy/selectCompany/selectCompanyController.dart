import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SelectCompanyController extends GetxController {
  final TextEditingController searchItemController = TextEditingController();
  var items = [
    "Fusion Techlab",
    "Cognizent",
    "TCS",
    "Wipro",
    "SD Private LTD.",
  ].obs;
  var filteredItems = <String>[].obs;
  var selectedIndex = Rxn<int>();
  var showSuffixIcon = false.obs;

  @override
  void onInit() {
    super.onInit();
    filteredItems.value = items;
    searchItemController.addListener(onSearchTextChanged);
  }

  onSearchTextChanged() {
    showSuffixIcon.value = searchItemController.text.isNotEmpty;
    filteredItems.value = items
        .where((item) => item
            .toLowerCase()
            .contains(searchItemController.text.toLowerCase()))
        .toList();
  }

  @override
  void dispose() {
    searchItemController.removeListener(onSearchTextChanged);
    searchItemController.dispose();
    super.dispose();
  }
}
