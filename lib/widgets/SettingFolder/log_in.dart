import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/BottomAppBarr.dart';
import 'package:flutter_application_1/widgets/SettingFolder/sign_up.dart';
import 'package:flutter_application_1/widgets/Small_text.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var phoneText = TextEditingController();
  var passText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 140,
                height: 140,
                child: Image.asset('assets/images/logopart1.png'),
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 180),
                    child: Text(
                      'Hello',
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 160),
                    child: Text(
                      'Sign into your account',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              TextField(
                controller: phoneText,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(31),
                    borderSide: BorderSide(color: Colors.red, width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(31),
                    borderSide: BorderSide(color: Colors.blueAccent, width: 2),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(31),
                  ),
                  hintText: 'Phone No.',
                  prefixIcon: Icon(Icons.phone_android),
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: passText,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(31),
                    borderSide: BorderSide(color: Colors.red, width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(31),
                    borderSide: BorderSide(color: Colors.blueAccent, width: 2),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(31),
                  ),
                  hintText: 'Password',
                  prefixIcon: Icon(Icons.password),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 150),
                child: Text('sign into your account'),
              ),
              SizedBox(height: 10),
              const SizedBox(height: 25),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xFF89dad0)),
                    minimumSize: MaterialStateProperty.all<Size>(Size(150, 55)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ))),
                onPressed: () {
                  String uphone = phoneText.text.toString();
                  String upass = passText.text;
                  print('Phone: $uphone, Password: $upass');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return MyStatefulWidget();
                      },
                    ),
                  );
                },
                child: const Text(
                  'Sign in',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Container(
                      child: Row(
                    children: [
                      SmallText(
                        text: 'Dont have an Acount? ',
                        size: 15,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return SignupPage();
                              },
                            ),
                          );
                        },
                        child: Hero(
                          tag: 'Signup',
                          child: SmallText(
                            text: 'Create',
                            size: 15,
                          ),
                        ),
                      ),
                    ],
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
