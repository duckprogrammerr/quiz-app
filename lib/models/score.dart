List<Score> userHestoryFromJson(List<dynamic> json) =>
    List<Score>.from(json.map((e) => Score.fromJson(e))).toList();

class Score {
  final int score;
  final String date;

  Score(this.score, this.date);
  factory Score.fromJson(Map<String, dynamic> json) =>
      Score(json['score'], json['date']);
  Map<String, dynamic> toJson() {
    return {
      'score': score,
      'date': date,
    };
  }
}
