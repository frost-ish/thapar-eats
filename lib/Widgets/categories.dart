import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      margin: EdgeInsets.symmetric(horizontal: 26),
      child: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: MediaQuery.of(context).size.width / 8,
        mainAxisSpacing: 26,
        children: [
          Column(mainAxisSize: MainAxisSize.min, children: [
            Image.asset(
              "assets/images/burger.png",
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              "Burgir",
              style: TextStyle(fontFamily: 'Nunito', fontSize: 14),
            )
          ]),
          Column(mainAxisSize: MainAxisSize.min, children: [
            Image.asset(
              "assets/images/pizza.png",
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              "Pizza",
              style: TextStyle(fontFamily: 'Nunito', fontSize: 14),
            )
          ]),
          Column(mainAxisSize: MainAxisSize.min, children: [
            Image.asset(
              "assets/images/salad.png",
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              "Salaad",
              style: TextStyle(fontFamily: 'Nunito', fontSize: 14),
            )
          ]),
          Column(mainAxisSize: MainAxisSize.min, children: [
            Image.asset(
              "assets/images/pizza.png",
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              "Pizza",
              style: TextStyle(fontFamily: 'Nunito', fontSize: 14),
            )
          ]),
          Column(mainAxisSize: MainAxisSize.min, children: [
            Image.asset(
              "assets/images/salad.png",
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              "Salaad",
              style: TextStyle(fontFamily: 'Nunito', fontSize: 14),
            )
          ]),
          Column(mainAxisSize: MainAxisSize.min, children: [
            Image.asset(
              "assets/images/burger.png",
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              "Burgir",
              style: TextStyle(fontFamily: 'Nunito', fontSize: 14),
            )
          ]),
        ],
      ),
    );
  }
}
