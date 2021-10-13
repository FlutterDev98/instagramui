// ignore_for_file: prefer_final_fields, prefer_const_constructors, prefer_const_literals_to_create_immutables, import_of_legacy_library_into_null_safe
//dart
// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'feed_page.dart';

class InstagramUI extends StatefulWidget {
  static final String id = 'UI';
  @override
  _InstagramUIState createState() => _InstagramUIState();
}

class _InstagramUIState extends State<InstagramUI> {
  var _pages = [
    FeedPage(),
    FeedPage(),
    FeedPage(),
    FeedPage(),
    FeedPage(),
  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        brightness: Brightness.light,
        centerTitle: true,
        title: Text(
          "Instagram",
          style: TextStyle(
            color: Colors.grey.shade500,
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Feather.camera,
            color: Colors.grey.shade500,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Feather.tv,
              color: Colors.grey.shade500,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesome.send_o,
              color: Colors.grey.shade500,
            ),
          ),
        ],
      ),
      body: _pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (i) {
          setState(() {
            currentPage = i;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Foundation.home), title: Text("Feed")),
          BottomNavigationBarItem(
              icon: Icon(Feather.search), title: Text("Search")),
          BottomNavigationBarItem(
              icon: Icon(Feather.plus_square), title: Text("Upload")),
          BottomNavigationBarItem(
              icon: Icon(Feather.heart), title: Text("Likes")),
          BottomNavigationBarItem(
              icon: Icon(Feather.user), title: Text("Account")),
        ],
      ),
    );
  }
}
