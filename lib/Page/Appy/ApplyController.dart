import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_loan_bazzar/Utils/AppRout.dart';
import 'package:smart_loan_bazzar/Utils/snakebarUtils.dart';

class Applycontroller extends GetxController {
  String? token;
  @override
  void onInit() {
    super.onInit();
    loadData();
  }

  loadData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    token = prefs.getString('token');
  }

  final RxBool isLoading = false.obs;

  Future<void> applyLoanForm({
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
    required String salary_deposited_bank,
    required String other_Salarybank,
    required String loan_amt,
    required String loan_tenure,
    required String existing_bank,
  }) async {
    try {
      isLoading(true);
      final response = await http.post(
        Uri.parse(AppRout.BaseUrl + AppRout.Loan_Form),
        headers: {"Authorization": "Bearer $token"},
        body: {
          "name": name,
          "loan_type": loan_type,
          "phone_number": phone_number,
          "occupation": occupation,
          "othercompany": othercompany,
          "company_id": company_id,
          "city_id": city_id,
          "monthely_net_income": monthely_net_income,
          "location": location,
          "pancard_no": pancard_no,
          "date_of_birth": date_of_birth,
          "monthly_loan_obligation": monthly_loan_obligation,
          "total_exprienced": total_exprienced,
          "current_job_vintage": current_job_vintage,
          "salary_deposited_bank": salary_deposited_bank,
          "other_Salarybank": other_Salarybank,
          "loan_amt": loan_amt,
          "loan_tenure": loan_tenure,
          "existing_bank": existing_bank,
        },
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
          "Success",
          "loan form submitted",
          snackPosition: SnackPosition.TOP,
        );
      }
      if (response.statusCode == 500) {
        SnackbarUtils.showFloatingSnackbar(
          "Error",
          "Interna Server error",
          snackPosition: SnackPosition.TOP,
        );
      } else {
        SnackbarUtils.showFloatingSnackbar(
          "Error",
          "Fail",
          snackPosition: SnackPosition.TOP,
        );
      }
    } catch (e) {
    } finally {
      isLoading(false);
    }
  }
}
