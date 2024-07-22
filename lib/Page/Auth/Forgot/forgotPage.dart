// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_loan_bazzar/Page/Auth/Register/registerController.dart';
import 'package:smart_loan_bazzar/Utils/UtilsColors.dart';

class ForgotPage extends StatefulWidget {
  const ForgotPage({super.key});

  @override
  State<ForgotPage> createState() => _ForgotPageState();
}

class _ForgotPageState extends State<ForgotPage> {
  final Registercontroller registercontroller = Get.put(
    Registercontroller(),
  );

  final TextEditingController emailController = TextEditingController();
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
            "Forgot Password",
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
                      "Forgot Password?",
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
                      controller: emailController,
                      style: TextStyle(color: AppColors.secondaryColor),
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 18 * fem),
                        hintText: "Registerd Email",
                        contentPadding:
                            EdgeInsets.only(left: 12 * fem, right: 12 * fem),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25 * fem,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Please enter your email id and we send your password by email",
                      style: TextStyle(fontSize: 17 * fem),
                    ),
                  ),
                  SizedBox(
                    height: 50 * fem,
                  ),
                  Opacity(
                    opacity: emailController.text.toString().isEmpty ? 0.3 : 1,
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
