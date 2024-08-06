// ignore_for_file: unused_local_variable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_loan_bazzar/Page/Auth/Login/loginController.dart';
import 'package:smart_loan_bazzar/Page/Auth/authPermission.dart';
import 'package:smart_loan_bazzar/Page/MyLoans/myLoansPage.dart';
import 'package:smart_loan_bazzar/Page/MyWallet/myWalletPage.dart';
import 'package:smart_loan_bazzar/Page/Profile/ProfileController.dart';
import 'package:smart_loan_bazzar/Page/Profile/changePasswordPage.dart';
import 'package:smart_loan_bazzar/Page/Profile/updateProfilePage.dart';
import 'package:smart_loan_bazzar/Utils/UtilsColors.dart';
import 'package:smart_loan_bazzar/Utils/snakebarUtils.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key, required this.profileAppbar});
  final bool profileAppbar;

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // @override
  // void initState() {
  //   super.initState();
  //   loadData();
  // }

  // String? token;
  // loadData() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   token = prefs.getString('token');
  //   profilecontroller.ProfileDetails(
  //     token: token.toString(),
  //   );
  // }

  final Logincontroller logincontroller = Get.put(Logincontroller());
  final Profilecontroller profilecontroller = Get.put(Profilecontroller());
  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    final double screenWidth = mediaQuery.size.width;
    final double screenHeight = mediaQuery.size.height;
    final double fem = screenWidth / 375.0;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        appBar: widget.profileAppbar != false
            ? AppBar(
                backgroundColor: AppColors.whiteColor,
                actions: [
                  GestureDetector(
                    onTap: () {
                      Get.to(
                        () => UpdateProfilePage(),
                      );
                    },
                    child: Icon(Icons.more_vert_sharp),
                  ),
                  SizedBox(
                    width: 15 * fem,
                  ),
                ],
              )
            : null,
        body: SingleChildScrollView(
          child: Container(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.all(15 * fem),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // CircleAvatar(
                  //   backgroundColor: AppColors.secondaryColor,
                  //   radius: 68 * fem,
                  //   child: Obx(
                  //     () => profilecontroller.isLoading.value
                  //         ? Center(
                  //             child: CircularProgressIndicator(),
                  //           )
                  //         : CircleAvatar(
                  //             backgroundColor: AppColors.whiteColor,
                  //             radius: 67 * fem,
                  //             backgroundImage: profilecontroller
                  //                         .profileDetailsModel.isNullOrBlank ==
                  //                     true
                  //                 ? AssetImage("assets/img/user.png")
                  //                 : NetworkImage(profilecontroller
                  //                     .profileDetailsModel!.profilepic),
                  //           ),
                  //   ),
                  // ),
                  CircleAvatar(
                    backgroundColor: AppColors.secondaryColor,
                    radius: 68 * fem,
                    child: Obx(
                      () => profilecontroller.isLoading.value
                          ? Center(
                              child: CircularProgressIndicator(),
                            )
                          : CircleAvatar(
                              backgroundColor: AppColors.whiteColor,
                              radius: 67 * fem,
                              backgroundImage: profilecontroller
                                          .profileDetailsModel?.profilepic !=
                                      null
                                  ? NetworkImage(profilecontroller
                                      .profileDetailsModel!.profilepic)
                                  : AssetImage("assets/img/user.png"),
                            ),
                    ),
                  ),
                  SizedBox(
                    height: 35 * fem,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Full Name",
                        style: TextStyle(
                          fontSize: 18 * fem,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 10 * fem,
                      ),
                      Expanded(
                        child: Text(
                          "User Name",
                          style: TextStyle(
                            fontSize: 16 * fem,
                          ),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20 * fem,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Phone Number*",
                        style: TextStyle(
                          fontSize: 18 * fem,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 10 * fem,
                      ),
                      Expanded(
                        child: Text(
                          "+91 2356347879",
                          style: TextStyle(
                            fontSize: 16 * fem,
                          ),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20 * fem,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Email",
                        style: TextStyle(
                          fontSize: 18 * fem,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 10 * fem,
                      ),
                      Expanded(
                        child: Text(
                          "user@gmail.com",
                          style: TextStyle(
                            fontSize: 16 * fem,
                          ),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20 * fem,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Address",
                        style: TextStyle(
                          fontSize: 18 * fem,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 10 * fem,
                      ),
                      Expanded(
                        child: Text(
                          "Kolkata",
                          style: TextStyle(
                            fontSize: 16 * fem,
                          ),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 35 * fem,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(
                        () => MyLoansPage(
                          MyLoan: true,
                        ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          child: Icon(
                            CupertinoIcons.briefcase,
                            size: 28 * fem,
                            color: AppColors.primaryColor,
                          ),
                        ),
                        SizedBox(
                          width: 10 * fem,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "My Loans",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16 * fem,
                                ),
                              ),
                              Text(
                                "Check your Loan History",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16 * fem,
                                  color: AppColors.primaryColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20 * fem,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(
                        () => MyWalletPage(
                          MyWallet: true,
                        ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          child: Icon(
                            Icons.account_balance_wallet_outlined,
                            size: 28 * fem,
                            color: AppColors.primaryColor,
                          ),
                        ),
                        SizedBox(
                          width: 10 * fem,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "My Wallet",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16 * fem,
                                ),
                              ),
                              Text(
                                "Check your Wallet",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16 * fem,
                                  color: AppColors.primaryColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20 * fem,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(
                        () => ChangePasswordPage(),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          child: Icon(
                            Icons.settings_outlined,
                            size: 28 * fem,
                            color: AppColors.primaryColor,
                          ),
                        ),
                        SizedBox(
                          width: 10 * fem,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Reset Password",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16 * fem,
                                ),
                              ),
                              Text(
                                "Change Your Password",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16 * fem,
                                  color: AppColors.primaryColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50 * fem,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      final SharedPreferences sharedPreferences =
                          await SharedPreferences.getInstance();
                      sharedPreferences.clear();
                      Get.offUntil(
                        GetPageRoute(page: () => AuthPermission()),
                        ModalRoute.withName(''),
                      );
                      SnackbarUtils.showFloatingSnackbar(
                        "Success",
                        "Logout Successfull",
                        snackPosition: SnackPosition.TOP,
                      );
                    },
                    child: Text(
                      "Logout",
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
