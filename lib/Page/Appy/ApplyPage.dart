// ignore_for_file: unused_local_variable, unused_import, unused_element
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_loan_bazzar/Page/Appy/ApplyController.dart';
import 'package:smart_loan_bazzar/Page/Appy/ApplyNowPage.dart';
import 'package:smart_loan_bazzar/Page/Appy/ExistingBank/ExistingBank.dart';
import 'package:smart_loan_bazzar/Page/Appy/salaryDepositedBank/SalaryDepositedBankPage.dart';
import 'package:smart_loan_bazzar/Page/Appy/selectCity/selectCityPage.dart';
import 'package:smart_loan_bazzar/Page/Appy/selectCompany/selectCompanyPage.dart';
import 'package:smart_loan_bazzar/Utils/UtilsColors.dart';

class ApplyPage extends StatefulWidget {
  const ApplyPage({super.key, required this.applynow});
  final String applynow;

  @override
  State<ApplyPage> createState() => _ApplyPageState();
}

class _ApplyPageState extends State<ApplyPage> {
  //Personal Loan
  //Parallel Loan
  //Balance Transfer
  //Top Up
  //Credit Card

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  // final TextEditingController selectCompanyController = TextEditingController();
  // final TextEditingController selectCityController = TextEditingController();
  // final TextEditingController SalaryDepositedBankController =
  //     TextEditingController();
  final TextEditingController occupationTypeController =
      TextEditingController();
  final TextEditingController monthlyNetIncomeController =
      TextEditingController();
  final TextEditingController yourLocationController = TextEditingController();
  final TextEditingController PANController = TextEditingController();
  final TextEditingController DateOfBirthController = TextEditingController();
  final TextEditingController MonthlyLoanObligationController =
      TextEditingController();
  final TextEditingController CurrentJobVintageController =
      TextEditingController();
  final TextEditingController totalExperienceController =
      TextEditingController();
  final TextEditingController LoanAmountController = TextEditingController();
  final TextEditingController LoanTenureController = TextEditingController();
  final TextEditingController totalOutstandingController =
      TextEditingController();
  // final TextEditingController  ExistingBankController= TextEditingController();

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
  String ExistingBankName = "";

  @override
  void initState() {
    DateOfBirthController.text = ""; //set the initial value of text field
    super.initState();
  }

  final Applycontroller applycontroller = Get.put(Applycontroller());

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    final double screenWidth = mediaQuery.size.width;
    final double screenHeight = mediaQuery.size.height;
    final double fem = screenWidth / 375.0;
    var applyLoan = widget.applynow == "Personal Loan";
    var applyParallelLoan = widget.applynow == "Parallel Loan";
    var applyTransfer = widget.applynow == "Balance Transfer";
    var applyTopup = widget.applynow == "Top Up";
    var applyCreditcard = widget.applynow == "Credit Card";

    String existingBankNameController = ExistingBankName.isEmpty
        ? ""
        : ExistingBankName.replaceAll(
                RegExp(r'\{(.*?)\}').firstMatch(ExistingBankName)?.group(1) ??
                    '',
                "")
            .replaceAll(RegExp(r'\{?\}?'), '')
            .trim();

    String salaryDepositedBankController = SalaryDepositedBank.isEmpty
        ? ""
        : SalaryDepositedBank.replaceAll(
                RegExp(r'\{(.*?)\}')
                        .firstMatch(SalaryDepositedBank)
                        ?.group(1) ??
                    '',
                "")
            .replaceAll(RegExp(r'\{?\}?'), '')
            .trim();

    String selectCompanyController = selectedCompany.isEmpty
        ? ""
        : selectedCompany
            .replaceAll(
                RegExp(r'\{(.*?)\}').firstMatch(selectedCompany)?.group(1) ??
                    '',
                "")
            .replaceAll(RegExp(r'\{?\}?'), '')
            .trim();

    String selectCityController = SelectCity.isEmpty
        ? ""
        : SelectCity.replaceAll(
                RegExp(r'\{(.*?)\}').firstMatch(SelectCity)?.group(1) ?? '', "")
            .replaceAll(RegExp(r'\{?\}?'), '')
            .trim();

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.applynow),
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
                              selectedCompany.isEmpty
                                  ? ""
                                  : selectedCompany
                                          .replaceAll(RegExp(r'\{\d+\}'), '')
                                          .replaceAll(RegExp(r'[{}]'), '') ??
                                      '',
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
                              SelectCity.isEmpty
                                  ? ""
                                  : SelectCity.replaceAll(
                                              RegExp(r'\{\d+\}'), '')
                                          .replaceAll(RegExp(r'[{}]'), '') ??
                                      '',
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
                                  : SalaryDepositedBank.replaceAll(
                                              RegExp(r'\{\d+\}'), '')
                                          .replaceAll(RegExp(r'[{}]'), '') ??
                                      '',
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
                      controller: occupationTypeController,
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
                      controller: monthlyNetIncomeController,
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
                      controller: yourLocationController,
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
                      controller: PANController,
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
                      controller: DateOfBirthController,
                      decoration: InputDecoration(
                        labelStyle: TextStyle(fontSize: 18 * fem),
                        labelText: "Date Of Birth",
                        contentPadding:
                            EdgeInsets.only(left: 12 * fem, right: 12 * fem),
                        border: InputBorder.none,
                      ),
                      readOnly:
                          true, //set it true, so that user will not able to edit text
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1900),
                          lastDate: DateTime(2101),
                        );

                        if (pickedDate != null) {
                          print(pickedDate);
                          String formattedDate = DateFormat(
                            'MM-dd-yyyy',
                          ).format(pickedDate);
                          print(formattedDate);
                          setState(() {
                            DateOfBirthController.text =
                                formattedDate; //set output date to TextField value.
                          });
                        } else {
                          print("Date is not selected");
                        }
                      },
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
                      controller: MonthlyLoanObligationController,
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
                      controller: CurrentJobVintageController,
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
                      controller: totalExperienceController,
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
                      controller: LoanAmountController,
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
                      controller: LoanTenureController,
                      decoration: InputDecoration(
                        labelStyle: TextStyle(fontSize: 18 * fem),
                        labelText: "Loan Tenure(Years)",
                        contentPadding:
                            EdgeInsets.only(left: 12 * fem, right: 12 * fem),
                        border: InputBorder.none,
                      ),
                    ),
                  ),

                  applyParallelLoan == true || applyTopup == true
                      ? Padding(
                          padding: EdgeInsets.only(top: 15 * fem),
                          child: GestureDetector(
                            onTap: () async {
                              final result =
                                  await Get.to(() => ExistingBankPage(
                                        ExistingBankName:
                                            ExistingBankName, // Pass the selected company
                                      ));
                              if (result != null) {
                                setState(() {
                                  ExistingBankName = result;
                                });
                              }
                              print("Salary Deposited Bank: $ExistingBankName");
                            },
                            // onTap: () {
                            //   Get.to(
                            //     () => SalaryDepositedBankPage(),
                            //   );
                            //   print("Salary Deposited Bank");
                            // },
                            child: Container(
                              height: 60 * fem,
                              padding: EdgeInsets.only(
                                  left: 12 * fem, right: 12 * fem),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(35 * fem),
                                border: Border.all(color: Colors.black26),
                              ),
                              width: screenWidth,
                              child: Row(
                                children: [
                                  Text(
                                    "Existing Bank Name",
                                    style: TextStyle(
                                        fontSize: 18 * fem,
                                        color: Colors.black87),
                                  ),
                                  Spacer(),
                                  Container(
                                    width: 65 * fem,
                                    child: Text(
                                      textAlign: TextAlign.right,
                                      overflow: TextOverflow.ellipsis,
                                      ExistingBankName.isEmpty
                                          ? ""
                                          : ExistingBankName.replaceAll(
                                                      RegExp(r'\{\d+\}'), '')
                                                  .replaceAll(
                                                      RegExp(r'[{}]'), '') ??
                                              '',
                                      style: TextStyle(
                                          fontSize: 18 * fem,
                                          color: Colors.black87),
                                    ),
                                  ),
                                  Icon(Icons.arrow_drop_down)
                                ],
                              ),
                            ),
                          ),
                        )
                      : Text(""),
                  applyCreditcard == true
                      ? Padding(
                          padding: EdgeInsets.only(top: 15 * fem),
                          child: Container(
                            padding: EdgeInsets.all(5 * fem),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35 * fem),
                              border: Border.all(color: Colors.black26),
                            ),
                            width: screenWidth,
                            child: TextFormField(
                              controller: totalOutstandingController,
                              decoration: InputDecoration(
                                labelStyle: TextStyle(fontSize: 18 * fem),
                                labelText: "Total Outstanding",
                                contentPadding: EdgeInsets.only(
                                    left: 12 * fem, right: 12 * fem),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        )
                      : Text(""),
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
                // Get.to(
                //   () => ApplyNowPage(),
                // );
                applycontroller.applyLoanForm(
                  name: fullNameController.text.trim().toString(),
                  loan_type: widget.applynow,
                  phone_number: mobileController.text.trim().toString(),
                  occupation: occupationTypeController.text.trim().toString(),
                  othercompany: "",
                  company_id: selectCompanyController.toString(),
                  city_id: selectCityController.toString(),
                  monthely_net_income:
                      monthlyNetIncomeController.text.trim().toString(),
                  location: yourLocationController.text.trim().toString(),
                  pancard_no: PANController.text.trim().toString(),
                  date_of_birth: DateOfBirthController.text.trim().toString(),
                  monthly_loan_obligation:
                      MonthlyLoanObligationController.text.trim().toString(),
                  total_exprienced:
                      totalExperienceController.text.trim().toString(),
                  current_job_vintage:
                      CurrentJobVintageController.text.trim().toString(),
                  salary_deposited_bank: salaryDepositedBankController,
                  other_Salarybank: "",
                  loan_amt: LoanAmountController.text.trim().toString(),
                  loan_tenure: LoanTenureController.text.trim().toString(),
                  existing_bank: existingBankNameController.toString(),
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
