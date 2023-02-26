import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KelSnackBar {
  void show({
    required String title,
    required String message,
    Color color = const Color(0xffEF5350),
  }) {
    Get.snackbar(
      title,
      message,
      backgroundColor: color,
      colorText: Colors.white,
      icon: Icon(Icons.info, color: Colors.white),
      messageText: Text(
        message,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    );
  }
}
