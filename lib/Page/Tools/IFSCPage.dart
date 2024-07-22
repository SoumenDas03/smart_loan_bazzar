// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_loan_bazzar/Page/Tools/Bank/BankPage.dart';

class IfscPage extends StatefulWidget {
  const IfscPage({super.key});

  @override
  State<IfscPage> createState() => _IfscPageState();
}

class _IfscPageState extends State<IfscPage> {
  final List<String> StateItems = [
    'WB',
    'Madhyapradesh',
    'Orisha',
    'Dilhi',
  ];
  final List<String> CityItems = [
    'Kolkata',
    'Mumbai',
    'Chenni',
    'Bhagalpur',
  ];
  // Variable to hold the selected item
  String? selectState;
  String? selectCity;
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
            "IFSC Calculator",
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(15 * fem),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Bank",
                  style: TextStyle(fontSize: 18 * fem, color: Colors.black87),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print("Select Bank");
                  Get.to(
                    () => BankPage(),
                  );
                },
                child: Container(
                  height: 60 * fem,
                  padding: EdgeInsets.only(left: 12 * fem, right: 12 * fem),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35 * fem),
                    // border: Border.all(color: Colors.black26),
                  ),
                  width: screenWidth,
                  child: Row(
                    children: [
                      Text(
                        "Select Bank",
                        style: TextStyle(
                            fontSize: 18 * fem, color: Colors.black87),
                      ),
                      Spacer(),
                      Container(
                        width: 65 * fem,
                        child: Text(
                          textAlign: TextAlign.right,
                          overflow: TextOverflow.ellipsis,
                          "",
                          style: TextStyle(
                              fontSize: 18 * fem, color: Colors.black87),
                        ),
                      ),
                      Icon(Icons.arrow_drop_down)
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "State",
                        style: TextStyle(
                            fontSize: 18 * fem, color: Colors.black87),
                      ),
                      DropdownButton<String>(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(right: 10 * fem),
                        hint: Container(
                          width: 125 * fem,
                          child: Text('Select'),
                        ),
                        value: selectState,
                        underline: Container(),
                        onChanged: (String? newValue) {
                          setState(() {
                            selectState = newValue;
                          });
                        },
                        items: StateItems.map<DropdownMenuItem<String>>(
                            (String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "City",
                        style: TextStyle(
                            fontSize: 18 * fem, color: Colors.black87),
                      ),
                      DropdownButton<String>(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(right: 10 * fem),
                        hint: Container(
                          width: 125 * fem,
                          child: Text('Select'),
                        ),
                        value: selectCity,
                        underline: Container(),
                        onChanged: (String? newValue) {
                          setState(() {
                            selectCity = newValue;
                          });
                        },
                        items: CityItems.map<DropdownMenuItem<String>>(
                            (String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 15 * fem,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Branch Name",
                  style: TextStyle(fontSize: 18 * fem, color: Colors.black87),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print("Select Branch");
                  Get.to(
                    () => BankPage(),
                  );
                },
                child: Container(
                  height: 60 * fem,
                  padding: EdgeInsets.only(left: 12 * fem, right: 12 * fem),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35 * fem),
                    // border: Border.all(color: Colors.black26),
                  ),
                  width: screenWidth,
                  child: Row(
                    children: [
                      Text(
                        "Select Bank",
                        style: TextStyle(
                            fontSize: 18 * fem, color: Colors.black87),
                      ),
                      Spacer(),
                      Container(
                        width: 65 * fem,
                        child: Text(
                          textAlign: TextAlign.right,
                          overflow: TextOverflow.ellipsis,
                          "",
                          style: TextStyle(
                              fontSize: 18 * fem, color: Colors.black87),
                        ),
                      ),
                      Icon(Icons.arrow_drop_down)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
