import 'package:easy_search_bar/easy_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:thapar_eats/Widgets/search_bar.dart';
import 'package:thapar_eats/constants.dart';

class UniSelectorPage extends StatefulWidget {
  const UniSelectorPage({super.key});

  @override
  State<UniSelectorPage> createState() => _UniSelectorPageState();
}

class _UniSelectorPageState extends State<UniSelectorPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: windowBackground,
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 25),
          child: Column(children: [
            Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
                  child: Icon(
                    Icons.arrow_back,
                    color: colorButtonLightEnabled,
                    size: 25,
                  ),
                ),
              ],
            ),
            Text(
              'Select your university here',
              style: textStyle,
            ),
            SizedBox(
              height: 16,
            ),
            SearchBar(context),
          ]),
        ),
      ),
    );
  }
}
