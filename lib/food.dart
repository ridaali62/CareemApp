import 'package:careemapp/Cab.dart';
import 'package:careemapp/widgets/my_Text.dart';
import 'package:careemapp/widgets/myappclr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';

class Food extends StatefulWidget {
  const Food({super.key});

  @override
  State<Food> createState() => _FoodState();
}

final Resto = [
  ["assets/pasta.png", "Lasagne"],
  ["assets/burger.png", "Burger O'Clock"],
  ["assets/pasta.png", "Lasagne"],
  ["assets/burger.png", "Burger O'Clock"],
  ["assets/pasta.png", "Lasagne"],
];

final resto = [
  ["assets/pizza.png", "Pizza at Domino's"],
  ["assets/sandwich.png", "Sandwich at Subway"],
  ["assets/pizza.png", "Pizza at Domino's"],
  ["assets/sandwich.png", "Sandwich at Subway"],
  ["assets/pizza.png", "Pizza at Domino's"],
];

class _FoodState extends State<Food> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(5)),
                    child: Image.asset("assets/Frame.png"),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const MyText(
                    text: "Recommended for you",
                    c: Colors.black,
                    size: 22,
                    w: FontWeight.w500,
                  ),
                  MyText(
                    text: "See all",
                    c: maincolor,
                    w: FontWeight.w500,
                    size: 13,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  height: 200,
                  child: CarouselSlider.builder(
                      viewportFraction: 2,
                      slideBuilder: (index) {
                        return Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Image.asset(
                              resto[index][0],
                              height: 100,
                              width: 200,
                            ));
                      },
                      itemCount: resto.length)),
              const MyText(
                text: "Send or Request Credit",
                c: Colors.black,
                size: 16,
                w: FontWeight.w500,
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: maincolor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 10),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/vector6.png",
                                      height: 35,
                                      width: 35,
                                    ),
                                    MyText(
                                      size: 20,
                                      w: FontWeight.w500,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 3,
                                ),
                                const MyText(
                                  text: "Owe someone for Lunch?",
                                  c: Colors.black,
                                  size: 15,
                                  w: FontWeight.w500,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                const MyText(
                                  text: "Make it up to them in with Cab pay",
                                  c: Colors.grey,
                                  size: 12,
                                  w: FontWeight.w400,
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Cabgo(),
                                    ));
                              },
                              child: Container(
                                height: 35,
                                width: 120,
                                decoration: BoxDecoration(
                                    color: Colors.green[700],
                                    borderRadius: BorderRadius.circular(7)),
                                child: Center(
                                    child: Text(
                                  "Send Now",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                )),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 35,
                              width: 120,
                              decoration: BoxDecoration(
                                  color: maincolor,
                                  borderRadius: BorderRadius.circular(7)),
                              child: Center(
                                  child: Text(
                                "Request Credit",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              )),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const MyText(
                text: "Enjoy Exclusive Rewards",
                c: Colors.black,
                size: 16,
                w: FontWeight.w500,
              ),
              SizedBox(
                height: 10,
              ),
              const MyText(
                text: "Enjoy 2,550 points expiring on 30 June 2023",
                c: Colors.grey,
                size: 13,
                w: FontWeight.w300,
              ),
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(5, (index) {
                    return Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            Resto[index][0],
                            height: 140,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0, top: 10),
                            child: Text(
                              Resto[index][1],
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          )
                        ],
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
