import 'package:flutter/material.dart';
import 'package:cv/const.dart';

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
            child: Column(children: const [
          SizedBox(height: 30),
          CircleAvatar(
            radius: 90,
            foregroundImage: AssetImage('assets/photo.jpeg'),
          ),
          Text(
            'Alex Shilenkov',
            style: kbigTitle,
          ),
          Text('looking for a job Team Lead/Product Owner', style: ksmallTitle),
          SizedBox(height: 30),
          Padding(
            padding: kpadding,
            child: Card(
              child: ListTile(
                leading: Icon(Icons.call),
                title: Text("+375 25 745 22 30"),
              ),
            ),
          ),
          Padding(
            padding: kpadding,
            child: Card(
              child: ListTile(
                leading: Icon(Icons.email),
                title: Text("alexesc154@gmail.com"),
              ),
            ),
          ),
        ])),
      ),
    );
  }
}
