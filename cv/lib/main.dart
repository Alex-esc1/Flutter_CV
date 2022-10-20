import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      home: const MyCv(),
    );
  }
}

class MyCv extends StatelessWidget {
  const MyCv({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
            child: Column(
          children: const [
            SizedBox(height: 30),
            CircleAvatar(
              radius: 90,
              foregroundImage: AssetImage('assets/photo.jpeg'),
            ),
            Text('Alex Shilenkov'),
            Text('looking for a job Team Lead/Product Owner'),
          ],
        )),
      ),
    );
  }
}
