class User {
  final String? token;
  final String? username;
  final String? mobile;
  final List<Map<String, dynamic>>? scores;
  User({this.token, this.username, this.mobile, this.scores});

  factory User.fromJson(Map<String, dynamic> json) => User(
      token: json['token'],
      username: json['name'] ?? '',
      mobile: json['mobile']);
}
