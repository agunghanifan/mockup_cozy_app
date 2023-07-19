import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mockup_cozy_app/theme.dart';

import '../models/space.dart';

class SpaceProvider extends ChangeNotifier {
  final Uri _urlSpaceAPI = Uri.parse(urlSpaceAPI);

  Future<List<Space>> getRecommendedSpaces() async {
    var result = await http.get(_urlSpaceAPI);
    // print(result.statusCode);
    // print(result.body);

    if (result.statusCode == 200) {
      List data = jsonDecode(result.body);
      List<Space> spaces = data.map((item) => Space.fromJson(item)).toList();
      return spaces;
    } else {
      return <Space>[];
    }
  }
}
