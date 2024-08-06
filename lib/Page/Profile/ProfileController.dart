import 'dart:convert';
import 'dart:io';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_loan_bazzar/Page/Profile/profileModel.dart';
import 'package:smart_loan_bazzar/Utils/AppRout.dart';
import 'package:http/http.dart' as http;

class Profilecontroller extends GetxController {
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
    ProfileDetails(
      token: token.toString(),
    );
  }

  Future<void> ProfileDetails({required String token}) async {
    try {
      isLoading(true);
      final response = await http.get(
        Uri.parse(AppRout.BaseUrl + AppRout.Profile_Details),
        headers: {
          HttpHeaders.authorizationHeader: "Bearer $token",
        },
      );
      if (response.statusCode == 200) {
        Map<String, dynamic> data = jsonDecode(response.body);
        //profileDetailsModel = ProfileDetailsModel.fromJson(data);
        print("Success: $data");
      } else {
        // Handle unsuccessful response
        print("Failed to fetch profile details.");
      }
    } catch (e) {
      // Handle error
      print("Error: $e");
    } finally {
      isLoading(false);
    }
  }
}
