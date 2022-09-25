import 'dart:convert';

List<Player> topScoresFromJson(String str) =>
    List<Player>.from(json.decode(str).map((e) => Player.fromJson(e))).toList();

class Player {
  final String name;
  final int score;
  Player(this.name, this.score);
  factory Player.fromJson(Map<String, dynamic> json) =>
      Player(json['name'], json['score']);
}
