import 'package:flutter/material.dart';

class ScrollApp extends StatefulWidget {
  const ScrollApp({super.key});

  @override
  State<ScrollApp> createState() => _ScrollAppState();
}

class _ScrollAppState extends State<ScrollApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.amber,
              child: const Center(child: Text('this os')),
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.blue,
              child: const Center(child: Text('this jnjn')),
            ),
          ],
        ),
      ),
    );
  }
}
