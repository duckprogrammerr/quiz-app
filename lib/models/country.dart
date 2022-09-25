class Country {
  final String? name;
  final String? code;
  final int? prefix;

  Country({this.name, this.code, this.prefix});
  factory Country.fromJson(Map<String, dynamic> json) => Country(
      name: json['name'],
      code: json['code'],
      prefix: int.parse(json['prefix']));

  @override
  bool operator ==(dynamic other) =>
      other != null && other is Country && name == other.name;

  @override

  // ignore: unnecessary_overrides
  int get hashCode => super.hashCode;
}
