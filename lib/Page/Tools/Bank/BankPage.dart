import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_loan_bazzar/Page/Appy/salaryDepositedBank/salaryDepositedBankController.dart';
import 'package:smart_loan_bazzar/Utils/UtilsColors.dart';

class BankPage extends StatelessWidget {
  const BankPage({super.key});

  @override
  Widget build(BuildContext context) {
    final SalaryDepositedBankController controller =
        Get.put(SalaryDepositedBankController());
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    final double screenWidth = mediaQuery.size.width;
    final double fem = screenWidth / 375.0;

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(15 * fem),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(
                      CupertinoIcons.clear_circled_solid,
                      color: Colors.black,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "Bank",
                    style: TextStyle(
                        fontSize: 20 * fem, color: AppColors.primaryColor),
                  ),
                  Spacer(),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15 * fem),
              child: Material(
                elevation: 3 * fem,
                child: Padding(
                  padding: EdgeInsets.only(left: 8 * fem, right: 8 * fem),
                  child: Center(
                    child: Obx(
                      () => TextFormField(
                        controller: controller.searchItemController,
                        textAlign: TextAlign.left,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search),
                          hintText: "Search",
                          contentPadding: EdgeInsets.only(top: 12 * fem),
                          suffixIcon: Visibility(
                            visible: controller.showSuffixIcon.value,
                            child: GestureDetector(
                              onTap: () {
                                controller.searchItemController.clear();
                                controller
                                    .onSearchTextChanged(); // To reset the filtered list
                              },
                              child: Icon(Icons.close),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 1.5 * fem,
              color: Colors.black12,
            ),
            Expanded(
              child: Obx(
                () => controller.filteredItems.isEmpty
                    ? Padding(
                        padding: EdgeInsets.all(15 * fem),
                        child: Text("No item found"),
                      )
                    : ListView.builder(
                        itemCount: controller.filteredItems.length,
                        padding: EdgeInsets.all(15 * fem),
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              controller.selectedIndex.value = index;
                              controller.searchItemController.text =
                                  controller.filteredItems[index];
                              controller.showSuffixIcon.value = true;
                            },
                            child: Row(
                              children: [
                                Radio<int>(
                                  value: index,
                                  groupValue: controller.selectedIndex.value,
                                  onChanged: (value) {
                                    controller.selectedIndex.value = value;
                                    controller.searchItemController.text =
                                        controller.filteredItems[index];
                                    controller.showSuffixIcon.value = true;
                                  },
                                ),
                                Expanded(
                                  child: Text(
                                    controller.filteredItems[index]
                                        .toUpperCase(),
                                    style: TextStyle(fontSize: 18 * fem),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:smart_loan_bazzar/Utils/UtilsColors.dart';

// class BankPage extends StatefulWidget {
//   const BankPage({super.key});

//   @override
//   State<BankPage> createState() => _BankPageState();
// }

// class _BankPageState extends State<BankPage> {
//   final TextEditingController searchItemController = TextEditingController();
//   List<String> items = [
//     "Andhra Bank",
//     "Indian Bank",
//     "Allahabad Bank",
//     "Andhra Bank",
//     "Axis Bank",
//     "Bank of Bahrain and Kuwait",
//     "Bank of Baroda - Corporate Banking",
//     "Bank of Baroda - Retail Banking",
//     "Bank of India",
//     "Bank of Maharashtra",
//     "Canara Bank",
//     "Central Bank of India",
//     "City Union Bank",
//     "Corporation Bank",
//     "Deutsche Bank",
//     "Development Credit Bank",
//     "Dhanlaxmi Bank",
//     "Federal Bank",
//     "ICICI Bank",
//     "IDBI Bank",
//     "Indian Bank",
//     "Indian Overseas Bank",
//     "IndusInd Bank",
//     "ING Vysya Bank",
//     "Jammu and Kashmir Bank",
//     "Karnataka Bank Ltd",
//     "Karur Vysya Bank",
//     "Kotak Bank",
//     "Laxmi Vilas Bank",
//     "Oriental Bank of Commerce",
//     "Punjab National Bank - Corporate Banking",
//     "Punjab National Bank - Retail Banking",
//     "Punjab & Sind Bank",
//     "Shamrao Vitthal Co-operative Bank",
//     "South Indian Bank",
//     "State Bank of Bikaner & Jaipur",
//     "State Bank of Hyderabad",
//     "State Bank of India",
//     "State Bank of Mysore",
//     "State Bank of Patiala",
//     "State Bank of Travancore",
//     "Syndicate Bank",
//     "Tamilnad Mercantile Bank Ltd.",
//     "UCO Bank",
//     "Union Bank of India",
//     "United Bank of India",
//     "Vijaya Bank",
//     "Yes Bank Ltd"
//   ];
//   int? selectedIndex;
//   bool showSuffixIcon = false;
//   List<String> filteredItems = [];

//   @override
//   void initState() {
//     super.initState();
//     filteredItems = items;
//     searchItemController.addListener(_onSearchTextChanged);
//   }

//   void _onSearchTextChanged() {
//     setState(() {
//       showSuffixIcon = searchItemController.text.isNotEmpty;
//       filteredItems = items
//           .where((item) => item
//               .toLowerCase()
//               .contains(searchItemController.text.toLowerCase()))
//           .toList();
//     });
//   }

//   @override
//   void dispose() {
//     searchItemController.removeListener(_onSearchTextChanged);
//     searchItemController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final MediaQueryData mediaQuery = MediaQuery.of(context);
//     final double screenWidth = mediaQuery.size.width;
//     final double fem = screenWidth / 375.0;
//     return SafeArea(
//       child: Scaffold(
//         body: Column(
//           children: [
//             Padding(
//               padding: EdgeInsets.all(15 * fem),
//               child: Row(
//                 children: [
//                   GestureDetector(
//                     onTap: () {
//                       Get.back();
//                     },
//                     child: Icon(
//                       CupertinoIcons.clear_circled_solid,
//                       color: Colors.black,
//                     ),
//                   ),
//                   Spacer(),
//                   Text(
//                     "Salary Deposited Bank",
//                     style: TextStyle(
//                         fontSize: 20 * fem, color: AppColors.primaryColor),
//                   ),
//                   Spacer(),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.all(15 * fem),
//               child: Material(
//                 elevation: 3 * fem,
//                 child: Padding(
//                   padding: EdgeInsets.only(left: 8 * fem, right: 8 * fem),
//                   child: Center(
//                     child: TextFormField(
//                       controller: searchItemController,
//                       textAlign: TextAlign.left,
//                       decoration: InputDecoration(
//                         border: InputBorder.none,
//                         prefixIcon: Icon(Icons.search),
//                         hintText: "Search",
//                         contentPadding: EdgeInsets.only(top: 12 * fem),
//                         suffixIcon: Visibility(
//                           visible: showSuffixIcon,
//                           child: GestureDetector(
//                             onTap: () {
//                               searchItemController.clear();
//                               _onSearchTextChanged(); // To reset the filtered list
//                             },
//                             child: Icon(Icons.close),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Container(
//               height: 1.5 * fem,
//               color: Colors.black12,
//             ),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: filteredItems.length,
//                 padding: EdgeInsets.all(15 * fem),
//                 itemBuilder: (context, index) {
//                   return GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         selectedIndex = index;
//                         searchItemController.text = filteredItems[index];
//                         showSuffixIcon =
//                             true; // Ensure the suffix icon is visible
//                       });
//                     },
//                     child: Row(
//                       children: [
//                         Radio<int>(
//                           value: index,
//                           groupValue: selectedIndex,
//                           onChanged: (value) {
//                             setState(() {
//                               selectedIndex = value;
//                               searchItemController.text = filteredItems[index];
//                               showSuffixIcon =
//                                   true; // Ensure the suffix icon is visible
//                             });
//                           },
//                         ),
//                         Expanded(
//                           child: Text(
//                             filteredItems[index].toUpperCase(),
//                             style: TextStyle(fontSize: 18 * fem),
//                           ),
//                         ),
//                       ],
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
