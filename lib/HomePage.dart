import 'package:careemapp/food.dart';
import 'package:careemapp/widgets/my_Text.dart';
import 'package:careemapp/widgets/myappclr.dart';
import 'package:careemapp/widgets/mycard.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

List Resto = [
  ["assets/burgerking.png", "Burger King"],
  ["assets/pizzahut.png", "Pizza Hut"],
  ["assets/burgerking.png", "Burger King"],
  ["assets/pizzahut.png", "Pizza Hut"],
  ["assets/burgerking.png", "Burger King"],
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.grey, borderRadius: BorderRadius.circular(5)),
                child: Image.asset("assets/Frame.png"),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              width: double.infinity,
              height: 160,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                      image: const AssetImage("assets/main.png"),
                      fit: BoxFit.fill,
                      colorFilter: ColorFilter.mode(
                          const Color.fromARGB(255, 0, 0, 0).withOpacity(0.4),
                          BlendMode.darken))),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyText(
                      text: "Order food in one tap",
                      size: 15,
                      w: FontWeight.w500,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    MyText(
                      text:
                          "Choose from a variety of restaurants and\nget the local deals",
                      size: 12,
                      w: FontWeight.w300,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    MyText(
                      text: "Let's try!",
                      size: 12,
                      w: FontWeight.w400,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyCard(),
                MyCard(
                  image: "assets/bike.png",
                  name: "Bike",
                ),
                MyCard(
                  image: "assets/food.png",
                  name: "Food",
                  page: Food(),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyCard(
                  image: "assets/delivery.png",
                  name: "Delivery",
                ),
                MyCard(
                  image: "assets/credit.png",
                  name: "Credit",
                ),
                MyCard(
                  image: "assets/recharge.png",
                  name: "Recharge",
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const MyText(
                  text: "Khana Hungama Deals",
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
              height: 10,
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
          ]),
        ),
      ),
    ));
  }
}
