import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_loan_bazzar/Utils/AppRout.dart';
import 'package:smart_loan_bazzar/Utils/UtilsColors.dart';
import 'package:http/http.dart' as http;

class ExistingBankPage extends StatefulWidget {
  const ExistingBankPage({super.key, required this.ExistingBankName});
  final String ExistingBankName;

  @override
  State<ExistingBankPage> createState() => _ExistingBankPageState();
}

class _ExistingBankPageState extends State<ExistingBankPage> {
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

    if (widget.ExistingBankName != null) {
      selectedIndex = items.indexOf(widget.ExistingBankName);
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
        Uri.parse(AppRout.BaseUrl + AppRout.Get_All_Bank),
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = json.decode(response.body);
        final List<dynamic> banksData = responseData['banks'];

        print('Banks Data: $banksData');

        setState(() {
          items = banksData
              .map((banks) => banks['bank_name']?.toString() ?? 'Unknown banks')
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
  // List<String> items = [
  //   "Andhra Bank",
  //   "Indian Bank",
  //   "Allahabad Bank",
  //   "Andhra Bank",
  //   "Axis Bank",
  //   "Bank of Bahrain and Kuwait",
  //   "Bank of Baroda - Corporate Banking",
  //   "Bank of Baroda - Retail Banking",
  //   "Bank of India",
  //   "Bank of Maharashtra",
  //   "Canara Bank",
  //   "Central Bank of India",
  //   "City Union Bank",
  //   "Corporation Bank",
  //   "Deutsche Bank",
  //   "Development Credit Bank",
  //   "Dhanlaxmi Bank",
  //   "Federal Bank",
  //   "ICICI Bank",
  //   "IDBI Bank",
  //   "Indian Bank",
  //   "Indian Overseas Bank",
  //   "IndusInd Bank",
  //   "ING Vysya Bank",
  //   "Jammu and Kashmir Bank",
  //   "Karnataka Bank Ltd",
  //   "Karur Vysya Bank",
  //   "Kotak Bank",
  //   "Laxmi Vilas Bank",
  //   "Oriental Bank of Commerce",
  //   "Punjab National Bank - Corporate Banking",
  //   "Punjab National Bank - Retail Banking",
  //   "Punjab & Sind Bank",
  //   "Shamrao Vitthal Co-operative Bank",
  //   "South Indian Bank",
  //   "State Bank of Bikaner & Jaipur",
  //   "State Bank of Hyderabad",
  //   "State Bank of India",
  //   "State Bank of Mysore",
  //   "State Bank of Patiala",
  //   "State Bank of Travancore",
  //   "Syndicate Bank",
  //   "Tamilnad Mercantile Bank Ltd.",
  //   "UCO Bank",
  //   "Union Bank of India",
  //   "United Bank of India",
  //   "Vijaya Bank",
  //   "Yes Bank Ltd"
  // ];
  // int? selectedIndex;
  // bool showSuffixIcon = false;
  // List<String> filteredItems = [];

  // @override
  // void initState() {
  //   super.initState();
  //   filteredItems = items;
  //   searchItemController.addListener(_onSearchTextChanged);

  //   if (widget.ExistingBankName != null) {
  //     selectedIndex = items.indexOf(widget.ExistingBankName);
  //   }
  // }

  // void _onSearchTextChanged() {
  //   setState(() {
  //     showSuffixIcon = searchItemController.text.isNotEmpty;
  //     filteredItems = items
  //         .where((item) => item
  //             .toLowerCase()
  //             .contains(searchItemController.text.toLowerCase()))
  //         .toList();
  //   });
  // }

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
                    "Select Existing Bank Name",
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
                              // searchItemController.text = filteredItems[index];
                              // showSuffixIcon =
                              //     true; // Ensure the suffix icon is visible
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
                                    // searchItemController.text = filteredItems[index];
                                    // showSuffixIcon =
                                    //     true; // Ensure the suffix icon is visible
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
