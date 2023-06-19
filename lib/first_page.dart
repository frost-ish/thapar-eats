import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:thapar_eats/Login/login_screen.dart';
import 'package:thapar_eats/constants.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: windowBackground,
        body: SafeArea(
          child: Column(children: [
            Container(
              margin: const EdgeInsets.all(25),
              width: MediaQuery.of(context).size.width - 16,
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
              padding: EdgeInsets.all(15),
              child: Text(
                'Welcome to Thapar Eats!',
                style: TextStyle(
                    fontSize: 40,
                   
                    color: colorTextLight,
                  
                    height: 1.2),
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
                        builder: (context) => const LoginScreen(),
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
                margin: EdgeInsets.all(8),
                child: Text(
                  'Need help signing in?',
                  style: TextStyle(color: colorTextLight),
                )),
          ]),
        ),
      ),
    );
  }
}
