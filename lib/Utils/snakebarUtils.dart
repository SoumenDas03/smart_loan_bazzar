import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackbarUtils {
  static showFloatingSnackbar(
    String title,
    String message, {
    Duration duration = const Duration(seconds: 3),
    Color backgroundColor = Colors.black,
    Color textColor = Colors.white,
    SnackPosition position = SnackPosition.BOTTOM,
    required SnackPosition snackPosition,
  }) {
    Get.snackbar(
      title,
      message,
      duration: duration,
      backgroundColor: backgroundColor,
      colorText: textColor,
      snackPosition: position,
      borderRadius: 8,
      margin: const EdgeInsets.all(16),
      maxWidth: 400,
      animationDuration: const Duration(milliseconds: 300),
      overlayBlur: 0,
      overlayColor: Colors.transparent,
      snackStyle: SnackStyle.FLOATING,
      mainButton: TextButton(
        onPressed: () {
          Get.back();
        },
        child: Text(
          'Dismiss',
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}
