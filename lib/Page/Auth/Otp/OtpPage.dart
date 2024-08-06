import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_loan_bazzar/Page/Auth/Otp/OtpController.dart';
import 'package:smart_loan_bazzar/Utils/UtilsColors.dart';
import 'package:smart_loan_bazzar/Utils/snakebarUtils.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key, required this.phone});
  final String phone;

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  // Controllers for each OTP input field
  final TextEditingController otpController1 = TextEditingController();
  final TextEditingController otpController2 = TextEditingController();
  final TextEditingController otpController3 = TextEditingController();
  final TextEditingController otpController4 = TextEditingController();

  // Focus nodes to manage focus between OTP input fields
  final FocusNode focusNode1 = FocusNode();
  final FocusNode focusNode2 = FocusNode();
  final FocusNode focusNode3 = FocusNode();
  final FocusNode focusNode4 = FocusNode();

  @override
  void dispose() {
    // Dispose controllers and focus nodes
    otpController1.dispose();
    otpController2.dispose();
    otpController3.dispose();
    otpController4.dispose();
    focusNode1.dispose();
    focusNode2.dispose();
    focusNode3.dispose();
    focusNode4.dispose();
    super.dispose();
  }

  final Otpcontroller otpcontroller = Get.put(
    Otpcontroller(),
  );

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    final double screenWidth = mediaQuery.size.width;
    final double screenHeight = mediaQuery.size.height;
    final double fem = screenWidth / 375.0;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "OTP",
          style: TextStyle(
            color: Color(0XFF424242),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Enter the 4-digit\nOTP sent to ${widget.phone}",
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildOtpBox(otpController1, focusNode1, focusNode2),
                    _buildOtpBox(otpController2, focusNode2, focusNode3),
                    _buildOtpBox(otpController3, focusNode3, focusNode4),
                    _buildOtpBox(otpController4, focusNode4, null),
                  ],
                ),
                SizedBox(height: 75),
                Container(
                  width: screenWidth,
                  height: 50 * fem,
                  child: Obx(
                    () => ElevatedButton(
                      onPressed: () {
                        // Handle OTP submission
                        String otp = otpController1.text +
                            otpController2.text +
                            otpController3.text +
                            otpController4.text;
                        //
                        // otpController1.text.isEmpty ||
                        //         otpController2.text.isEmpty ||
                        //         otpController3.text.isEmpty ||
                        //         otpController4.text.isEmpty
                        //     ? SnackbarUtils.showFloatingSnackbar(
                        //         "Error",
                        //         "All Field Are Required",
                        //         snackPosition: SnackPosition.TOP,
                        //       )
                        //     :
                        otpcontroller.OtpCheck(
                          phone: widget.phone.trim(),
                          otp: otp.trim(),
                        );

                        print("Entered OTP: $otp");
                      },
                      child: otpcontroller.isLoading.value
                          ? Center(
                              child: CircularProgressIndicator(
                                color: AppColors.whiteColor,
                              ),
                            )
                          : Text(
                              "Submit",
                              style: TextStyle(color: AppColors.whiteColor),
                            ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
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

  Widget _buildOtpBox(TextEditingController controller,
      FocusNode currentFocusNode, FocusNode? nextFocusNode) {
    return SizedBox(
      width: 50,
      child: TextFormField(
        controller: controller,
        focusNode: currentFocusNode,
        maxLength: 1,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 24),
        decoration: InputDecoration(
          counterText: "",
          border: OutlineInputBorder(),
        ),
        onChanged: (value) {
          if (value.length == 1) {
            // Move to the next field if not the last field
            if (nextFocusNode != null) {
              FocusScope.of(context).requestFocus(nextFocusNode);
            } else {
              // Unfocus the field if it's the last one
              currentFocusNode.unfocus();
            }
          }
        },
      ),
    );
  }
}
