// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:smart_loan_bazzar/Utils/UtilsColors.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({super.key});

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    final double screenWidth = mediaQuery.size.width;
    final double screenHeight = mediaQuery.size.height;
    final double fem = screenWidth / 375.0;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: EdgeInsets.all(15 * fem),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      "Set New Password",
                      style: TextStyle(
                        fontSize: 22 * fem,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25 * fem,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Old Password",
                      hintStyle: TextStyle(fontSize: 20 * fem),
                    ),
                  ),
                  SizedBox(
                    height: 25 * fem,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "New Password",
                      hintStyle: TextStyle(fontSize: 20 * fem),
                    ),
                  ),
                  SizedBox(
                    height: 25 * fem,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Confirm Password",
                      hintStyle: TextStyle(fontSize: 20 * fem),
                    ),
                  ),
                  SizedBox(
                    height: 25 * fem,
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.all(15 * fem),
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              "Submit",
              style: TextStyle(
                fontSize: 15 * fem,
                fontWeight: FontWeight.w700,
                color: AppColors.whiteColor,
              ),
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
    );
  }
}
