import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/Small_text.dart';

import '../../../utils/colors.dart';
import '../../../widgets/Big_text.dart';
import '../../../widgets/icon_and_Text.dart';

class PapularSmallContainer5 extends StatelessWidget {
  const PapularSmallContainer5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      bottomNavigationBar: Container(
        height: 120,
        padding: const EdgeInsets.only(top: 30, bottom: 30),
        decoration: const BoxDecoration(
          color: Color(0xFFf7f6f4),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              padding: const EdgeInsets.only(
                  top: 20, bottom: 20, left: 20, right: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Row(
                children: [
                  Icon(Icons.favorite, color: AppColors.mainColor),
                ],
              ),
            ),
            Container(
              padding:
                  EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
              child: bigText(
                text: 'Check out',
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.mainColor),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/pic2.jpg'),
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(child: bigText(text: "Som tam, Thailand")),
              Column(
                children: [
                  Text('''Is Beijing Duck same as Peking duck?
      Image result for chinese Peking Roasted Duck. Beijing Roasted Duck.
      Peking duck can. According to the official website of Beijing, the dish, known variously as Peking duck, Beijing duck or simply Chinese roast duck, among other names, had its beginnings in the Yuan Dynasty (1271 to 1368), a time when the Mongol Emperors ruled China.Is Beijing Duck same as Peking duck?
      Image result for chinese Peking Roasted Duck. Beijing Roasted Duck.
      Peking duck can. According to the official website of Beijing, the dish, known variously as Peking duck, Beijing duck or simply Chinese roast duck, among other names, had its beginnings in the Yuan Dynasty (1271 to 1368), a time when the Mongol Emperors ruled China.'''),
                  Container(
                    padding: const EdgeInsets.only(
                        top: 20, bottom: 20, left: 120, right: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    child: Row(
                      children: [
                        Icon(
                          Icons.remove,
                          color: AppColors.signColor,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        bigText(text: '\$2343'),
                        SizedBox(
                          width: 6,
                        ),
                        Icon(
                          Icons.add,
                          color: AppColors.signColor,
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}











//  Container(
//               padding: const EdgeInsets.only(
//                   top: 20, bottom: 20, left: 20, right: 20),
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(20), color: Colors.white),
//               child: Row(
//                 children: [
//                   Icon(
//                     Icons.remove,
//                     color: AppColors.signColor,
//                   ),
//                   SizedBox(
//                     width: 6,
//                   ),
//                   bigText(text: '0'),
//                   SizedBox(
//                     width: 6,
//                   ),
//                   Icon(
//                     Icons.add,
//                     color: AppColors.signColor,
//                   ),
//                 ],
//               ),
//             ),