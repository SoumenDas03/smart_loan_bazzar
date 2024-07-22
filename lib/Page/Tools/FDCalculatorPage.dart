// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:smart_loan_bazzar/Utils/UtilsColors.dart';

class FDCalculatorPge extends StatefulWidget {
  const FDCalculatorPge({super.key});

  @override
  State<FDCalculatorPge> createState() => _FDCalculatorPgeState();
}

class _FDCalculatorPgeState extends State<FDCalculatorPge> {
  double loanAmount = 50000;
  double interestRate = 5;
  double tenure = 0;
  final List<String> _dropdownItems = [
    'Monthly',
    'Quarterly',
    'Half Yearly',
    'Yearly',
  ];

  // Variable to hold the selected item
  String? _selectedItem;
  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    final double screenWidth = mediaQuery.size.width;
    final double screenHeight = mediaQuery.size.height;
    final double fem = screenWidth / 375.0;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "FD Calculator",
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(15 * fem),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Calculator Loan EMI",
                  style: TextStyle(
                      fontSize: 18 * fem, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10 * fem,
                ),
                Text(
                  "Loan Amount",
                  style: TextStyle(
                    fontSize: 18 * fem,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 225 * fem,
                      child: Slider(
                        activeColor: AppColors.primaryColor,
                        thumbColor: AppColors.primaryColor,
                        value: loanAmount,
                        min: 50000,
                        max: 5000000,
                        divisions: 4950000, // Adjusted to fit the range
                        label: loanAmount.round().toString(),
                        onChanged: (double value) {
                          setState(() {
                            loanAmount = value;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 100 * fem,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8 * fem),
                        color: AppColors.primaryColor,
                      ),
                      child: Center(
                        child: Text(
                          "₹ ${loanAmount.round()}",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15 * fem,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                //Interest Rate
                SizedBox(
                  height: 10 * fem,
                ),
                Text(
                  "Interest Rate",
                  style: TextStyle(
                    fontSize: 18 * fem,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 225 * fem,
                      child: Slider(
                        activeColor: AppColors.primaryColor,
                        thumbColor: AppColors.primaryColor,
                        value: interestRate,
                        min: 5,
                        max: 25,
                        divisions: 50, // Adjusted to fit the range
                        label: interestRate.round().toString(),
                        onChanged: (double value) {
                          setState(() {
                            interestRate = value;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 100 * fem,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8 * fem),
                        color: AppColors.primaryColor,
                      ),
                      child: Center(
                        child: Text(
                          "${interestRate.round()}%",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15 * fem,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                //Tenure
                SizedBox(
                  height: 10 * fem,
                ),
                Text(
                  "Tenure(Months)",
                  style: TextStyle(
                    fontSize: 18 * fem,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 225 * fem,
                      child: Slider(
                        activeColor: AppColors.primaryColor,
                        thumbColor: AppColors.primaryColor,
                        value: tenure,
                        min: 0,
                        max: 10,
                        divisions: 10, // Adjusted to fit the range
                        label: tenure.round().toString(),
                        onChanged: (double value) {
                          setState(() {
                            tenure = value;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 100 * fem,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8 * fem),
                        color: AppColors.primaryColor,
                      ),
                      child: Center(
                        child: Text(
                          "${tenure.round()} Years",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15 * fem,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Compunding Fequency",
                      style: TextStyle(
                          fontSize: 15 * fem, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5 * fem,
                    ),
                    Spacer(),
                    DropdownButton<String>(
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.only(right: 10 * fem),
                      hint: Text('Select'),
                      value: _selectedItem,
                      underline: Container(),
                      onChanged: (String? newValue) {
                        setState(() {
                          _selectedItem = newValue;
                        });
                      },
                      items: _dropdownItems
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                if (_selectedItem != null)
                  Text(
                    'Selected: $_selectedItem',
                    style: TextStyle(fontSize: 24),
                  ),
                SizedBox(
                  height: 15 * fem,
                ),
                Container(
                  width: screenWidth,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8 * fem),
                    color: Colors.grey.shade300,
                  ),
                  padding: EdgeInsets.all(10 * fem),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Maturity Amount",
                        style: TextStyle(
                            fontSize: 15 * fem, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "₹ 50040",
                        style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 18 * fem,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10 * fem,
                      ),
                      Text(
                        "Total Interest Earned",
                        style: TextStyle(
                            fontSize: 15 * fem, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "₹ 563622",
                        style: TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 18 * fem,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
