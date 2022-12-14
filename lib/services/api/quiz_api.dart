import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:quiz_app/models/user.dart';
import 'package:quiz_app/utils/api_constants.dart';
import 'package:quiz_app/models/question.dart';
import 'package:quiz_app/models/player.dart';

class QuizApi {
  static final _clinet = http.Client();
  // dealing with user
  Future<TokenStatus> tokenVerification(String token) async {
    var res = await _clinet.get(ApiConstants.tokenVerificationUrl,
        headers: {'Authorization': 'Bearer $token'});
    if (res.statusCode == 200) {
      return TokenStatus.vaild;
    } else {
      return TokenStatus.notVaild;
    }
  }

  Future<User> login(String mobile) async {
    Map<String, dynamic> body = {
      'OTP': '0000',
      'mobile': mobile,
    };

    var res = await _clinet.post(ApiConstants.loginUrl, body: body);

    if (res.statusCode == 201) {
      User user = User.fromJson(json.decode(res.body));

      return user;
    } else {
      throw 'Error ${res.statusCode}';
    }
  }

  Future<bool> addNewUserName(String token, String name) async {
    var headers = {'Authorization': 'Bearer $token'};
    var body = {'name': name};

    var res = await _clinet.post(ApiConstants.addNameUrl,
        headers: headers, body: body);
    if (res.statusCode == 201) {
      return true;
    } else {
      throw 'Erorr ${res.statusCode}';
    }
  }

  Future<User> fetchUserInfo(String token) async {
    var headers = {'Authorization': 'Bearer $token'};

    var res = await _clinet.get(ApiConstants.userInfoUrl, headers: headers);

    if (res.statusCode == 200) {
      User user = User.fromJson(json.decode(res.body));
      return user;
    } else {
      throw 'Erorr ${res.statusCode}';
    }
  }

  Future<void> updateUserScore(String token, String score) async {
    var headers = {'Authorization': 'Bearer $token'};
    var body = {'score': score};

    var res = await _clinet.post(ApiConstants.updateUserScoreUrl,
        headers: headers, body: body);

    if (res.statusCode != 201) {
      throw 'Erorr ${res.statusCode}';
    }
  }

  // Top 10 Scores
  Future<List<Player>> fetchTopScores(String token) async {
    var headers = {'Authorization': 'Bearer $token'};
    var res = await _clinet.get(ApiConstants.topScoresUrl, headers: headers);
    if (res.statusCode == 200) {
      return topScoresFromJson(res.body);
    } else {
      throw 'Erorr ${res.statusCode}';
    }
  }

  // questions
  Future<List<Question>> fetchQuestions(String token) async {
    var headers = {'Authorization': 'Bearer $token'};

    var res = await _clinet.get(ApiConstants.questionsUrl, headers: headers);
    if (res.statusCode == 200) {
      return questionFromJson(res.body);
    } else {
      throw 'Erorr ${res.statusCode}';
    }
  }
}
