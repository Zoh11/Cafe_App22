import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/colors.dart';
import 'package:flutter_application_1/widgets/Big_text.dart';
import 'package:flutter_application_1/widgets/SettingFolder/AppTextwidget.dart';
import 'package:flutter_application_1/widgets/SettingFolder/sign_up.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

import '../BottomAppBarr.dart';
import 'Show_custom_massges.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    var PasswordController = TextEditingController();
    var phoneController = TextEditingController();
    void _registration() {
      String phone = phoneController.text.trim();
      String password = PasswordController.text.trim();

      if (phone.isEmpty) {
        ShowCustomSnackBar('Type in your phone', title: 'Phone number');
      } else if (password.isEmpty) {
        ShowCustomSnackBar('Type in your password', title: 'passwrod');
      } else {
        ShowCustomSnackBar('All went well', title: 'perfect');
      }
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
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
            Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello',
                    style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Sign in your account',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey[500],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            AppTextWidget(
                textController: phoneController,
                hintText: 'phone',
                icon: Icons.phone),
            SizedBox(
              height: 12,
            ),
            AppTextWidget(
                textController: PasswordController,
                hintText: 'Password',
                icon: Icons.password),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                RichText(
                  text: TextSpan(
                    text: 'Sign in your account',
                    style: TextStyle(color: Colors.grey[500], fontSize: 17),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const MyStatefulWidget();
                    },
                  ),
                );
              },
              // child: GestureDetector(
              //   onTap: () {
              //     _registration();
              //   },
              child: Container(
                width: 140,
                height: 65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: AppColors.mainColor,
                ),
                child: Center(
                  child: bigText(
                    text: "Sign in",
                    size: 20,
                    color: Colors.white,
                  ),
                ),
              ),
              // ),
            ),
            SizedBox(
              height: 10,
            ),
            RichText(
              text: TextSpan(
                  text: 'Don\'t Have an account?',
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 15,
                  ),
                  children: [
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        // ignore: avoid_print
                        ..onTap = () => Get.to(
                              () => const SignUpPAge(),
                              transition: Transition.fade,
                            ),
                      text: ' Create',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.mainBlackColor,
                        fontSize: 15,
                      ),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
