import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:thapar_eats/Backend/constants.dart';

class Backend {
  static final headers = {HttpHeaders.contentTypeHeader: 'application/json'};

  static dynamic getUniversity(List<double> coordinates) async {
    var response = await http.get(
        Uri.http(
            baseUrl,
            searchUniEndpoint,
            {"lat": coordinates[0], "long": coordinates[1]}
                .map((key, value) => MapEntry(key, value.toString()))),
        headers: headers);
    print(response.body);
    return jsonDecode(response.body);
  }
}
