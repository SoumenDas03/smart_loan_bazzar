// ignore_for_file: unused_local_variable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_loan_bazzar/Utils/UtilsColors.dart';

class MyWalletPage extends StatefulWidget {
  const MyWalletPage({super.key, required this.MyWallet});
  final bool MyWallet;

  @override
  State<MyWalletPage> createState() => _MyWalletPageState();
}

class _MyWalletPageState extends State<MyWalletPage> {
  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    final double screenWidth = mediaQuery.size.width;
    final double screenHeight = mediaQuery.size.height;
    final double fem = screenWidth / 375.0;
    return SafeArea(
      child: Scaffold(
        appBar: widget.MyWallet == true
            ? AppBar(
                title: Text(
                  "My Wallet",
                ),
              )
            : null,
        body: Padding(
          padding: EdgeInsets.all(15 * fem),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Total Point Earned:",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16 * fem,
                      color: AppColors.primaryColor,
                    ),
                  ),
                  SizedBox(
                    width: 10 * fem,
                  ),
                  Spacer(),
                  Icon(
                    CupertinoIcons.star_fill,
                    color: AppColors.starColor,
                    size: 18 * fem,
                  ),
                  SizedBox(
                    width: 5 * fem,
                  ),
                  Text(
                    "5,000",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16 * fem,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5 * fem,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Earn in 2021:",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16 * fem,
                      color: AppColors.primaryColor,
                    ),
                  ),
                  SizedBox(
                    width: 10 * fem,
                  ),
                  Spacer(),
                  Icon(
                    CupertinoIcons.star_fill,
                    color: AppColors.starColor,
                    size: 18 * fem,
                  ),
                  SizedBox(
                    width: 5 * fem,
                  ),
                  Text(
                    "700",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16 * fem,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15 * fem,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Exciting Reward for You",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20 * fem,
                  ),
                ),
              ),
              SizedBox(
                height: 15 * fem,
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 2 / 3.8, crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return Card(
                      child: Padding(
                        padding: EdgeInsets.all(10 * fem),
                        child: Column(
                          children: [
                            Icon(
                              CupertinoIcons.gift_fill,
                              color: AppColors.secondaryColor,
                            ),
                            SizedBox(
                              height: 10 * fem,
                            ),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Available Exclusive Discount",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        " Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem",
                                    style: TextStyle(),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
