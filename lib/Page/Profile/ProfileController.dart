import 'dart:convert';
import 'dart:io';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_loan_bazzar/Page/Profile/profileModel.dart';
import 'package:smart_loan_bazzar/Utils/AppRout.dart';
import 'package:http/http.dart' as http;

class ProfileController extends GetxController {
  RxBool isLoading = false.obs;
  ProfileDetailsModel? profileDetailsModel;

  String? token;
  @override
  void onInit() {
    super.onInit();
    loadData();
  }

  loadData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    token = prefs.getString('token');
    await getProfile();
  }

  Future<void> getProfile() async {
    try {
      isLoading(true);
      var response = await http.get(
          Uri.parse(AppRout.BaseUrl + AppRout.Profile_Details),
          headers: {'Authorization': 'Bearer $token'});
      if (response.statusCode == 200) {
        Map<String, dynamic> data = jsonDecode(response.body);
        profileDetailsModel = ProfileDetailsModel.fromJson(data);
        print(token);
        print("Success: $data");
      } else {
        print("error: $response");
      }
    } catch (e) {
      print("Error:$e");
    } finally {
      isLoading(false);
    }
  }
}
