import 'package:flutter/material.dart';

// const colorPrimary = Color(0xFF5C6BC0);

const colorTextPrimary = Colors.black;

// const colorPrimaryDark = ;

const colorTextButton = Color(0xfff1fffa);

const windowBackground = Color(0xFF0081A7);

const colorButtonBg = Color(0xff2d3047);

final darkButtonStyle = ButtonStyle(
    backgroundColor: MaterialStateProperty.all(colorButtonBg),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18.0),
    )));
