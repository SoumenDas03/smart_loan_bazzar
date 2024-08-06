import 'dart:convert';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_loan_bazzar/Page/Dashboard/dashboardPage.dart';
import 'package:smart_loan_bazzar/Utils/AppRout.dart';
import 'package:smart_loan_bazzar/Utils/snakebarUtils.dart';
import 'package:http/http.dart' as http;

class Logincontroller extends GetxController {
  final isChecked = false.obs;

  void toggleCheckbox(bool newValue) {
    isChecked.value = newValue;
  }

  final RxBool isLoading = false.obs;

  Future<void> Login({
    required String phone,
    required String password,
  }) async {
    try {
      isLoading(true);
      final response = await http.post(
        Uri.parse(AppRout.BaseUrl + AppRout.Login),
        body: {
          "phone": phone,
          "password": password,
        },
      );
      if (response.statusCode == 200) {
        final responseData = json.decode(response.body.toString());
        final token = responseData["userdetails"]['token'] as String?;
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setString('token', token.toString());
        print(response.body);
        Get.offAll(
          () => DashboardPage(),
          transition: Transition.downToUp,
        );
        SnackbarUtils.showFloatingSnackbar(
          "Message",
          jsonDecode(
            response.body.toString(),
          )["userdetails"]["userdata"]["name"]
              .toString(),
          snackPosition: SnackPosition.TOP,
        );
      } else {
        SnackbarUtils.showFloatingSnackbar(
          "Error",
          jsonDecode(response.body)["errors"],
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
