// ignore_for_file: sort_child_properties_last, prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_loan_bazzar/Page/Auth/Login/loginPage.dart';
import 'package:smart_loan_bazzar/Page/Auth/Register/registerPage.dart';
import 'package:smart_loan_bazzar/Utils/UtilsColors.dart';

class AuthPermission extends StatefulWidget {
  const AuthPermission({super.key});

  @override
  State<AuthPermission> createState() => _AuthPermissionState();
}

class _AuthPermissionState extends State<AuthPermission> {
  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    final double screenWidth = mediaQuery.size.width;
    final double screenHeight = mediaQuery.size.height;
    final double fem = screenWidth / 375.0;
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: screenWidth,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/img/splashscreen.png",
              ),
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(
                  Colors.grey.shade300.withOpacity(0.8), BlendMode.darken),
              invertColors: false,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(15.0 * fem),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 150 * fem,
                  height: 80 * fem,
                  child: Image.asset(
                    "assets/img/favicon.png",
                  ),
                ),
                SizedBox(
                  height: 15 * fem,
                ),
                Text(
                  "Welcome to",
                  style: TextStyle(
                    fontSize: 22 * fem,
                    fontWeight: FontWeight.w700,
                    color: AppColors.whiteColor,
                  ),
                ),
                SizedBox(
                  height: 10 * fem,
                ),
                Text(
                  "Smart LoanBazar",
                  style: TextStyle(
                    fontSize: 30 * fem,
                    fontWeight: FontWeight.w700,
                    color: AppColors.whiteColor,
                  ),
                ),
                SizedBox(
                  height: 10 * fem,
                ),
                Text(
                  "Apki paison ki kadar",
                  style: TextStyle(
                    fontSize: 15 * fem,
                    fontWeight: FontWeight.w700,
                    color: AppColors.whiteColor,
                  ),
                ),
                SizedBox(
                  height: 35 * fem,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        print("Facebook");
                      },
                      borderRadius: BorderRadius.circular(5 * fem),
                      child: Container(
                        // alignment: Alignment.bottomLeft,
                        height: 36 * fem,
                        width: 155 * fem,
                        decoration: BoxDecoration(
                          color: AppColors.secondaryColor,
                          border: Border.all(color: AppColors.secondaryColor),
                          borderRadius: BorderRadius.circular(5 * fem),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 20,
                              child: Image.asset(
                                "assets/img/facebook.png",
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                'Facebook',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.whiteColor),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        print("Google");
                      },
                      borderRadius: BorderRadius.circular(5 * fem),
                      child: Container(
                        // alignment: Alignment.bottomLeft,
                        height: 36 * fem,
                        width: 155 * fem,
                        decoration: BoxDecoration(
                          color: AppColors.secondaryColor,
                          border: Border.all(
                            color: AppColors.secondaryColor,
                          ),
                          borderRadius: BorderRadius.circular(5 * fem),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 20 * fem,
                              child: Image.asset(
                                "assets/img/google.png",
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                'Google',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.whiteColor),
                              ),
                            )
                          ],
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
                      () => LoginPage(),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Sign in to Your Account ",
                        style: TextStyle(
                          fontSize: 15 * fem,
                          fontWeight: FontWeight.w700,
                          color: AppColors.whiteColor,
                        ),
                      ),
                      Icon(
                        Icons.login,
                        color: AppColors.whiteColor,
                      )
                    ],
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
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.to(() => RegisterPage());
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.email_outlined,
                        color: AppColors.whiteColor,
                      ),
                      Text(
                        "  Sign up for New Account ",
                        style: TextStyle(
                          fontSize: 15 * fem,
                          fontWeight: FontWeight.w700,
                          color: AppColors.whiteColor,
                        ),
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(screenWidth, 50 * fem),
                    backgroundColor: AppColors.secondaryColor,
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
    );
  }
}
