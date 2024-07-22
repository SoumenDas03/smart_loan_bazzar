// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class PrivacyAndTermsPage extends StatefulWidget {
  const PrivacyAndTermsPage({super.key});

  @override
  State<PrivacyAndTermsPage> createState() => _PrivacyAndTermsPageState();
}

class _PrivacyAndTermsPageState extends State<PrivacyAndTermsPage> {
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
            "Privacy & Terms",
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
                  " Our Terms & Conditions",
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
                  " Why do we use it?",
                  style: TextStyle(
                      fontSize: 18 * fem, fontWeight: FontWeight.bold),
                ),
                Text(
                  "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose injected humour and the like Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.",
                  style: TextStyle(
                    fontSize: 15 * fem,
                  ),
                ),
                Text(
                  "Where does it come from?",
                  style: TextStyle(
                      fontSize: 18 * fem, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Possimus nam ipsam consequatur cupiditate quibusdam animi nobis, et inventore fuga sit dicta quos.",
                  style: TextStyle(
                    fontSize: 15 * fem,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
