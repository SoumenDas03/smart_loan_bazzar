import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class BankController extends GetxController {
  final TextEditingController searchItemController = TextEditingController();
  var items = [
    "Andhra Bank",
    "Indian Bank",
    "Allahabad Bank",
    "Andhra Bank",
    "Axis Bank",
    "Bank of Bahrain and Kuwait",
    "Bank of Baroda - Corporate Banking",
    "Bank of Baroda - Retail Banking",
    "Bank of India",
    "Bank of Maharashtra",
    "Canara Bank",
    "Central Bank of India",
    "City Union Bank",
    "Corporation Bank",
    "Deutsche Bank",
    "Development Credit Bank",
    "Dhanlaxmi Bank",
    "Federal Bank",
    "ICICI Bank",
    "IDBI Bank",
    "Indian Bank",
    "Indian Overseas Bank",
    "IndusInd Bank",
    "ING Vysya Bank",
    "Jammu and Kashmir Bank",
    "Karnataka Bank Ltd",
    "Karur Vysya Bank",
    "Kotak Bank",
    "Laxmi Vilas Bank",
    "Oriental Bank of Commerce",
    "Punjab National Bank - Corporate Banking",
    "Punjab National Bank - Retail Banking",
    "Punjab & Sind Bank",
    "Shamrao Vitthal Co-operative Bank",
    "South Indian Bank",
    "State Bank of Bikaner & Jaipur",
    "State Bank of Hyderabad",
    "State Bank of India",
    "State Bank of Mysore",
    "State Bank of Patiala",
    "State Bank of Travancore",
    "Syndicate Bank",
    "Tamilnad Mercantile Bank Ltd.",
    "UCO Bank",
    "Union Bank of India",
    "United Bank of India",
    "Vijaya Bank",
    "Yes Bank Ltd"
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
