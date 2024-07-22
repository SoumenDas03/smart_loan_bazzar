import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:get/get.dart';
import 'package:smart_loan_bazzar/Page/Appy/ApplyPage.dart';
import 'package:smart_loan_bazzar/Utils/UtilsColors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> imageUrls = [
    "assets/img/1.jpg",
    "assets/img/2.jpg",
    "assets/img/3.jpg",
    "assets/img/4.jpg",
    "assets/img/5.jpg",
    "assets/img/6.jpg",
    // Add more image URLs here as needed
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    final double screenWidth = mediaQuery.size.width;
    final double fem = screenWidth / 375.0;

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            CarouselSlider(
              items: imageUrls.map((imageUrl) {
                return Container(
                  margin: EdgeInsets.all(6.0 * fem),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0 * fem),
                    image: DecorationImage(
                      image: AssetImage(imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              }).toList(),
              options: CarouselOptions(
                height: 135.0 * fem,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 12 / 3,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
            ),
            DotsIndicator(
              dotsCount: imageUrls.length,
              position: _currentIndex,
              decorator: DotsDecorator(
                color: Colors.grey, // Inactive color
                activeColor: Colors.blue, // Active color
                size: Size.square(6 * fem), // Size of dots
                activeSize: Size(20 * fem, 6 * fem), // Size of active dot
                spacing: EdgeInsets.symmetric(
                    horizontal: 4 * fem), // Spacing between dots
                activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5 * fem),
                ), // Shape of active dot
              ),
            ),
            SizedBox(
              height: 10 * fem,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(15 * fem),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Best Offers for You",
                          style: TextStyle(
                            fontSize: 22 * fem,
                            fontWeight: FontWeight.bold,
                            color: AppColors.secondaryColor,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10 * fem,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(
                            () => ApplyPage(),
                          );
                        },
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                //alignment: Alignment.centerLeft,
                                //height: 38 * fem,
                                width: screenWidth,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/img/ribon1.png",
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 15 * fem,
                                      right: 45 * fem,
                                      top: 15 * fem,
                                      bottom: 15 * fem),
                                  child: Text.rich(
                                    overflow: TextOverflow.ellipsis,
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "Special Offer: ",
                                          style: TextStyle(
                                            fontSize: 16 * fem,
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.whiteColor,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "Assured ₹500 Cashback",
                                          style: TextStyle(
                                            fontSize: 16 * fem,
                                            color: AppColors.whiteColor,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 25 * fem,
                                  child: Center(
                                    child: Icon(
                                      CupertinoIcons.briefcase,
                                      size: 30 * fem,
                                      color: AppColors.secondaryColor,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10 * fem,
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Personal Loan",
                                        style: TextStyle(
                                          fontSize: 18 * fem,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.blackColor,
                                        ),
                                      ),
                                      Text(
                                        "Hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis",
                                        style: TextStyle(
                                          fontSize: 15 * fem,
                                          color: AppColors.blackColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 10 * fem,
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right_sharp,
                                  size: 30 * fem,
                                  weight: 0.5,
                                  color: AppColors.secondaryColor,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10 * fem,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(
                            () => ApplyPage(),
                          );
                        },
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                //alignment: Alignment.centerLeft,
                                //height: 38 * fem,
                                width: screenWidth,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/img/ribon2.png",
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 15 * fem,
                                      right: 45 * fem,
                                      top: 15 * fem,
                                      bottom: 15 * fem),
                                  child: Text.rich(
                                    overflow: TextOverflow.ellipsis,
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "Special Offer: ",
                                          style: TextStyle(
                                            fontSize: 16 * fem,
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.whiteColor,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "Starting @6.75%",
                                          style: TextStyle(
                                            fontSize: 16 * fem,
                                            color: AppColors.whiteColor,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 25 * fem,
                                  child: Center(
                                    child: Icon(
                                      CupertinoIcons.arrow_right_arrow_left,
                                      size: 30 * fem,
                                      color: AppColors.secondaryColor,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10 * fem,
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Balance transfer of personal Loan",
                                        style: TextStyle(
                                          fontSize: 18 * fem,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.blackColor,
                                        ),
                                      ),
                                      Text(
                                        "Hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis",
                                        style: TextStyle(
                                          fontSize: 15 * fem,
                                          color: AppColors.blackColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 10 * fem,
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right_sharp,
                                  size: 30 * fem,
                                  weight: 0.5,
                                  color: AppColors.secondaryColor,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10 * fem,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(
                            () => ApplyPage(),
                          );
                        },
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                //alignment: Alignment.centerLeft,
                                //height: 38 * fem,
                                width: screenWidth,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/img/ribon2.png",
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 15 * fem,
                                      right: 45 * fem,
                                      top: 15 * fem,
                                      bottom: 15 * fem),
                                  child: Text.rich(
                                    // overflow: TextOverflow.ellipsis,
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "Special Offer: ",
                                          style: TextStyle(
                                            fontSize: 16 * fem,
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.whiteColor,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "Covid-19 Coverd",
                                          style: TextStyle(
                                            fontSize: 16 * fem,
                                            color: AppColors.whiteColor,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 25 * fem,
                                  child: Center(
                                    child: Icon(
                                      CupertinoIcons.creditcard,
                                      size: 30 * fem,
                                      color: AppColors.secondaryColor,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10 * fem,
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Balance transfer of Credit Card outstanding",
                                        style: TextStyle(
                                          fontSize: 18 * fem,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.blackColor,
                                        ),
                                      ),
                                      Text(
                                        "Hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis",
                                        style: TextStyle(
                                          fontSize: 15 * fem,
                                          color: AppColors.blackColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 10 * fem,
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right_sharp,
                                  size: 30 * fem,
                                  weight: 0.5,
                                  color: AppColors.secondaryColor,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10 * fem,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(
                            () => ApplyPage(),
                          );
                        },
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                //alignment: Alignment.centerLeft,
                                //height: 38 * fem,
                                width: screenWidth,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/img/ribon2.png",
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 15 * fem,
                                      right: 45 * fem,
                                      top: 15 * fem,
                                      bottom: 15 * fem),
                                  child: Text.rich(
                                    overflow: TextOverflow.ellipsis,
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "Special Offer: ",
                                          style: TextStyle(
                                            fontSize: 16 * fem,
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.whiteColor,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "Starting @6.75%",
                                          style: TextStyle(
                                            fontSize: 16 * fem,
                                            color: AppColors.whiteColor,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 25 * fem,
                                  child: Center(
                                    child: Padding(
                                      padding: EdgeInsets.all(10 * fem),
                                      child:
                                          Image.asset("assets/img/coins.png"),
                                    ),
                                    //  Icon(
                                    //   CupertinoIcons.arrow_right_arrow_left,
                                    //   size: 30 * fem,
                                    //   color: AppColors.secondaryColor,
                                    // ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10 * fem,
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Top-up of existing loan",
                                        style: TextStyle(
                                          fontSize: 18 * fem,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.blackColor,
                                        ),
                                      ),
                                      Text(
                                        "Hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis",
                                        style: TextStyle(
                                          fontSize: 15 * fem,
                                          color: AppColors.blackColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 10 * fem,
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right_sharp,
                                  size: 30 * fem,
                                  weight: 0.5,
                                  color: AppColors.secondaryColor,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10 * fem,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(
                            () => ApplyPage(),
                          );
                        },
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                //alignment: Alignment.centerLeft,
                                //height: 38 * fem,
                                width: screenWidth,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/img/ribon2.png",
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 15 * fem,
                                      right: 45 * fem,
                                      top: 15 * fem,
                                      bottom: 15 * fem),
                                  child: Text.rich(
                                    // overflow: TextOverflow.ellipsis,
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "Special Offer: ",
                                          style: TextStyle(
                                            fontSize: 16 * fem,
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.whiteColor,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "Starting @6.75%",
                                          style: TextStyle(
                                            fontSize: 16 * fem,
                                            color: AppColors.whiteColor,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 25 * fem,
                                  child: Center(
                                      child: Padding(
                                    padding: EdgeInsets.all(10 * fem),
                                    child: Image.asset("assets/img/money.png"),
                                  )),
                                ),
                                SizedBox(
                                  width: 10 * fem,
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Parallel loan from existing bank",
                                        style: TextStyle(
                                          fontSize: 18 * fem,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.blackColor,
                                        ),
                                      ),
                                      Text(
                                        "Hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis",
                                        style: TextStyle(
                                          fontSize: 15 * fem,
                                          color: AppColors.blackColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 10 * fem,
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right_sharp,
                                  size: 30 * fem,
                                  weight: 0.5,
                                  color: AppColors.secondaryColor,
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
