// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class LoanDetailsPage extends StatefulWidget {
  const LoanDetailsPage({super.key});

  @override
  State<LoanDetailsPage> createState() => _LoanDetailsPageState();
}

class _LoanDetailsPageState extends State<LoanDetailsPage> {
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
            "Loan Details",
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(15 * fem),
          child: Column(
            children: [
              Card(
                child: Padding(
                  padding: EdgeInsets.all(10 * fem),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "User Name :",
                        style: TextStyle(
                          fontSize: 16 * fem,
                        ),
                      ),
                      SizedBox(
                        width: 10 * fem,
                      ),
                      Expanded(
                        child: Text(
                          "User",
                          style: TextStyle(
                            fontSize: 15 * fem,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(10 * fem),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Phone :",
                        style: TextStyle(
                          fontSize: 16 * fem,
                        ),
                      ),
                      SizedBox(
                        width: 10 * fem,
                      ),
                      Expanded(
                        child: Text(
                          "9237623766",
                          style: TextStyle(
                            fontSize: 15 * fem,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(10 * fem),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Bank Name :",
                        style: TextStyle(
                          fontSize: 16 * fem,
                        ),
                      ),
                      SizedBox(
                        width: 10 * fem,
                      ),
                      Expanded(
                        child: Text(
                          "State Bank of India",
                          style: TextStyle(
                            fontSize: 15 * fem,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(10 * fem),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Total Loan Amount :",
                        style: TextStyle(
                          fontSize: 16 * fem,
                        ),
                      ),
                      SizedBox(
                        width: 10 * fem,
                      ),
                      Expanded(
                        child: Text(
                          "Rs. 5,23,444",
                          style: TextStyle(
                            fontSize: 15 * fem,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(10 * fem),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Loan EMI :",
                        style: TextStyle(
                          fontSize: 16 * fem,
                        ),
                      ),
                      SizedBox(
                        width: 10 * fem,
                      ),
                      Expanded(
                        child: Text(
                          "20,500",
                          style: TextStyle(
                            fontSize: 15 * fem,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(10 * fem),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Total Duration :",
                        style: TextStyle(
                          fontSize: 16 * fem,
                        ),
                      ),
                      SizedBox(
                        width: 10 * fem,
                      ),
                      Expanded(
                        child: Text(
                          "24 months",
                          style: TextStyle(
                            fontSize: 15 * fem,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(10 * fem),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Processing Fee (Exclusive of GST) :",
                        style: TextStyle(
                          fontSize: 16 * fem,
                        ),
                      ),
                      SizedBox(
                        height: 5 * fem,
                      ),
                      Text(
                        " 0.50% – 2.00% of the loan amount or Rs. 1,500 (Rs. 2,000 for Mumbai, Delhi & Bangalore), whichever is higher",
                        style: TextStyle(
                          fontSize: 15 * fem,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
