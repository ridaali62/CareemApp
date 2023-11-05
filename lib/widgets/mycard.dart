import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key, this.image, this.name, this.page});
  final String? image;
  final String? name;
  final page;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => page,
            ));
      },
      child: Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
            color: Colors.grey[350], borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Image.asset(
              image ?? "assets/car.png",
              height: 60,
              width: 60,
            ),
            Text(
              name ?? "Car",
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
