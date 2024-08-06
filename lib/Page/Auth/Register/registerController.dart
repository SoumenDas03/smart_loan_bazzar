import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:smart_loan_bazzar/Page/Auth/Otp/OtpPage.dart';
import 'package:smart_loan_bazzar/Page/Dashboard/dashboardPage.dart';
import 'package:smart_loan_bazzar/Utils/AppRout.dart';
import 'package:smart_loan_bazzar/Utils/snakebarUtils.dart';

class Registercontroller extends GetxController {
  final isChecked = false.obs;

  void toggleCheckbox(bool newValue) {
    isChecked.value = newValue;
  }

  final RxBool isLoading = false.obs;

  Future<void> userRegister(
      {required String name,
      required String email,
      required String password,
      required String phone}) async {
    try {
      isLoading(true);
      final response = await http.post(
        Uri.parse(AppRout.BaseUrl + AppRout.User_Register),
        body: {
          "name": name,
          "email": email,
          "password": password,
          "phone": phone,
        },
      );
      if (response.statusCode == 200) {
        print(response.body);
        jsonDecode(
                  response.body.toString(),
                )["message"] ==
                "Registration Successfull"
            ? Get.off(
                () => OtpPage(
                  phone: phone,
                ),
                transition: Transition.downToUp,
              )
            : null;
        SnackbarUtils.showFloatingSnackbar(
          "Message",
          jsonDecode(
                    response.body.toString(),
                  )["message"] ==
                  "Registration Successfull"
              ? "Check Your OTP"
              : jsonDecode(
                  response.body.toString(),
                )["message"][0]
                  .toString(),
          snackPosition: SnackPosition.TOP,
        );
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
}
