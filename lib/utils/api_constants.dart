enum TokenStatus { vaild, notVaild }

class ApiConstants {
  static const String baseUrl = 'https://quizu.okoul.com/';
  static Uri tokenVerificationUrl = Uri.parse('${baseUrl}Token');
  static Uri loginUrl = Uri.parse('${baseUrl}Login');
  static Uri addNameUrl = Uri.parse('${baseUrl}Name');
  static Uri userInfoUrl = Uri.parse('${baseUrl}UserInfo');
  static Uri updateUserScoreUrl = Uri.parse('${baseUrl}Score');
  static Uri topScoresUrl = Uri.parse('${baseUrl}TopScores');
  static Uri questionsUrl = Uri.parse('${baseUrl}Questions');
}
