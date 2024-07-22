// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:smart_loan_bazzar/Utils/UtilsColors.dart';

class RiseQueryPage extends StatefulWidget {
  const RiseQueryPage({super.key});

  @override
  State<RiseQueryPage> createState() => _RiseQueryPageState();
}

class _RiseQueryPageState extends State<RiseQueryPage> {
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
            "Rise A Query",
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(15 * fem),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black26),
                  ),
                  width: screenWidth,
                  child: TextFormField(
                    style: TextStyle(color: AppColors.secondaryColor),
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
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(color: AppColors.secondaryColor),
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
                    keyboardType: TextInputType.phone,
                    style: TextStyle(color: AppColors.secondaryColor),
                    decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize: 18 * fem),
                      hintText: "Phone Number",
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
                  padding: EdgeInsets.only(top: 5 * fem),
                  child: TextFormField(
                    style: TextStyle(color: AppColors.secondaryColor),
                    decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize: 18 * fem),
                      hintText: "Where do you live?",
                      contentPadding:
                          EdgeInsets.only(left: 12 * fem, right: 12 * fem),
                      border: InputBorder.none,
                    ),
                    maxLines: 3,
                    minLines: 2,
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
                  padding: EdgeInsets.only(top: 5 * fem),
                  child: TextFormField(
                    style: TextStyle(color: AppColors.secondaryColor),
                    decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize: 18 * fem),
                      hintText: "Ask your query!!!",
                      contentPadding:
                          EdgeInsets.only(left: 12 * fem, right: 12 * fem),
                      border: InputBorder.none,
                    ),
                    maxLines: 5,
                  ),
                ),
                SizedBox(
                  height: 20 * fem,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          child: Padding(
            padding: EdgeInsets.all(15 * fem),
            child: ElevatedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Submit",
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
                backgroundColor: AppColors.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25 * fem),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
