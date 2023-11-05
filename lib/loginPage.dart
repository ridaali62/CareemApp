import 'package:careemapp/home.dart';
import 'package:careemapp/widgets/my_Text.dart';
import 'package:careemapp/widgets/myappclr.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/vector7.png"),
            MyText(
              c: maincolor,
              size: 80,
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MainPage(),
                      ));
                },
                child: Container(
                  height: 45,
                  width: 150,
                  decoration: BoxDecoration(
                      color: maincolor,
                      borderRadius: BorderRadius.circular(25)),
                  child: Center(
                      child: MyText(
                    text: "Login",
                    w: FontWeight.w500,
                    size: 20,
                  )),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "or",
              style: TextStyle(color: Colors.grey[700]),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Create an Account",
              style: TextStyle(decoration: TextDecoration.underline),
            )
          ]),
    ));
  }
}
