import 'package:flutter/material.dart';

class Orderpage extends StatefulWidget {
  const Orderpage({super.key});

  @override
  State<Orderpage> createState() => _OrderpageState();
}

class _OrderpageState extends State<Orderpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order'),
      ),
      body: Container(
        width: 500,
        height: 30,
        color: Colors.grey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Text('Orders'),
            const Center(
              child: Text(
                '|',
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Text('History'),
          ],
        ),
      ),
    );
  }
}
