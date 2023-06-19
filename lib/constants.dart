import 'package:flutter/material.dart';

// const colorPrimary = Color(0xFF5C6BC0);

const colorTextDark = Color(0xFF18171f);
const colorTextLight = Color(0xfff1fffa);

const colorButtonLight = Color(0xfff1fffa);

const windowBackground = Color(0xFF18171f);

const colorButtonDark = Color(0xFF18171f);

final darkButtonStyle = ButtonStyle(
    backgroundColor: MaterialStateProperty.all(colorButtonDark),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18.0),
    )));
final lightButtonStyle = ButtonStyle(
    backgroundColor: MaterialStateProperty.all(colorButtonLight),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18.0),
    )));
