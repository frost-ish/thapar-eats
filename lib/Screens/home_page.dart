import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:thapar_eats/Widgets/search_bar.dart';
import 'package:thapar_eats/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: windowBackgroundLight,
      body: SafeArea(
        child: Column(mainAxisSize: MainAxisSize.max, children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 10),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                SvgPicture.asset(
                  'assets/icons/map-pin.svg',
                ),
                SizedBox(
                  width: 6,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Unknown address',
                            style: TextStyle(
                              color: colorTextDark,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          SvgPicture.asset(
                            'assets/icons/chevron-down.svg',
                            height: 16,
                            width: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                          'Thapar Institute of Engineering and Technology blah blah blah blah',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: colorTextDarkSecondary,
                            fontSize: 12,
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10), // Image border
                  child: SizedBox.fromSize(
                    size: const Size.fromRadius(20), // Image radius
                    child: Image.asset(
                      'assets/images/profile.png',
                      fit: BoxFit.cover,
                      scale: 10,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(margin: EdgeInsets.all(16), child: MySearchBar(context)),
        ]),
      ),
    );
  }
}
