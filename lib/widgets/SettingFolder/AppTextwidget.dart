import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../utils/colors.dart';

class AppTextWidget extends StatelessWidget {
  final TextEditingController textController;
  final String hintText;
  final IconData icon;

  const AppTextWidget(
      {super.key,
      required this.textController,
      required this.hintText,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              spreadRadius: 7,
              offset: Offset(1, 10),
              color: Colors.grey.withOpacity(0.2),
            )
          ]),
      child: TextField(
        controller: textController,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: Icon(
            icon,
            color: AppColors.yellowColor,
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(
                width: 1.0,
                color: Colors.white,
              )),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(
                width: 1.0,
                color: Colors.white,
              )),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
