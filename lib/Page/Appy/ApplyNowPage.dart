// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:smart_loan_bazzar/Utils/UtilsColors.dart';

class ApplyNowPage extends StatefulWidget {
  const ApplyNowPage({super.key});

  @override
  State<ApplyNowPage> createState() => _ApplyNowPageState();
}

class _ApplyNowPageState extends State<ApplyNowPage> {
  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    final double screenWidth = mediaQuery.size.width;
    final double screenHeight = mediaQuery.size.height;
    final double fem = screenWidth / 375.0;
    return SafeArea(
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Apply Now"),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(15 * fem),
              child: Column(
                children: [
                  //SBI
                  Card(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5 * fem),
                          height: 100 * fem,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5 * fem),
                              topRight: Radius.circular(5 * fem),
                            ),
                            color: AppColors.grayColor.withOpacity(0.2),
                            image: DecorationImage(
                              image: AssetImage("assets/img/sbi.png"),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.all(10 * fem),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Loan Amount : ",
                                      style: TextStyle(
                                          fontSize: 15 * fem,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.secondaryColor),
                                    ),
                                    Expanded(
                                      child: Text(
                                        "₹ 234566",
                                        style: TextStyle(
                                          fontSize: 15 * fem,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.secondaryColor,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Rate of Interest : ",
                                      style: TextStyle(
                                          fontSize: 15 * fem,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.secondaryColor),
                                    ),
                                    Expanded(
                                      child: Text(
                                        "5%",
                                        style: TextStyle(
                                          fontSize: 15 * fem,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.secondaryColor,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Tenure : ",
                                      style: TextStyle(
                                          fontSize: 15 * fem,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.secondaryColor),
                                    ),
                                    Expanded(
                                      child: Text(
                                        "2 Years",
                                        style: TextStyle(
                                          fontSize: 15 * fem,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.secondaryColor,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(15 * fem),
                          child: ElevatedButton(
                            onPressed: () {
                              // SnackbarUtils.showFloatingSnackbar(
                              //   "true",
                              //   "Success",
                              //   snackPosition: SnackPosition.TOP,
                              // );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Apply Now",
                                  style: TextStyle(
                                    fontSize: 15 * fem,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.whiteColor,
                                  ),
                                ),
                              ],
                            ),
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(screenWidth, 30 * fem),
                              backgroundColor: AppColors.primaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25 * fem),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10 * fem,
                  ),
                  //icici
                  Card(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5 * fem),
                          height: 100 * fem,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5 * fem),
                              topRight: Radius.circular(5 * fem),
                            ),
                            color: AppColors.grayColor.withOpacity(0.2),
                            image: DecorationImage(
                              image: AssetImage("assets/img/icici.png"),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.all(10 * fem),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Loan Amount : ",
                                      style: TextStyle(
                                          fontSize: 15 * fem,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.secondaryColor),
                                    ),
                                    Expanded(
                                      child: Text(
                                        "₹ 234566",
                                        style: TextStyle(
                                          fontSize: 15 * fem,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.secondaryColor,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Rate of Interest : ",
                                      style: TextStyle(
                                          fontSize: 15 * fem,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.secondaryColor),
                                    ),
                                    Expanded(
                                      child: Text(
                                        "5%",
                                        style: TextStyle(
                                          fontSize: 15 * fem,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.secondaryColor,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Tenure : ",
                                      style: TextStyle(
                                          fontSize: 15 * fem,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.secondaryColor),
                                    ),
                                    Expanded(
                                      child: Text(
                                        "2 Years",
                                        style: TextStyle(
                                          fontSize: 15 * fem,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.secondaryColor,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(15 * fem),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Apply Now",
                                  style: TextStyle(
                                    fontSize: 15 * fem,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.whiteColor,
                                  ),
                                ),
                              ],
                            ),
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(screenWidth, 30 * fem),
                              backgroundColor: AppColors.primaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25 * fem),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10 * fem,
                  ),
                  //Union
                  Card(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5 * fem),
                          height: 100 * fem,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5 * fem),
                              topRight: Radius.circular(5 * fem),
                            ),
                            color: AppColors.grayColor.withOpacity(0.2),
                            image: DecorationImage(
                              image: AssetImage("assets/img/union.png"),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.all(10 * fem),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Loan Amount : ",
                                      style: TextStyle(
                                          fontSize: 15 * fem,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.secondaryColor),
                                    ),
                                    Expanded(
                                      child: Text(
                                        "₹ 234566",
                                        style: TextStyle(
                                          fontSize: 15 * fem,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.secondaryColor,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Rate of Interest : ",
                                      style: TextStyle(
                                          fontSize: 15 * fem,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.secondaryColor),
                                    ),
                                    Expanded(
                                      child: Text(
                                        "5%",
                                        style: TextStyle(
                                          fontSize: 15 * fem,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.secondaryColor,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Tenure : ",
                                      style: TextStyle(
                                          fontSize: 15 * fem,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.secondaryColor),
                                    ),
                                    Expanded(
                                      child: Text(
                                        "2 Years",
                                        style: TextStyle(
                                          fontSize: 15 * fem,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.secondaryColor,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(15 * fem),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Apply Now",
                                  style: TextStyle(
                                    fontSize: 15 * fem,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.whiteColor,
                                  ),
                                ),
                              ],
                            ),
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(screenWidth, 30 * fem),
                              backgroundColor: AppColors.primaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25 * fem),
                              ),
                            ),
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
      ),
    );
  }
}
