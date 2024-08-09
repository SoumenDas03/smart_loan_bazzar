// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:smart_loan_bazzar/Page/Appy/selectCompany/selectCompanyController.dart';
// import 'package:smart_loan_bazzar/Utils/UtilsColors.dart';

// class SelectCompanyPage extends StatelessWidget {
//   const SelectCompanyPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final SelectCompanyController controller =
//         Get.put(SelectCompanyController());
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
//                     "Select Company",
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
//                     child: Obx(
//                       () => TextFormField(
//                         controller: controller.searchItemController,
//                         textAlign: TextAlign.left,
//                         decoration: InputDecoration(
//                           border: InputBorder.none,
//                           prefixIcon: Icon(Icons.search),
//                           hintText: "Search",
//                           contentPadding: EdgeInsets.only(top: 12 * fem),
//                           suffixIcon: Visibility(
//                             visible: controller.showSuffixIcon.value,
//                             child: GestureDetector(
//                               onTap: () {
//                                 controller.searchItemController.clear();
//                                 controller
//                                     .onSearchTextChanged(); // To reset the filtered list
//                               },
//                               child: Icon(Icons.close),
//                             ),
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
//               child: Obx(
//                 () => controller.filteredItems.isEmpty
//                     ? Padding(
//                         padding: EdgeInsets.all(15 * fem),
//                         child: Text("No item found"),
//                       )
//                     : ListView.builder(
//                         itemCount: controller.filteredItems.length,
//                         padding: EdgeInsets.all(15 * fem),
//                         itemBuilder: (context, index) {
//                           return GestureDetector(
//                             onTap: () {
//                               controller.selectedIndex.value = index;
//                               controller.searchItemController.text =
//                                   controller.filteredItems[index];
//                               controller.showSuffixIcon.value = true;
//                             },
//                             child: Row(
//                               children: [
//                                 Radio<int>(
//                                   value: index,
//                                   groupValue: controller.selectedIndex.value,
//                                   onChanged: (value) {
//                                     controller.selectedIndex.value = value;
//                                     controller.searchItemController.text =
//                                         controller.filteredItems[index];
//                                     controller.showSuffixIcon.value = true;
//                                   },
//                                 ),
//                                 Expanded(
//                                   child: Text(
//                                     controller.filteredItems[index]
//                                         .toUpperCase(),
//                                     style: TextStyle(fontSize: 18 * fem),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           );
//                         },
//                       ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_loan_bazzar/Utils/AppRout.dart';
import 'package:smart_loan_bazzar/Utils/UtilsColors.dart';
import 'package:http/http.dart' as http;

class SelectCompanyPage extends StatefulWidget {
  final String? initialSelectedCompany;

  const SelectCompanyPage({super.key, this.initialSelectedCompany});

  @override
  State<SelectCompanyPage> createState() => _SelectCompanyPageState();
}

class _SelectCompanyPageState extends State<SelectCompanyPage> {
  final TextEditingController searchItemController = TextEditingController();
  List<String> items = [];
  int? selectedIndex;
  bool showSuffixIcon = false;
  List<String> filteredItems = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    loadData();
    fetchBanks(); // Fetch cities from the API
    searchItemController.addListener(_onSearchTextChanged);

    if (widget.initialSelectedCompany != null) {
      selectedIndex = items.indexOf(
        widget.initialSelectedCompany.toString(),
      );
    }
  }

  String? token;

  loadData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    token = prefs.getString('token');
    await fetchBanks();
  }

  Future<void> fetchBanks() async {
    try {
      final response = await http.get(
        Uri.parse(AppRout.BaseUrl + AppRout.Get_All_Company),
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = json.decode(response.body);
        final List<dynamic> companiesData = responseData['companies']['data'];

        print('Banks Data: $companiesData');

        setState(() {
          items = companiesData
              .map((banks) => banks['name']?.toString() ?? 'Unknown banks')
              .toList();
          filteredItems = items;
          isLoading = false;
        });
      } else {
        setState(() {
          isLoading = false;
        });
        Get.snackbar(
          'Error',
          'Failed to load cities. Status code: ${response.statusCode}',
        );
      }
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      Get.snackbar('Error', 'An error occurred: $e');
    }
  }

  void _onSearchTextChanged() {
    setState(() {
      showSuffixIcon = searchItemController.text.isNotEmpty;
      filteredItems = items
          .where((item) => item
              .toLowerCase()
              .contains(searchItemController.text.toLowerCase()))
          .toList();
    });
  }

  @override
  void dispose() {
    searchItemController.removeListener(_onSearchTextChanged);
    searchItemController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                    "Select Company",
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
                    child: TextFormField(
                      controller: searchItemController,
                      textAlign: TextAlign.left,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search),
                        hintText: "Search",
                        contentPadding: EdgeInsets.only(top: 12 * fem),
                        suffixIcon: Visibility(
                          visible: showSuffixIcon,
                          child: GestureDetector(
                            onTap: () {
                              searchItemController.clear();
                              _onSearchTextChanged(); // To reset the filtered list
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
            Container(
              height: 1.5 * fem,
              color: Colors.black12,
            ),
            isLoading
                ? Center(
                    child: Container(
                      padding: EdgeInsets.only(top: 100),
                      child: Text("Loading..."),
                    ),
                  )
                : Expanded(
                    child: ListView.builder(
                      itemCount: filteredItems.length,
                      padding: EdgeInsets.all(15 * fem),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                            Get.back(result: filteredItems[index]);
                          },
                          child: Row(
                            children: [
                              Radio<int>(
                                value: index,
                                groupValue: selectedIndex,
                                onChanged: (value) {
                                  setState(() {
                                    selectedIndex = value;
                                  });
                                  Get.back(result: filteredItems[index]);
                                },
                              ),
                              Expanded(
                                child: Text(
                                  filteredItems[index].toUpperCase(),
                                  style: TextStyle(fontSize: 18 * fem),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
