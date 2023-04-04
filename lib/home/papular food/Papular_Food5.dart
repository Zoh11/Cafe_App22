import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/Small_text.dart';

import '../../utils/colors.dart';
import '../../widgets/Big_text.dart';
import '../../widgets/icon_and_Text.dart';

class PapularFood5 extends StatelessWidget {
  const PapularFood5({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          bigText(text: "Chinese Side"),
          SizedBox(
            height: 8,
          ),
          SmallText(text: 'with chinese characteristic'),
          const SizedBox(
            height: 10,
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
                text: '1.8km',
                iconcolor: const Color(0xFF89dad0),
              ),
              IconText(
                icon: Icons.access_time_rounded,
                text: '33',
                iconcolor: const Color(0xFFfcab88),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
