import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:smart_loan_bazzar/Page/Auth/Otp/OtpPage.dart';
import 'package:smart_loan_bazzar/Utils/AppRout.dart';
import 'package:smart_loan_bazzar/Utils/snakebarUtils.dart';

class Registercontroller extends GetxController {
  final isChecked = false.obs;

  void toggleCheckbox(bool newValue) {
    isChecked.value = newValue;
  }

  final RxBool isLoading = false.obs;

  Future<void> userRegister({
    required String name,
    required String loan_type,
    required String phone_number,
    required String occupation,
    required String othercompany,
    required String company_id,
    required String city_id,
    required String monthely_net_income,
    required String location,
    required String pancard_no,
    required String date_of_birth,
    required String monthly_loan_obligation,
    required String total_exprienced,
    required String current_job_vintage,
    required String salary_bank,
    required String other_Salarybank,
    required String loan_amt,
    required String loan_tenure,
    required String existing_bank,
  }) async {
    try {
      isLoading(true);
      final response = await http.post(
        Uri.parse(AppRout.BaseUrl + AppRout.User_Register),
        // body: {
        //   "name": name,
        //   "email": email,
        //   "password": password,
        //   "phone": phone,
        // },
      );
      if (response.statusCode == 200) {
        print(response.body);
        // jsonDecode(
        //           response.body.toString(),
        //         )["message"] ==
        //         "Registration Successfull"
        //     ? Get.off(
        //         () => OtpPage(
        //           phone: phone,
        //         ),
        //         transition: Transition.downToUp,
        //       )
        //     : null;
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
