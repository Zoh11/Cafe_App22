import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../widgets/Big_text.dart';
import '../../widgets/Small_text.dart';
import '../../widgets/icon_and_Text.dart';

class SmallContainer1 extends StatelessWidget {
  const SmallContainer1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          bigText(text: "Peshawari Chawal"),
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
              SmallText(text: '4.7'),
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
              const IconText(
                icon: Icons.location_on,
                text: '1.8km',
                iconcolor: const Color(0xFF89dad0),
              ),
              const IconText(
                icon: Icons.access_time_rounded,
                text: '33min',
                iconcolor: const Color(0xFFfcab88),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
