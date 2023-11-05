import 'package:careemapp/food.dart';
import 'package:careemapp/widgets/my_Text.dart';
import 'package:careemapp/widgets/myappclr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cabgo extends StatefulWidget {
  const Cabgo({super.key});

  @override
  State<Cabgo> createState() => _CabgoState();
}

final go = [
  ["assets/car.png", "Cab Go", "PKR 190"],
  ["assets/bike.png", "Bike Go", "PKR 90"],
];

class _CabgoState extends State<Cabgo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        child: Stack(children: [
          Image.asset("assets/img map.png"),
          Positioned(
              left: 25,
              top: 25,
              child: Container(
                decoration: BoxDecoration(
                    color: maincolor, borderRadius: BorderRadius.circular(5)),
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              )),
          Expanded(
            child: DraggableScrollableSheet(
              initialChildSize: 0.62,
              minChildSize: 0.1,
              maxChildSize: 0.8,
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Container(
                            height: 5,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        const MyText(
                          text: "Send or Request Credit",
                          c: Colors.black,
                          size: 18,
                          w: FontWeight.w700,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Expanded(
                            child: ListView.builder(
                                itemCount: go.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 10, top: 15),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              color: Colors.grey.shade300)),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 15, horizontal: 10),
                                        child: Row(
                                          children: [
                                            Image.asset(go[index][0]),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                MyText(
                                                  text: go[index][1],
                                                  size: 16,
                                                  c: maincolor,
                                                  w: FontWeight.w500,
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                const MyText(
                                                  text: "Munasib savaree,",
                                                  c: Colors.grey,
                                                  size: 12,
                                                  w: FontWeight.w400,
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                const MyText(
                                                  text:
                                                      "rozmara istemaal ke lye",
                                                  c: Colors.grey,
                                                  size: 12,
                                                  w: FontWeight.w400,
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Row(
                                                  children: [
                                                    Icon(
                                                      CupertinoIcons.gift,
                                                      color: maincolor,
                                                      size: 15,
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    MyText(
                                                      text:
                                                          "Earn upto 55 points",
                                                      size: 14,
                                                      c: maincolor,
                                                      w: FontWeight.w400,
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                MyText(
                                                  text: go[index][2],
                                                  c: Colors.grey,
                                                  size: 14,
                                                  w: FontWeight.w400,
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                const MyText(
                                                  text: "2 min",
                                                  c: Colors.grey,
                                                  size: 12,
                                                  w: FontWeight.w400,
                                                ),
                                                SizedBox(
                                                  height: 30,
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                })),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: maincolor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: IconButton(
                                icon: Icon(
                                  Icons.event_note_outlined,
                                  color: Colors.white70,
                                  size: 20,
                                ),
                                onPressed: () {},
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 50,
                              width: 252,
                              decoration: BoxDecoration(
                                  color: maincolor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                  child: MyText(
                                text: "Select Go",
                                w: FontWeight.w500,
                                size: 20,
                              )),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ]),
      ),
    ));
  }
}
