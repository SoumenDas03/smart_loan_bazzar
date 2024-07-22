// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_loan_bazzar/Page/Tools/EMICalculatorPge.dart';
import 'package:smart_loan_bazzar/Page/Tools/FDCalculatorPage.dart';
import 'package:smart_loan_bazzar/Page/Tools/IFSCPage.dart';
import 'package:smart_loan_bazzar/Page/Tools/RDCalculatorPage.dart';

class ToolPage extends StatefulWidget {
  const ToolPage({super.key});

  @override
  State<ToolPage> createState() => _ToolPageState();
}

class _ToolPageState extends State<ToolPage> {
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
            "Tools",
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(15 * fem),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Get.to(
                          () => EmiCalculatorPge(),
                        );
                      },
                      child: Column(
                        children: [
                          Container(
                            height: 100 * fem,
                            width: 100 * fem,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/img/emi.png"),
                              ),
                            ),
                          ),
                          Text(
                            "EMI Calculator",
                            style: TextStyle(
                                fontSize: 15 * fem,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Get.to(
                          () => FDCalculatorPge(),
                        );
                      },
                      child: Column(
                        children: [
                          Container(
                            height: 100 * fem,
                            width: 100 * fem,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/img/fd.png"),
                              ),
                            ),
                          ),
                          Text(
                            "FD Calculator",
                            style: TextStyle(
                                fontSize: 15 * fem,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                  ],
                ),
                SizedBox(
                  height: 50 * fem,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Get.to(
                          () => RDCalculatorPge(),
                        );
                      },
                      child: Column(
                        children: [
                          Container(
                            height: 100 * fem,
                            width: 100 * fem,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/img/rd.png"),
                              ),
                            ),
                          ),
                          Text(
                            "RD Calculator",
                            style: TextStyle(
                                fontSize: 15 * fem,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Get.to(
                          () => IfscPage(),
                        );
                      },
                      child: Column(
                        children: [
                          Container(
                            height: 100 * fem,
                            width: 100 * fem,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/img/ifsc.png"),
                              ),
                            ),
                          ),
                          Text(
                            "ifsc Code",
                            style: TextStyle(
                                fontSize: 15 * fem,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
