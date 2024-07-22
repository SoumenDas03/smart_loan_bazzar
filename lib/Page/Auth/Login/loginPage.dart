// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_loan_bazzar/Page/Auth/Forgot/forgotPage.dart';
import 'package:smart_loan_bazzar/Page/Auth/Login/loginController.dart';
import 'package:smart_loan_bazzar/Page/Dashboard/dashboardPage.dart';
import 'package:smart_loan_bazzar/Utils/UtilsColors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final Logincontroller logincontroller = Get.put(
    Logincontroller(),
  );

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
            "Login",
            style: TextStyle(
              color: Color(0XFF424242),
            ),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: AlwaysScrollableScrollPhysics(),
          child: Container(
            child: Padding(
              padding: EdgeInsets.all(15.0 * fem),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Login to your\naccount",
                      style: TextStyle(fontSize: 28 * fem),
                    ),
                  ),
                  SizedBox(
                    height: 25 * fem,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black26),
                    ),
                    width: screenWidth,
                    child: TextFormField(
                      style: TextStyle(color: AppColors.secondaryColor),
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 18 * fem),
                        hintText: "Phone",
                        contentPadding:
                            EdgeInsets.only(left: 12 * fem, right: 12 * fem),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20 * fem,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black26),
                    ),
                    width: screenWidth,
                    child: TextFormField(
                      obscureText: true,
                      style: TextStyle(color: AppColors.secondaryColor),
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 18 * fem),
                        hintText: "Password",
                        contentPadding:
                            EdgeInsets.only(left: 12 * fem, right: 12 * fem),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20 * fem,
                  ),
                  Row(
                    children: [
                      Obx(
                        () => Checkbox(
                          value: logincontroller.isChecked.value,
                          onChanged: (newValue) {
                            logincontroller.toggleCheckbox(newValue ?? false);
                          },
                        ),
                      ),
                      Text(
                        "Remember me",
                        style: TextStyle(fontSize: 15 * fem),
                      ),
                      Spacer(),
                      TextButton(
                        onPressed: () {
                          Get.to(
                            () => ForgotPage(),
                          );
                        },
                        child: Text(
                          "Forgot?",
                          style: TextStyle(
                            fontSize: 18 * fem,
                            color: Color(0xff382D7e),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50 * fem,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Get.to(
                        () => DashboardPage(),
                      );
                    },
                    child: Text(
                      "Log In",
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
                  SizedBox(
                    height: 25 * fem,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
