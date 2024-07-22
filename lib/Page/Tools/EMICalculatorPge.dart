// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:smart_loan_bazzar/Utils/UtilsColors.dart';

class EmiCalculatorPge extends StatefulWidget {
  const EmiCalculatorPge({super.key});

  @override
  State<EmiCalculatorPge> createState() => _EmiCalculatorPgeState();
}

class _EmiCalculatorPgeState extends State<EmiCalculatorPge> {
  double loanAmount = 50000;
  double interestRate = 5;
  double tenure = 0;
  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    final double screenWidth = mediaQuery.size.width;
    final double screenHeight = mediaQuery.size.height;
    final double fem = screenWidth / 375.0;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "EMI Calculator",
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
                style:
                    TextStyle(fontSize: 18 * fem, fontWeight: FontWeight.bold),
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
                "Tenure",
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
                      "EMI",
                      style: TextStyle(
                          fontSize: 15 * fem, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "₹ 346",
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
                      "Interest Payble",
                      style: TextStyle(
                          fontSize: 15 * fem, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "₹ 342386",
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
                      "Total Amount Payble",
                      style: TextStyle(
                          fontSize: 15 * fem, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "₹ 163622",
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 18 * fem,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "(Principal + interest)",
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 15 * fem,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
