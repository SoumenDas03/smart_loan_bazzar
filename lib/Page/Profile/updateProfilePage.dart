// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_loan_bazzar/Page/Profile/changePasswordPage.dart';
import 'package:smart_loan_bazzar/Utils/UtilsColors.dart';

class UpdateProfilePage extends StatefulWidget {
  const UpdateProfilePage({super.key});

  @override
  State<UpdateProfilePage> createState() => _UpdateProfilePageState();
}

class _UpdateProfilePageState extends State<UpdateProfilePage> {
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
                      "Update Profile",
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
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      label: Text(
                        "Full Name: ",
                        style: TextStyle(fontSize: 18 * fem),
                      ),
                      hintText: "Name here...",
                      hintStyle: TextStyle(fontSize: 20 * fem),
                    ),
                  ),
                  SizedBox(
                    height: 25 * fem,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      label: Text(
                        "Email: ",
                        style: TextStyle(fontSize: 18 * fem),
                      ),
                      hintText: "Email here...",
                      hintStyle: TextStyle(fontSize: 20 * fem),
                    ),
                  ),
                  SizedBox(
                    height: 25 * fem,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      label: Text(
                        "Phone: ",
                        style: TextStyle(fontSize: 18 * fem),
                      ),
                      hintText: "Phone here...",
                      hintStyle: TextStyle(fontSize: 20 * fem),
                    ),
                  ),
                  SizedBox(
                    height: 25 * fem,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      label: Text(
                        "Address: ",
                        style: TextStyle(fontSize: 18 * fem),
                      ),
                      hintText: "Address here...",
                      hintStyle: TextStyle(fontSize: 20 * fem),
                    ),
                  ),
                  SizedBox(
                    height: 25 * fem,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Get.to(
                        () => ChangePasswordPage(),
                      );
                    },
                    child: Text(
                      "CHANGE PASSWORD",
                      style: TextStyle(
                        fontSize: 12 * fem,
                        fontWeight: FontWeight.w700,
                        color: AppColors.blackColor,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(screenWidth / 1.5 * fem, 50 * fem),
                      backgroundColor: AppColors.grayColor.withOpacity(0.1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25 * fem),
                      ),
                    ),
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
              "Update",
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
