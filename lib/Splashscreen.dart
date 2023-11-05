import 'dart:async';

import 'package:careemapp/loginPage.dart';
import 'package:careemapp/widgets/my_Text.dart';
import 'package:careemapp/widgets/myappclr.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Login(),
          ));
    });
    // TODO: implement ini
    // tState
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: maincolor,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/image 1.png"),
          repeat: ImageRepeat.repeatY,
        )),
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Image.asset("assets/vector6.png"), MyText()]),
        ),
      ),
    ));
  }
}
