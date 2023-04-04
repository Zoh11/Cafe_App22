import 'package:flutter/material.dart';
import 'package:flutter_application_1/home/Multiple_Page/Multiple_Pages.dart';
import 'package:flutter_application_1/home/Multiple_Page/Multiple_Pages2.dart';
import 'package:flutter_application_1/home/Multiple_Page/Multiple_Pages3.dart';
import 'package:flutter_application_1/home/Multiple_Page/Multiple_Pages4.dart';
import 'package:flutter_application_1/home/papular%20food/Papular_Food.dart';
import 'package:flutter_application_1/home/papular%20food/Papular_Food3.dart';
import 'package:flutter_application_1/home/papular%20food/Papular_Food4.dart';
import 'package:flutter_application_1/home/papular%20food/Papular_Food5.dart';
import 'package:flutter_application_1/home/papular%20food/Papular_Food2.dart';
import 'package:flutter_application_1/home/small_container/Small_Container1.dart';
import 'package:flutter_application_1/home/small_container/Small_Container2.dart';
import 'package:flutter_application_1/home/small_container/Small_Container3.dart';
import 'package:flutter_application_1/home/small_container/Small_Container4.dart';
import 'package:flutter_application_1/home/small_container/Small_Container5.dart';
// ignore: depend_on_referenced_packages
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter_application_1/widgets/SettingFolder/Profile.dart';
import 'package:flutter_application_1/widgets/SettingFolder/log_in.dart';
import 'package:flutter_application_1/widgets/SettingFolder/sign_up.dart';
import 'package:flutter_application_1/widgets/Small_text.dart';

import '../widgets/Big_text.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  List foodImage = [
    'assets/images/pic1.jpg',
    'assets/images/pic2.jpg',
    'assets/images/pic3.jpg',
    'assets/images/pic4.jpg',
    'assets/images/pic5.jpg',
  ];
  List pushpic = [
    const MultiplePages(),
    const MultiplePages2(),
    const MultiplePages3(),
    const MultiplePages4(),
    const MultiplePages()
  ];
  // ignore: non_constant_identifier_names
  List SmallComtainer = [
    const SmallContainer1(),
    const SmallContainer2(),
    const SmallContainer3(),
    const SmallContainer4(),
    const SmallContainer5(),
  ];
  // ignore: non_constant_identifier_names
  List Papularffood = [
    const PapularFood(),
    const PapularFood2(),
    const PapularFood3(),
    const PapularFood4(),
    const PapularFood5(),
  ];

  List settingContner = [
    const SignupPage(),
    const LoginPage(),
    const ProfilePage(),
  ];
  PageController pageController = PageController(viewportFraction: 0.85);
  var currpageValue = 0.0;
  final double _scaleFactor = 0.8;
  final double _height = 220;
  @override
  initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        currpageValue = pageController.page!;
      });
    });
  }

  @override
  dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // color: Colors.redAccent,
          height: 320,
          child: PageView.builder(
            controller: pageController,
            itemCount: 5,
            // ignore: non_constant_identifier_names
            itemBuilder: (context, Position) {
              return _buildpageitem(Position);
            },
          ),
        ),
        DotsIndicator(
          dotsCount: 5,
          position: currpageValue,
          decorator: DotsDecorator(
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.0)),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          margin: const EdgeInsets.only(left: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              bigText(text: 'Papular'),
              Container(
                margin: const EdgeInsets.only(bottom: 3),
                child: const Text('.'),
              ),
              const SizedBox(
                width: 15,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 2),
                child: SmallText(text: 'Food pairing'),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 700,
          width: 700,
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 5,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      height: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.amber,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            foodImage[index],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 250,
                            height: 110,
                            child: Papularffood[index],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }

  Widget _buildpageitem(int index) {
    Matrix4 matrix = Matrix4.identity();
    if (index == currpageValue.floor()) {
      var currScale = 1 - (currpageValue - index) * (-_scaleFactor);
      var currtrns = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currtrns, 0);
    } else if (index == currpageValue.floor() + 1) {
      var currScale =
          _scaleFactor + (currpageValue - index) * (1 - _scaleFactor);
      var currtrns = _height * (1 - currScale) / 2;

      matrix = Matrix4.diagonal3Values(1, currScale, 1);
    } else if (index == currpageValue.floor() - 1) {
      var currScale = 1 - (currpageValue - index) * (-_scaleFactor);
      var currtrns = _height * (1 - currScale) / 2;

      matrix = Matrix4.diagonal3Values(1, currScale, 1);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(1, _height * (1 - _scaleFactor) / 2, 1);
    }
    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return pushpic[index];
                  },
                ),
              );
            },
            child: Container(
              height: 220,
              margin: const EdgeInsets.only(left: 5, right: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: index.isEven
                    ? const Color(0xFF69c5df)
                    : const Color(0xFF9294cc),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(foodImage[index]),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 120,
              margin: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  // ignore: prefer_const_literals_to_create_immutables
                  boxShadow: [
                    const BoxShadow(
                      color: Color(0xFfe8e8e8),
                      blurRadius: 5.0,
                      offset: Offset(0, 5),
                    ),
                    const BoxShadow(
                      color: Colors.white,
                      offset: Offset(-5, 0),
                    )
                  ]),
              child: Column(
                children: [SmallComtainer[index]],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
