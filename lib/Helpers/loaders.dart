import 'package:flutter/material.dart';
import 'package:thapar_eats/constants.dart';

enum LoaderType { loading, locating, findingUni }

class Loaders {
  static int count = 0;
  static LoaderType? currentAlertDialogType;
  BuildContext context;
  Loaders._(this.context);
  factory Loaders.from(BuildContext context) {
    return Loaders._(context);
  }

  void _createDialog(LoaderType type, bool isCancellable) {
    String title = "", description = "";
    String animationUri = "";
    switch (type) {
      case LoaderType.loading:
        title = "Working on it";
        description = "";
        animationUri = "assets/gifs/loading.gif";
        break;
      case LoaderType.locating:
        title = "Locating you";
        description = "This might take a couple seconds";
        animationUri = "assets/gifs/locating.gif";
        break;
      case LoaderType.findingUni:
        title = "Finding your College";
        description = "This might take a couple seconds";
        animationUri = "assets/gifs/degree_cap.gif";
    }
    currentAlertDialogType = type;
    _showDialog(
        AlertDialog(
          backgroundColor: Colors.transparent,
          content: Center(
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(16)),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    animationUri,
                    width: 100,
                    height: 100,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: colorTextDark,
                        fontSize: 20,
                        fontFamily: "Nunito",
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    description,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: colorTextDarkSecondary,
                        fontSize: 16,
                        fontFamily: "Nunito",
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 8,
                  )
                ],
              ),
            ),
          ),
        ),
        isCancellable);
  }

  void _showDialog(AlertDialog alert, bool isCancellable) {
    showDialog(
      barrierDismissible: isCancellable,
      context: context,
      builder: (BuildContext context) {
        if (!isCancellable) {
          return WillPopScope(child: alert, onWillPop: () async => false);
        } else {
          return alert;
        }
      },
    );
    count++;
  }

  void cancelAll() {
    for (int i = 1; i <= count; i++) {
      Navigator.pop(context);
    }
    count = 0;
  }

  void cancelLast() {
    Navigator.pop(context);
    count--;
  }

  void showLoadingDialog(LoaderType type, bool isCancellable) {
    _createDialog(type, isCancellable);
  }
}