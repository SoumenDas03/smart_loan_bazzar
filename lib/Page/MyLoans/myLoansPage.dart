// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_loan_bazzar/Page/MyLoans/loanDetailsPage.dart';
import 'package:smart_loan_bazzar/Utils/UtilsColors.dart';

class MyLoansPage extends StatefulWidget {
  const MyLoansPage({super.key, required this.MyLoan});
  final bool MyLoan;

  @override
  State<MyLoansPage> createState() => _MyLoansPageState();
}

class _MyLoansPageState extends State<MyLoansPage> {
  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    final double screenWidth = mediaQuery.size.width;
    final double screenHeight = mediaQuery.size.height;
    final double fem = screenWidth / 375.0;
    return SafeArea(
      child: Scaffold(
        appBar: widget.MyLoan == false
            ? null
            : AppBar(
                title: Text(
                  "My loan",
                ),
              ),
        body: Padding(
          padding: EdgeInsets.all(15 * fem),
          child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Get.to(
                      () => LoanDetailsPage(),
                    );
                  },
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(10 * fem),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "#4628",
                                style: TextStyle(
                                  fontSize: 13 * fem,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Spacer(),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5 * fem),
                                  color: Colors.amber,
                                ),
                                child: Text(
                                  " Due ",
                                  style: TextStyle(
                                    fontSize: 13 * fem,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "State Bank Of India",
                              style: TextStyle(
                                  fontSize: 15 * fem,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.secondaryColor),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Starting from: ",
                                    style: TextStyle(
                                      fontSize: 12 * fem,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "March 3rd, 2021",
                                    style: TextStyle(
                                      fontSize: 12 * fem,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: "End to: ",
                                    style: TextStyle(
                                      fontSize: 12 * fem,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "March 3rd, 2025",
                                    style: TextStyle(
                                      fontSize: 12 * fem,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10 * fem,
                          ),
                          Container(
                            width: screenWidth,
                            child: Row(
                              children: [
                                Container(
                                  width: screenWidth / 2.6 * fem,
                                  height: 5 * fem,
                                  decoration: BoxDecoration(
                                      color: AppColors.greenColor),
                                ),
                                Container(
                                  width: screenWidth / 2.6 * fem,
                                  height: 5 * fem,
                                  decoration:
                                      BoxDecoration(color: AppColors.grayColor),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5 * fem,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
