class User {
  final String? token;
  final String? username;
  final String? mobile;
  User({
    this.token,
    this.username,
    this.mobile,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
      token: json['token'],
      username: json['name'] ?? '',
      mobile: json['mobile']);
}
