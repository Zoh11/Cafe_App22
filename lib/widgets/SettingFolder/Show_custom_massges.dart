import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/Big_text.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

// ignore: non_constant_identifier_names
void ShowCustomSnackBar(String message,
    {bool isError = true, String title = "Error"}) {
  Get.snackbar(title, message,
      titleText: bigText(
        text: title,
        color: Colors.white,
      ),
      messageText: Text(
        message,
        style: const TextStyle(color: Colors.white),
      ),
      colorText: Colors.white,
      snackPosition: SnackPosition.TOP,
      backgroundColor: Colors.redAccent);
}
