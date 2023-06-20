import 'package:flutter/material.dart';
import 'package:thapar_eats/constants.dart';

class SearchBar extends StatefulWidget {
  BuildContext context;
  SearchBar(this.context);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
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
          hintStyle: TextStyle(color: Colors.grey),
          suffixIcon: GestureDetector(
              onTap: () {
                controller.text = "";
              },
              child: Icon(Icons.cancel)),
          prefixIcon: Icon(Icons.search),
        ),
      ),
    );
  }
}
