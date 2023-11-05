import 'package:careemapp/HomePage.dart';
import 'package:careemapp/food.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedindex = 0;
  void selectedvalue(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  final List pages = [
    HomePage(),
    Center(
      child: Text("Profile"),
    ),
    Center(
      child: Text("Settings"),
    ),
    Center(
      child: Text("Notifications"),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: selectedindex,
          onTap: selectedvalue,
          showUnselectedLabels: true,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  color: Colors.black,
                  size: 30,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline_sharp,
                  color: Colors.black,
                  size: 30,
                ),
                label: "Profile"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings_outlined,
                  color: Colors.black,
                  size: 30,
                ),
                label: "Settings"),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.email_outlined,
                color: Colors.black,
                size: 30,
              ),
              label: "Notification",
            ),
          ]),
      body: pages[selectedindex],
    ));
  }
}
