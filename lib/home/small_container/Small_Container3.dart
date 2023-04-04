import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../utils/colors.dart';
import '../../widgets/Big_text.dart';
import '../../widgets/Small_text.dart';
import '../../widgets/icon_and_Text.dart';

class SmallContainer3 extends StatelessWidget {
  const SmallContainer3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          bigText(text: "karachi Biryani"),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Wrap(
                children: List.generate(5, (index) {
                  return Icon(
                    Icons.star,
                    color: AppColors.mainColor,
                    size: 15,
                  );
                }),
              ),
              const SizedBox(
                width: 10,
              ),
              SmallText(text: '4.5'),
              const SizedBox(
                width: 10,
              ),
              SmallText(text: '1289'),
              const SizedBox(
                width: 10,
              ),
              SmallText(text: "comments")
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconText(
                icon: Icons.circle_sharp,
                text: 'Normal',
                iconcolor: AppColors.iconColor1,
              ),
              IconText(
                icon: Icons.location_on,
                text: '1.7km',
                iconcolor: Color(0xFF89dad0),
              ),
              IconText(
                icon: Icons.access_time_rounded,
                text: '32',
                iconcolor: Color(0xFFfcab88),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
