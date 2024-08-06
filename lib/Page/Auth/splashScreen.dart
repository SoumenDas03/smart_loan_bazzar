// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_loan_bazzar/Page/Auth/authPermission.dart';
import 'package:smart_loan_bazzar/Page/Dashboard/dashboardPage.dart';
import 'package:smart_loan_bazzar/Utils/UtilsColors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatehome();
  }

  _navigatehome() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    if (token == null) {
      await Future.delayed(Duration(milliseconds: 1500), () {});
      Get.to(() => AuthPermission());
      print(token);
    } else {
      await Future.delayed(Duration(milliseconds: 1500), () {});
      Get.to(
        () => DashboardPage(),
      );
      print(token);
    }
  }

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    final double screenWidth = mediaQuery.size.width;
    final double screenHeight = mediaQuery.size.height;
    final double fem = screenWidth / 375.0;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: Container(
          alignment: Alignment.center,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.amber,
                  radius: 105 * fem,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 103 * fem,
                    child: Padding(
                      padding: EdgeInsets.all(10.0 * fem),
                      child: Center(
                        child: Image.asset(
                          "assets/img/favicon.png",
                        ),
                      ),
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
