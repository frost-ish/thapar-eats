import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:thapar_eats/Backend/backend.dart';
import 'package:thapar_eats/Helpers/loaders.dart';
import 'package:thapar_eats/Widgets/search_bar.dart';
import 'package:thapar_eats/constants.dart';

class UniSelectorPage extends StatefulWidget {
  UniSelectorPage() {}

  @override
  State<UniSelectorPage> createState() => _UniSelectorPageState();
}

class _UniSelectorPageState extends State<UniSelectorPage> {
  @override
  void initState() {
    getLocation(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: windowBackground,
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 16),
                    child: const Icon(
                      Icons.arrow_back,
                      color: colorButtonLightEnabled,
                      size: 25,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'Select your university',
              style: textStyle,
            ),
            const SizedBox(
              height: 36,
            ),
            MySearchBar(context),
          ]),
        ),
      ),
    );
  }
}

Future<bool> _handleLocationPermission() async {
  bool serviceEnabled;
  LocationPermission permission;

  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    return false;
  }
  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      return false;
    }
  }
  if (permission == LocationPermission.deniedForever) {
    return false;
  }
  return true;
}

void getLocation(BuildContext context) async {
  final isLocationAllowed = await _handleLocationPermission();
  if (!isLocationAllowed) {
    ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text(errorLocationDisabledUniSelector)));
  } else {
    Loaders.from(context).showLoadingDialog(LoaderType.locating, false);
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    print("${position.latitude}, ${position.longitude}");
    Loaders.from(context).cancelLast();
    Loaders.from(context).showLoadingDialog(LoaderType.findingUni, false);
    var json =
        await Backend.getUniversity([position.longitude, position.latitude]);
    Loaders.from(context).cancelLast();
    if (json['found'] == true && json['confidence'] > 70) {
      if (context.mounted) {
        showUniversityFoundDialog(
            context, json['university']['name'], json['university']['address']);
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
              "Unable to locate you, please select your university manually")));
    }
  }
}

void showUniversityFoundDialog(
    BuildContext context, String name, String address) async {
  showDialog(
    barrierDismissible: true,
    context: context,
    builder: (BuildContext context) {
      return WillPopScope(
          child: AlertDialog(
            backgroundColor: Colors.transparent,
            content: Center(
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16)),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/gifs/done.gif",
                      width: 100,
                      height: 100,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      name,
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
                      address,
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
          onWillPop: () async => false);
    },
  );
  await new Future.delayed(const Duration(seconds: 2));
  Navigator.pop(context);
  ScaffoldMessenger.of(context)
      .showSnackBar(const SnackBar(content: Text("Done with this page")));
}
