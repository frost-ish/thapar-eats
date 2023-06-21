import 'package:easy_search_bar/easy_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:geolocator/geolocator.dart';
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
            SizedBox(
              height: 8,
            ),
            Text(
              'Select your university',
              style: textStyle,
            ),
            SizedBox(
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

Future<List<double>> getLocation(BuildContext context) async {
  final isLocationAllowed = await _handleLocationPermission();
  if (!isLocationAllowed) {
    ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text(errorLocationDisabledUniSelector)));
    return [];
  } else {
    Loaders(context).showLoadingDialog(LoaderType.locating, false);
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    Loaders(context).cancelLast();
    print("${position.latitude}, ${position.longitude}");
    return [position.latitude, position.longitude];
  }
}
