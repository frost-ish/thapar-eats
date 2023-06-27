import 'package:flutter/material.dart';

// const colorPrimary = Color(0xFF5C6BC0);
const colorPrimary = Color(0xFF18171F);
const colorPrimaryLight = Color(0xfff1fffa);

const colorTextDark = Color(0xFF18171F);
const colorTextLight = Color(0xfff1fffa);

const colorTextDarkSecondary = Colors.grey;
const colorTextLightSemiOpaque = Color.fromARGB(179, 241, 255, 250);

const colorTextHint = Colors.grey;

const colorButtonLightEnabled = Color(0xfff1fffa);
const colorButtonLightHover = Color(0xFF18171f);

const windowBackground = Color(0xFF18171f);
const windowBackgroundLight = Color(0xfff1fffa);

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
final textStyle = TextStyle(
    fontSize: 40,
    color: colorTextLight,
    height: 1.2,
    fontWeight: FontWeight.bold,
    fontFamily: 'Nunito');

const errorLocationDisabledUniSelector =
    "Location permission denied. Please search for your university";
