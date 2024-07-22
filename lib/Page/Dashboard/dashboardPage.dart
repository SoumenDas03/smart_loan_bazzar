// ignore_for_file: unused_local_variable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_loan_bazzar/Page/AboutUs/aboutUsPage.dart';
import 'package:smart_loan_bazzar/Page/FAQs/faqsPage.dart';
import 'package:smart_loan_bazzar/Page/Home/homePage.dart';
import 'package:smart_loan_bazzar/Page/MyLoans/myLoansPage.dart';
import 'package:smart_loan_bazzar/Page/MyWallet/myWalletPage.dart';
import 'package:smart_loan_bazzar/Page/Privacy&Terms/privacyAndTermsPage.dart';
import 'package:smart_loan_bazzar/Page/Profile/profilePage.dart';
import 'package:smart_loan_bazzar/Page/Profile/updateProfilePage.dart';
import 'package:smart_loan_bazzar/Page/RaiseQuery/raiseQueryPage.dart';
import 'package:smart_loan_bazzar/Page/Support/supportPage.dart';
import 'package:smart_loan_bazzar/Page/Tools/toolPage.dart';
import 'package:smart_loan_bazzar/Utils/UtilsColors.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    MyLoansPage(
      MyLoan: false,
    ),
    MyWalletPage(
      MyWallet: false,
    ),
    ProfilePage(
      profileAppbar: false,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    final double screenWidth = mediaQuery.size.width;
    final double screenHeight = mediaQuery.size.height;
    final double fem = screenWidth / 375.0;
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 90 * fem,
                      width: 90 * fem,
                      child: Material(
                        elevation: 3,
                        borderRadius: BorderRadius.circular(10 * fem),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10 * fem),
                            image: DecorationImage(
                              image: AssetImage("assets/img/user.png"),
                            ),
                          ),
                        ),
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
                            'User name',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColors.secondaryColor,
                              fontSize: 20 * fem,
                            ),
                          ),
                          SizedBox(
                            height: 5 * fem,
                          ),
                          Text(
                            'user@gmail.com',
                            style: TextStyle(
                              color: AppColors.secondaryColor,
                              fontSize: 16 * fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    color: AppColors.secondaryColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(
                    CupertinoIcons.person,
                    color: AppColors.whiteColor,
                  ),
                ),
                title: Text('Profile'),
                onTap: () {
                  // _onItemTapped(0);
                  Get.back();
                  Get.to(
                    () => ProfilePage(
                      profileAppbar: true,
                    ),
                  );
                },
              ),
              ListTile(
                leading: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    color: AppColors.secondaryColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(
                    CupertinoIcons.briefcase,
                    color: AppColors.whiteColor,
                  ),
                ),
                title: Text('My Application'),
                onTap: () {
                  // _onItemTapped(0);
                  Navigator.pop(context);
                  Get.to(
                    () => MyLoansPage(
                      MyLoan: true,
                    ),
                  );
                },
              ),
              ListTile(
                leading: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    color: AppColors.secondaryColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(
                    Icons.account_balance_wallet_outlined,
                    color: AppColors.whiteColor,
                  ),
                ),
                title: Text('Wallet'),
                onTap: () {
                  // _onItemTapped(0);
                  Navigator.pop(context);
                  Get.to(
                    () => MyWalletPage(
                      MyWallet: true,
                    ),
                  );
                },
              ),
              ListTile(
                leading: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    color: AppColors.secondaryColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(
                    Icons.description_outlined,
                    color: AppColors.whiteColor,
                  ),
                ),
                title: Text('About Us'),
                onTap: () {
                  // _onItemTapped(0);
                  Navigator.pop(context);
                  Get.to(
                    () => AboutUspage(),
                  );
                },
              ),
              ListTile(
                leading: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    color: AppColors.secondaryColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(
                    Icons.insert_drive_file_outlined,
                    color: AppColors.whiteColor,
                  ),
                ),
                title: Text('Privecy & Terms'),
                onTap: () {
                  // _onItemTapped(0);
                  Navigator.pop(context);
                  Get.to(
                    () => PrivacyAndTermsPage(),
                  );
                },
              ),
              ListTile(
                leading: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    color: AppColors.secondaryColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(
                    CupertinoIcons.question,
                    color: AppColors.whiteColor,
                  ),
                ),
                title: Text('Support'),
                onTap: () {
                  // _onItemTapped(0);
                  Navigator.pop(context);
                  Get.to(
                    () => SupportPage(),
                  );
                },
              ),
              ListTile(
                leading: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    color: AppColors.secondaryColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(
                    CupertinoIcons.smiley,
                    color: AppColors.whiteColor,
                  ),
                ),
                title: Text('Rate'),
                onTap: () {
                  // _onItemTapped(0);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    color: AppColors.secondaryColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(
                    CupertinoIcons.info,
                    color: AppColors.whiteColor,
                  ),
                ),
                title: Text('FAQs'),
                onTap: () {
                  // _onItemTapped(0);
                  Navigator.pop(context);
                  Get.to(
                    () => FAQsPage(),
                  );
                },
              ),
              ListTile(
                leading: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    color: AppColors.secondaryColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(
                    CupertinoIcons.question_circle,
                    color: AppColors.whiteColor,
                  ),
                ),
                title: Text('Raise a query'),
                onTap: () {
                  // _onItemTapped(0);
                  Navigator.pop(context);
                  Get.to(
                    () => RiseQueryPage(),
                  );
                },
              ),
              ListTile(
                leading: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    color: AppColors.secondaryColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(
                    CupertinoIcons.settings,
                    color: AppColors.whiteColor,
                  ),
                ),
                title: Text('Tools'),
                onTap: () {
                  // _onItemTapped(0);
                  Navigator.pop(context);
                  Get.to(
                    () => ToolPage(),
                  );
                },
              ),
              ListTile(
                leading: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    color: AppColors.secondaryColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(
                    Icons.login,
                    color: AppColors.whiteColor,
                  ),
                ),
                title: Text('Logout'),
                onTap: () {
                  // _onItemTapped(0);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          iconTheme: IconThemeData(
              color: _selectedIndex == 0
                  ? AppColors.secondaryColor
                  : AppColors.whiteColor),
          centerTitle: true,
          title: _selectedIndex == 0
              ? Container(
                  height: 32 * fem,
                  child: Image.asset("assets/img/logo.png"),
                )
              : Text(
                  _selectedIndex == 0
                      ? 'Home'
                      : _selectedIndex == 1
                          ? "My Loan"
                          : _selectedIndex == 2
                              ? "Wallet"
                              : _selectedIndex == 3
                                  ? "Profile"
                                  : "",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
          actions: _selectedIndex == 0
              ? [
                  GestureDetector(
                      onTap: () {
                        // Get.to(() => ProfilePage(profileAppbar: true));
                      },
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/img/user.png"),
                      )
                      //  CircleAvatar(
                      //   child: Icon(CupertinoIcons.person),
                      // ),
                      ),
                  SizedBox(
                    width: 15 * fem,
                  ),
                ]
              : _selectedIndex == 3
                  ? [
                      IconButton(
                        onPressed: () {
                          Get.to(
                            () => UpdateProfilePage(),
                          );
                        },
                        icon: Icon(Icons.more_vert_sharp),
                      ),
                      SizedBox(
                        width: 15 * fem,
                      ),
                    ]
                  : null,
          backgroundColor: _selectedIndex == 0
              ? AppColors.whiteColor
              : AppColors.secondaryColor,
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [AppColors.primaryColor, AppColors.secondaryColor],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: BottomNavigationBar(
            backgroundColor: AppColors.secondaryColor,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home),
                label: 'Home',
                backgroundColor: AppColors.secondaryColor,
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.briefcase),
                label: 'My Application',
                backgroundColor: AppColors.secondaryColor,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_balance_wallet_outlined),
                label: 'My Wallet',
                backgroundColor: AppColors.secondaryColor,
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person),
                label: 'Profile',
                backgroundColor: AppColors.secondaryColor,
              ),
            ],
            type: BottomNavigationBarType.shifting,
            currentIndex: _selectedIndex,
            selectedItemColor: AppColors.whiteColor,
            unselectedItemColor: Colors.grey,
            iconSize: 30 * fem,
            onTap: _onItemTapped,
            elevation: 5 * fem,
          ),
        ),
      ),
    );
  }
}
