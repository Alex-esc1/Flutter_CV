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
          child: Column(
            children: [
              const SizedBox(height: 30),
              const CircleAvatar(
                radius: 90,
                foregroundImage: AssetImage('assets/photo.jpeg'),
              ),
              const Text(
                name,
                style: kbigTitle,
              ),
              const SizedBox(height: 30),
              const Text(textSearch, style: ksmallTitle),
              const SizedBox(height: 30),
              const Padding(
                padding: kpadding,
                child: Card(
                  child: ListTile(
                    leading: Icon(Icons.call),
                    title: Text(phone, style: ksmallTitle),
                  ),
                ),
              ),
              const Padding(
                padding: kpadding,
                child: Card(
                  child: ListTile(
                    leading: Icon(Icons.email),
                    title: Text(mail, style: ksmallTitle),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: const [
                          Text(ed,
                              textAlign: TextAlign.center, style: ksmallTitle),
                          SizedBox(height: 10),
                          Text(study,
                              textAlign: TextAlign.center, style: ksmallTitle),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: const [
                          Text(we,
                              textAlign: TextAlign.center, style: ksmallTitle),
                          SizedBox(height: 10),
                          Text(job,
                              textAlign: TextAlign.center, style: ksmallTitle),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
