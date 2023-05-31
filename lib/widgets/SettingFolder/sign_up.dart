import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/home/Main_Food_Page.dart';
import 'package:flutter_application_1/utils/colors.dart';
import 'package:flutter_application_1/widgets/Big_text.dart';
import 'package:flutter_application_1/widgets/SettingFolder/AppTextwidget.dart';
import 'package:flutter_application_1/widgets/SettingFolder/Show_custom_massges.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

import '../BottomAppBarr.dart';

class SignUpPAge extends StatelessWidget {
  const SignUpPAge({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    // ignore: non_constant_identifier_names
    var PasswordController = TextEditingController();
    var nameController = TextEditingController();
    var phoneController = TextEditingController();
    // ignore: non_constant_identifier_names
    var SignUpImages = [
      "logo fb1.png",
      "logo google 2.png",
      "logo twter3.webp",
    ];
    // ignore: no_leading_underscores_for_local_identifiers
    void _registration() {
      String name = nameController.text.trim();
      String phone = phoneController.text.trim();
      String email = emailController.text.trim();
      String password = PasswordController.text.trim();

      if (name.isEmpty) {
        ShowCustomSnackBar('Type in your name', title: 'Name ');
      } else if (phone.isEmpty) {
        ShowCustomSnackBar('Type in your phone', title: 'Phone number');
      } else if (email.isEmpty) {
        ShowCustomSnackBar('Type in your adress', title: 'Email Adress ');
      } else if (!GetUtils.isEmail(email)) {
        ShowCustomSnackBar('Type in valid email adress',
            title: 'Valid Email adress ');
      } else if (password.isEmpty) {
        ShowCustomSnackBar('Type in your password', title: 'passwrod');
      } else if (password.length < 6) {
        ShowCustomSnackBar('password can not less than 6 character',
            title: 'password');
      } else {
        ShowCustomSnackBar('All went well', title: 'perfect');
      }
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Container(
              height: 100,
              child: Center(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 80,
                  backgroundImage: AssetImage('assets/images/logopart1.png'),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            AppTextWidget(
                textController: emailController,
                hintText: 'Email',
                icon: Icons.email),
            SizedBox(
              height: 20,
            ),
            AppTextWidget(
                textController: PasswordController,
                hintText: 'Password',
                icon: Icons.password),
            SizedBox(
              height: 20,
            ),
            AppTextWidget(
                textController: nameController,
                hintText: 'Name',
                icon: Icons.person),
            SizedBox(
              height: 20,
            ),
            AppTextWidget(
                textController: phoneController,
                hintText: 'phone',
                icon: Icons.phone),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                _registration();
              },
              child: Container(
                width: 140,
                height: 65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: AppColors.mainColor,
                ),
                child: Center(
                  child: bigText(
                    text: "Sign up",
                    size: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            RichText(
              text: TextSpan(
                recognizer: TapGestureRecognizer()..onTap = () => Get.back(),
                text: 'Have an account already',
                style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            RichText(
              text: TextSpan(
                text: 'Sign up using one of the following methods',
                style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Wrap(
              children: List.generate(
                3,
                (index) => Padding(
                  padding: const EdgeInsets.all(11.0),
                  child: CircleAvatar(
                    radius: 23,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage(
                      'assets/images/' + SignUpImages[index],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
