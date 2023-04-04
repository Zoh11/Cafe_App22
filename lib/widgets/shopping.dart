import 'package:flutter/material.dart';
import 'Big_text.dart';

class ShoppingPage extends StatelessWidget {
  const ShoppingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping'),
      ),
      body: Row(
        children: [
          Container(
            height: 130,
            width: 130,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/pic3.jpg'),
              ),
            ),
          ),
          Container(
            width: 254,
            height: 130,
            color: Colors.amber,
            child: Column(
              children: [
                bigText(text: "Peshawari Chawal"),
                const SizedBox(
                  height: 9,
                ),
                const Text(
                  '💲4500',
                  style: TextStyle(color: Colors.red, fontSize: 20),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
