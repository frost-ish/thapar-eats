import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
    return Material(
      borderRadius: BorderRadius.circular(15),
      clipBehavior: Clip.antiAlias,
      elevation: 10,
      child: Container(
        color: colorButtonLightEnabled,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 6),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: "Search here",
            border: InputBorder.none,
            hintStyle: TextStyle(color: colorTextHint, fontFamily: "Nunito"),
            prefixIcon: Container(
              padding: EdgeInsets.all(17),
              child: SvgPicture.asset(
                'assets/icons/search.svg',
                width: 20,
                height: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
