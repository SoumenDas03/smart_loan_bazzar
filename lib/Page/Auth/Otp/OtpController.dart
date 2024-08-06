import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_loan_bazzar/Page/Dashboard/dashboardPage.dart';
import 'package:smart_loan_bazzar/Utils/AppRout.dart';
import 'package:smart_loan_bazzar/Utils/snakebarUtils.dart';

class Otpcontroller extends GetxController {
  final RxBool isLoading = false.obs;

  Future<void> OtpCheck({required String phone, required String otp}) async {
    try {
      isLoading(true);
      final response = await http.post(
        Uri.parse(AppRout.BaseUrl + AppRout.OtpRegister),
        body: {
          "phone": phone,
          "otp": otp,
        },
      );
      if (response.statusCode == 200) {
        final responseData = json.decode(response.body.toString());
        print(response.body);
        jsonDecode(
                  response.body.toString(),
                )["message"] ==
                "Login Successful"
            ? Get.off(
                () => DashboardPage(),
                transition: Transition.downToUp,
              )
            : null;
        SnackbarUtils.showFloatingSnackbar(
          "Message",
          jsonDecode(
                    response.body.toString(),
                  )["message"] ==
                  "Login Successful"
              ? "Wellcome ${responseData["userdetails"]["name"]}"
              : jsonDecode(
                        response.body.toString(),
                      )["message"] ==
                      "Wrong OTP please try again"
                  ? jsonDecode(
                      response.body.toString(),
                    )["message"]
                  : jsonDecode(
                      response.body.toString(),
                    )["message"][0]
                      .toString(),
          snackPosition: SnackPosition.TOP,
        );

        final token = responseData['token'] as String?;
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setString('token', token.toString());
      } else {
        SnackbarUtils.showFloatingSnackbar(
          "Error",
          response.body,
          snackPosition: SnackPosition.TOP,
        );
      }
    } catch (e) {
    } finally {
      isLoading(false);
    }
  }

  void saveTokenToSharedPreferences(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', token);
    isLoading.value = true;
  }
}
