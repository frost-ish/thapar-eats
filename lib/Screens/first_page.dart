import 'package:flutter/material.dart';
import 'package:thapar_eats/Screens/uni_selector_page.dart';
import 'package:thapar_eats/constants.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: windowBackground,
      body: SafeArea(
        child: Column(children: [
          Container(
            margin: const EdgeInsets.all(25),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 2 / 4.5,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10), // Image border
              child: SizedBox.fromSize(
                size: const Size.fromRadius(48), // Image radius
                child: Image.asset(
                  'assets/images/image.png',
                  fit: BoxFit.cover,
                  scale: 10,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Text(
              'Welcome to Thapar Eats!',
              style: textStyle,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: Text(
              'Ayo, beyotch! How about we get all that food to your hostel, ese? We know your punk ass ain\'t doin shit',
              style: TextStyle(
                fontSize: 16,
                color: colorTextLightSemiOpaque,
                height: 1.3,
              ),
            ),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.all(10),
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UniSelectorPage(),
                    ));
              },
              style: lightButtonStyle,
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  'Get Started',
                  style: TextStyle(
                      color: colorTextDark,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.fromLTRB(8, 8, 8, 16),
              child: Text(
                'Need help signing in?',
                style: TextStyle(color: colorTextLight),
              )),
        ]),
      ),
    );
  }
}
