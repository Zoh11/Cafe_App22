import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../widgets/Big_text.dart';
import '../../widgets/Small_text.dart';
import '../../widgets/icon_and_Text.dart';

class MultiplePages4 extends StatelessWidget {
  const MultiplePages4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    bigText(text: '0'),
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
              Container(
                padding:
                    EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
                child: bigText(
                  text: '\$10 | Add to Card',
                  color: Colors.white,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.mainColor),
              )
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              height: 220,
              margin: const EdgeInsets.only(left: 5, right: 5),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/pic1.jpg'),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.only(bottom: 130, left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(
                                context,
                              );
                            },
                            child: Hero(
                              tag: 'HomePage',
                              child: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.black,
                                size: 15,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.shopping_cart_outlined,
                            color: Colors.black,
                            size: 15,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  bigText(text: "Kohaty Kaboob"),
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
                        iconcolor: const Color(0xFF89dad0),
                      ),
                      IconText(
                        icon: Icons.access_time_rounded,
                        text: '32min',
                        iconcolor: const Color(0xFFfcab88),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 270),
              child: Container(
                child: bigText(text: 'Introduce'),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(11.0),
                  child: Container(
                    height: 150,
                    width: 370,
                    // color: Colors.amber,
                    child: Text(
                      '''The existence of pulao was not known in India until the Middle-Ages and most often, people link pulao to be a Muslim dish, originating from the Persian cuisine as does the use of several Middle-Eastern ingredients like raisins and fruits in the making of the pilaf or pulao, which is actually the Persian style of The existence.''',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
