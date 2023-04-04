import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/SettingFolder/log_in.dart';
import 'package:flutter_application_1/widgets/SettingFolder/sign_up.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    List ProfilePage = [
      'zohiab Ahmad',
      '03359880102',
      'zoh2190@gmsil.com',
      'Fill in the adress',
      'Messages',
      'Logout',
    ];
    List arrIcons = [
      Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color(0xFF89dad0),
        ),
        child: Icon(
          Icons.person,
          color: Colors.white,
        ),
      ),
      Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color(0xFFffd280),
        ),
        child: Icon(
          Icons.phone,
          color: Colors.white,
        ),
      ),
      Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color(0xFFffd280),
        ),
        child: Icon(
          Icons.mail,
          color: Colors.white,
        ),
      ),
      Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color(0xFFffd280),
        ),
        child: Icon(
          Icons.location_on,
          color: Colors.white,
        ),
      ),
      Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color(0xFFfcab88),
        ),
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
      ),
      Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color(0xFFfcab88),
        ),
        child: Icon(
          Icons.logout,
          color: Colors.white,
        ),
      ),
      Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color(0xFFfcab88),
        ),
        child: Icon(
          Icons.login,
          color: Colors.white,
        ),
      ),
      Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color(0xFFfcab88),
        ),
        child: Icon(
          Icons.sign_language,
          color: Colors.white,
        ),
      ),
    ];
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Container(
            width: 130,
            height: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(75),
              image: const DecorationImage(
                image: AssetImage('assets/images/pic6.jpg'),
              ),
            ),
          ),
          SizedBox(
            height: 0,
          ),
          Padding(
            padding: const EdgeInsets.all(11.0),
            child: Container(
              width: 500,
              height: 500,
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Container(
                        child: arrIcons[index],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        ProfilePage[index],
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  );
                },
                itemCount: ProfilePage.length,
                separatorBuilder: (context, index) {
                  return const Divider(
                    height: 40,
                    thickness: 10,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
