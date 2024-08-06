// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_loan_bazzar/Page/Auth/Register/registerController.dart';
import 'package:smart_loan_bazzar/Utils/UtilsColors.dart';
import 'package:smart_loan_bazzar/Utils/snakebarUtils.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final Registercontroller registercontroller = Get.put(
    Registercontroller(),
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
            "Signup",
            style: TextStyle(
              color: Color(0XFF424242),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: EdgeInsets.all(15.0 * fem),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Create your\naccount",
                      style: TextStyle(fontSize: 28 * fem),
                    ),
                  ),
                  SizedBox(
                    height: 25 * fem,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Please enter your new password",
                      style: TextStyle(fontSize: 17 * fem),
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
                      controller: nameController,
                      style: TextStyle(color: AppColors.secondaryColor),
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 18 * fem),
                        hintText: "Name",
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
                      controller: phoneController,
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
                      controller: emailController,
                      style: TextStyle(color: AppColors.secondaryColor),
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 18 * fem),
                        hintText: "Email",
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
                      controller: passwordController,
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
                          value: registercontroller.isChecked.value,
                          onChanged: (newValue) {
                            registercontroller
                                .toggleCheckbox(newValue ?? false);
                          },
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "You agree the terms and privacy policy",
                          style: TextStyle(fontSize: 15 * fem),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50 * fem,
                  ),
                  Container(
                    width: screenWidth,
                    height: 50 * fem,
                    child: Obx(
                      () => ElevatedButton(
                        onPressed: () {
                          registercontroller.isChecked.value == false
                              ? SnackbarUtils.showFloatingSnackbar(
                                  "Error",
                                  "Please Accept Term and Condition",
                                  snackPosition: SnackPosition.TOP,
                                )
                              : nameController.text.trim().isEmpty ||
                                      emailController.text.trim().isEmpty ||
                                      passwordController.text.trim().isEmpty ||
                                      phoneController.text.trim().isEmpty
                                  ? SnackbarUtils.showFloatingSnackbar(
                                      "Error",
                                      "All Field Are Required",
                                      snackPosition: SnackPosition.TOP,
                                    )
                                  : registercontroller.userRegister(
                                      name: nameController.text.trim(),
                                      email: emailController.text.trim(),
                                      password: passwordController.text.trim(),
                                      phone: phoneController.text.trim(),
                                    );
                        },
                        child: registercontroller.isLoading.value
                            ? Center(
                                child: CircularProgressIndicator(
                                  color: AppColors.whiteColor,
                                ),
                              )
                            : Text(
                                "Submit",
                                style: TextStyle(
                                  fontSize: 15 * fem,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.whiteColor,
                                ),
                              ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              registercontroller.isChecked.value == true
                                  ? AppColors.primaryColor
                                  : AppColors.grayColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25 * fem),
                          ),
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
