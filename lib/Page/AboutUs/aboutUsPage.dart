// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class AboutUspage extends StatefulWidget {
  const AboutUspage({super.key});

  @override
  State<AboutUspage> createState() => _AboutUspageState();
}

class _AboutUspageState extends State<AboutUspage> {
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
            "About Us",
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(15 * fem),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Heding",
                  style: TextStyle(
                      fontSize: 18 * fem, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Possimus nam ipsam consequatur cupiditate quibusdam animi nobis, et inventore fuga sit dicta quos.\nLorem ipsum dolor sit, amet consectetur adipisicing elit. Quidem ullam explicabo nihil temporibus reiciendis debitis repellendus non cumque voluptas eius vel sequi voluptatum, voluptate eveniet magni suscipit expedita, nobis laudantium?\n",
                  style: TextStyle(
                    fontSize: 15 * fem,
                  ),
                ),
                Text(
                  "Heding",
                  style: TextStyle(
                      fontSize: 18 * fem, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Possimus nam ipsam consequatur cupiditate quibusdam animi nobis, et inventore fuga sit dicta quos.",
                  style: TextStyle(
                    fontSize: 15 * fem,
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
