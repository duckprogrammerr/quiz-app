import 'dart:convert';

import 'package:get_storage/get_storage.dart';

class LocalDatabase {
  static final box = GetStorage();

  final token = ''.val('token', defVal: '');

  saveScore(Map<String, dynamic> score) {
    List<Map<String, dynamic>> scores = jsonDecode(box.read('scro'));
    scores.add(score);
    box.write(token.val, jsonEncode(scores));
  }

  deleteUserInfo() {
    box.erase();
  }
}
