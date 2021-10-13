import 'package:flutter/material.dart';
import 'package:instagramui/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: InstagramUI(),
      routes: {
        InstagramUI.id: (context) => InstagramUI(),
      },
    );
  }
}
