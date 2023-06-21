import 'package:flutter/material.dart';
import 'package:thapar_eats/constants.dart';

class MySearchBar extends StatefulWidget {
  BuildContext context;
  MySearchBar(this.context);

  @override
  State<MySearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<MySearchBar> {
  var controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorButtonLightEnabled,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 6),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: "Search here",
          hintStyle: TextStyle(color: colorTextHint, fontFamily: "Nunito"),
          prefixIcon: Icon(Icons.search),
        ),
      ),
    );
  }
}
