// ignore_for_file: unused_local_variable, unused_import, unused_element

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_loan_bazzar/Page/Appy/ApplyNowPage.dart';
import 'package:smart_loan_bazzar/Page/Appy/salaryDepositedBank/SalaryDepositedBankPage.dart';
import 'package:smart_loan_bazzar/Page/Appy/selectCity/selectCityPage.dart';
import 'package:smart_loan_bazzar/Page/Appy/selectCompany/selectCompanyPage.dart';
import 'package:smart_loan_bazzar/Utils/UtilsColors.dart';

class ApplyPage extends StatefulWidget {
  const ApplyPage({super.key});

  @override
  State<ApplyPage> createState() => _ApplyPageState();
}

class _ApplyPageState extends State<ApplyPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController occupationTypeController =
      TextEditingController();

  String? _mobileNumberError;
  String? _fullNameError;
  String? _occupationTypeError;

  void _validateForm() {
    setState(
      () {
        _mobileNumberError = null;
        _fullNameError = null;
        _occupationTypeError = null;

        if (mobileController.text.isEmpty) {
          _mobileNumberError = 'Please enter your mobile number';
        }

        if (fullNameController.text.isEmpty) {
          _fullNameError = 'Please enter your full name';
        }
        if (occupationTypeController.text.isEmpty) {
          _occupationTypeError = 'Please enter your Occupation Type';
        }

        if (_mobileNumberError == null &&
            _fullNameError == null &&
            _occupationTypeError == null) {
          print("Form is valid");
        }
      },
    );
  }

  String selectedCompany = "";
  String SelectCity = "";
  String SalaryDepositedBank = "";

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    final double screenWidth = mediaQuery.size.width;
    final double screenHeight = mediaQuery.size.height;
    final double fem = screenWidth / 375.0;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Apply"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(15 * fem),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(5 * fem),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35 * fem),
                      border: Border.all(color: Colors.black26),
                    ),
                    width: screenWidth,
                    child: TextFormField(
                      controller: fullNameController,
                      decoration: InputDecoration(
                        labelStyle: TextStyle(fontSize: 18 * fem),
                        labelText: "Full Name",
                        contentPadding:
                            EdgeInsets.only(left: 12 * fem, right: 12 * fem),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  // if (_fullNameError != null)
                  //   Padding(
                  //     padding: EdgeInsets.only(top: 5 * fem),
                  //     child: Text(
                  //       _fullNameError!,
                  //       style: TextStyle(color: Colors.red),
                  //     ),
                  //   ),
                  SizedBox(
                    height: 15 * fem,
                  ),
                  Container(
                    padding: EdgeInsets.all(5 * fem),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35 * fem),
                      border: Border.all(color: Colors.black26),
                    ),
                    width: screenWidth,
                    child: TextFormField(
                      controller: mobileController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelStyle: TextStyle(fontSize: 18 * fem),
                        labelText: "Mobile Number",
                        contentPadding:
                            EdgeInsets.only(left: 12 * fem, right: 12 * fem),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  // if (_mobileNumberError != null)
                  //   Padding(
                  //     padding: EdgeInsets.only(top: 5 * fem),
                  //     child: Text(
                  //       _mobileNumberError!,
                  //       style: TextStyle(color: Colors.red),
                  //     ),
                  //   ),
                  SizedBox(
                    height: 15 * fem,
                  ),
                  GestureDetector(
                    onTap: () async {
                      final result = await Get.to(() => SelectCompanyPage(
                            initialSelectedCompany:
                                selectedCompany, // Pass the selected company
                          ));
                      if (result != null) {
                        setState(() {
                          selectedCompany = result;
                        });
                      }
                      print("Select Company: $selectedCompany");
                    },
                    child: Container(
                      height: 60 * fem,
                      padding: EdgeInsets.only(left: 12 * fem, right: 12 * fem),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35 * fem),
                        border: Border.all(color: Colors.black26),
                      ),
                      width: screenWidth,
                      child: Row(
                        children: [
                          Text(
                            "Select Company",
                            style: TextStyle(
                                fontSize: 18 * fem, color: Colors.black87),
                          ),
                          Spacer(),
                          Container(
                            width: 100 * fem,
                            child: Text(
                              textAlign: TextAlign.right,
                              overflow: TextOverflow.ellipsis,
                              selectedCompany.isEmpty ? "" : selectedCompany,
                              style: TextStyle(
                                  fontSize: 18 * fem, color: Colors.black87),
                            ),
                          ),
                          Icon(Icons.arrow_drop_down)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15 * fem,
                  ),
                  GestureDetector(
                    onTap: () async {
                      final result = await Get.to(() => SelectCityPage(
                            SelectCity: SelectCity, // Pass the selected company
                          ));
                      if (result != null) {
                        setState(() {
                          SelectCity = result;
                        });
                      }
                      print("Select City: $SelectCity");
                    },
                    child: Container(
                      height: 60 * fem,
                      padding: EdgeInsets.only(left: 12 * fem, right: 12 * fem),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35 * fem),
                        border: Border.all(color: Colors.black26),
                      ),
                      width: screenWidth,
                      child: Row(
                        children: [
                          Text(
                            "Select City",
                            style: TextStyle(
                                fontSize: 18 * fem, color: Colors.black87),
                          ),
                          Spacer(),
                          Container(
                            width: 100 * fem,
                            child: Text(
                              textAlign: TextAlign.right,
                              overflow: TextOverflow.ellipsis,
                              SelectCity.isEmpty ? "" : SelectCity,
                              style: TextStyle(
                                  fontSize: 18 * fem, color: Colors.black87),
                            ),
                          ),
                          Icon(Icons.arrow_drop_down)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15 * fem,
                  ),
                  GestureDetector(
                    onTap: () async {
                      final result = await Get.to(() => SalaryDepositedBankPage(
                            SalaryDepositedBank:
                                SalaryDepositedBank, // Pass the selected company
                          ));
                      if (result != null) {
                        setState(() {
                          SalaryDepositedBank = result;
                        });
                      }
                      print("Salary Deposited Bank: $SalaryDepositedBank");
                    },
                    // onTap: () {
                    //   Get.to(
                    //     () => SalaryDepositedBankPage(),
                    //   );
                    //   print("Salary Deposited Bank");
                    // },
                    child: Container(
                      height: 60 * fem,
                      padding: EdgeInsets.only(left: 12 * fem, right: 12 * fem),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35 * fem),
                        border: Border.all(color: Colors.black26),
                      ),
                      width: screenWidth,
                      child: Row(
                        children: [
                          Text(
                            "Salary Deposited Bank",
                            style: TextStyle(
                                fontSize: 18 * fem, color: Colors.black87),
                          ),
                          Spacer(),
                          Container(
                            width: 65 * fem,
                            child: Text(
                              textAlign: TextAlign.right,
                              overflow: TextOverflow.ellipsis,
                              SalaryDepositedBank.isEmpty
                                  ? ""
                                  : SalaryDepositedBank,
                              style: TextStyle(
                                  fontSize: 18 * fem, color: Colors.black87),
                            ),
                          ),
                          Icon(Icons.arrow_drop_down)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15 * fem,
                  ),
                  Container(
                    padding: EdgeInsets.all(5 * fem),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35 * fem),
                      border: Border.all(color: Colors.black26),
                    ),
                    width: screenWidth,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelStyle: TextStyle(fontSize: 18 * fem),
                        labelText: "Occupation Type ",
                        contentPadding:
                            EdgeInsets.only(left: 12 * fem, right: 12 * fem),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15 * fem,
                  ),
                  Container(
                    padding: EdgeInsets.all(5 * fem),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35 * fem),
                      border: Border.all(color: Colors.black26),
                    ),
                    width: screenWidth,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelStyle: TextStyle(fontSize: 18 * fem),
                        labelText: "Monthly net income",
                        contentPadding:
                            EdgeInsets.only(left: 12 * fem, right: 12 * fem),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15 * fem,
                  ),
                  Container(
                    padding: EdgeInsets.all(5 * fem),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35 * fem),
                      border: Border.all(color: Colors.black26),
                    ),
                    width: screenWidth,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelStyle: TextStyle(fontSize: 18 * fem),
                        labelText: "Your Location ",
                        contentPadding:
                            EdgeInsets.only(left: 12 * fem, right: 12 * fem),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15 * fem,
                  ),
                  Container(
                    padding: EdgeInsets.all(5 * fem),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35 * fem),
                      border: Border.all(color: Colors.black26),
                    ),
                    width: screenWidth,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelStyle: TextStyle(fontSize: 18 * fem),
                        labelText: "PAN No.",
                        contentPadding:
                            EdgeInsets.only(left: 12 * fem, right: 12 * fem),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15 * fem,
                  ),
                  Container(
                    padding: EdgeInsets.all(5 * fem),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35 * fem),
                      border: Border.all(color: Colors.black26),
                    ),
                    width: screenWidth,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelStyle: TextStyle(fontSize: 18 * fem),
                        labelText: "Date Of Birth",
                        contentPadding:
                            EdgeInsets.only(left: 12 * fem, right: 12 * fem),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15 * fem,
                  ),
                  Container(
                    padding: EdgeInsets.all(5 * fem),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35 * fem),
                      border: Border.all(color: Colors.black26),
                    ),
                    width: screenWidth,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelStyle: TextStyle(fontSize: 18 * fem),
                        labelText: "Monthly Loan Obligation",
                        contentPadding:
                            EdgeInsets.only(left: 12 * fem, right: 12 * fem),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15 * fem,
                  ),
                  Container(
                    padding: EdgeInsets.all(5 * fem),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35 * fem),
                      border: Border.all(color: Colors.black26),
                    ),
                    width: screenWidth,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelStyle: TextStyle(fontSize: 18 * fem),
                        labelText: "Current job vintage in months",
                        contentPadding:
                            EdgeInsets.only(left: 12 * fem, right: 12 * fem),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15 * fem,
                  ),
                  Container(
                    padding: EdgeInsets.all(5 * fem),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35 * fem),
                      border: Border.all(color: Colors.black26),
                    ),
                    width: screenWidth,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelStyle: TextStyle(fontSize: 18 * fem),
                        labelText: "Total experience",
                        contentPadding:
                            EdgeInsets.only(left: 12 * fem, right: 12 * fem),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15 * fem,
                  ),
                  Container(
                    padding: EdgeInsets.all(5 * fem),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35 * fem),
                      border: Border.all(color: Colors.black26),
                    ),
                    width: screenWidth,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelStyle: TextStyle(fontSize: 18 * fem),
                        labelText: "Loan amount",
                        contentPadding:
                            EdgeInsets.only(left: 12 * fem, right: 12 * fem),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15 * fem,
                  ),
                  Container(
                    padding: EdgeInsets.all(5 * fem),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35 * fem),
                      border: Border.all(color: Colors.black26),
                    ),
                    width: screenWidth,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelStyle: TextStyle(fontSize: 18 * fem),
                        labelText: "Loan Tenure(Years)",
                        contentPadding:
                            EdgeInsets.only(left: 12 * fem, right: 12 * fem),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Container(
          child: Padding(
            padding: EdgeInsets.all(15 * fem),
            child: ElevatedButton(
              onPressed: () {
                // _validateForm();
                Get.to(
                  () => ApplyNowPage(),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Show Result",
                    style: TextStyle(
                      fontSize: 15 * fem,
                      fontWeight: FontWeight.w700,
                      color: AppColors.whiteColor,
                    ),
                  ),
                ],
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(screenWidth, 50 * fem),
                backgroundColor: AppColors.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25 * fem),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
