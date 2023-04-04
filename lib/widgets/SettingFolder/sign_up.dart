import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/Big_text.dart';
import 'package:flutter_application_1/widgets/Small_text.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  var emailText = TextEditingController();
  var passText = TextEditingController();
  var phoneText = TextEditingController();
  var nameText = TextEditingController();

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
                width: 120,
                height: 120,
                child: Image.asset('assets/images/logopart1.png'),
              ),
              TextField(
                controller: emailText,
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
                    borderSide: BorderSide(color: Colors.blueAccent, width: 2),
                  ),
                  hintText: 'Email',
                  prefixIcon: Icon(Icons.mail),
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                obscureText: true,
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
              const SizedBox(height: 10),
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
                  hintText: 'Phone No',
                  prefixIcon: Icon(Icons.phone_android),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: nameText,
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
                  hintText: 'Name',
                  prefixIcon: Icon(Icons.person),
                ),
              ),
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
                  String uEmail = emailText.text.toString();
                  String upass = passText.text.toString();
                  String uphone = phoneText.text.toString();
                  String uname = nameText.text.toString();
                  print(
                      'Email: $uEmail, password: $upass, Phone: $uphone, Name: $uname');
                },
                child: const Text(
                  'Sign up',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SmallText(
                text: 'Have an account',
                size: 16,
              ),
              const SizedBox(
                height: 30,
              ),
              SmallText(
                text: 'sign up using one of the following methods',
                size: 15,
              ),
              const SizedBox(
                height: 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Container(
                      height: 60,
                      width: 60,
                      child: Image.asset('assets/images/logo google 2.png'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Container(
                      width: 40,
                      height: 40,
                      child: Image.asset('assets/images/logo twter3.webp'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Container(
                      width: 40,
                      height: 40,
                      child: Image.asset('assets/images/logo fb1.png'),
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
