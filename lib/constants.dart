import 'package:flutter/material.dart';

// const colorPrimary = Color(0xFF5C6BC0);

const colorTextDark = Color(0xFF18171f);
const colorTextLight = Color(0xfff1fffa);

const colorTextLightSemiOpaque = Color.fromARGB(179, 241, 255, 250);

const colorButtonLightEnabled = Color(0xfff1fffa);
const colorButtonLightHover = Color(0xFF18171f);

const windowBackground = Color(0xFF18171f);

const colorButtonDark = Color(0xFF18171f);

final darkButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: colorButtonDark,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18.0),
    ));
final lightButtonStyle = ElevatedButton.styleFrom(
    foregroundColor: colorButtonLightHover,
    backgroundColor: colorButtonLightEnabled,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18.0),
    ));
