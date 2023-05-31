import 'package:flutter/material.dart';
import '../utils/colors.dart';
import 'Big_text.dart';

class ShoppingPage extends StatelessWidget {
  const ShoppingPage({super.key});

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
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
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
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(bottom: 0, left: 10, right: 10, top: 10),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color(0xFF89dad0),
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
                SizedBox(
                  width: 190,
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color(0xFF89dad0),
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
                SizedBox(
                  width: 60,
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color(0xFF89dad0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.home,
                        color: Colors.black,
                        size: 15,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Row(
            children: [
              Container(
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/pic5.jpg'),
                  ),
                ),
              ),
              Container(
                width: 300,
                height: 100,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(top: 5, right: 5, left: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Peshwari chawal',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(
                        'spicy',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          const Text(
                            '\$ 4500',
                            style: TextStyle(color: Colors.red, fontSize: 20),
                          ),
                          SizedBox(
                            width: 150,
                          ),
                          Row(
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
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/pic2.jpg'),
                  ),
                ),
              ),
              Container(
                width: 300,
                height: 100,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(top: 5, right: 5, left: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Peshwari chawal',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(
                        'spicy',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          const Text(
                            '\$ 4500',
                            style: TextStyle(color: Colors.red, fontSize: 20),
                          ),
                          SizedBox(
                            width: 150,
                          ),
                          Row(
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
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/pic4.jpg'),
                  ),
                ),
              ),
              Container(
                width: 300,
                height: 100,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(top: 5, right: 5, left: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Peshwari chawal',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(
                        'spicy',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          const Text(
                            '\$ 4500',
                            style: TextStyle(color: Colors.red, fontSize: 20),
                          ),
                          SizedBox(
                            width: 150,
                          ),
                          Row(
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
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/pic1.jpg'),
                  ),
                ),
              ),
              Container(
                width: 300,
                height: 100,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(top: 5, right: 5, left: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Peshwari chawal',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(
                        'spicy',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          const Text(
                            '\$ 4500',
                            style: TextStyle(color: Colors.red, fontSize: 20),
                          ),
                          SizedBox(
                            width: 150,
                          ),
                          Row(
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
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
