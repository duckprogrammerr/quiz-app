import 'dart:convert';

List<Question> questionFromJson(String str) =>
    List<Question>.from(json.decode(str).map((e) => Question.fromJson(e)))
        .toList();

class Question {
  final String question;
  final List<String> choices;
  final String correct;

  Question(this.question, this.choices, this.correct);
  factory Question.fromJson(Map<String, dynamic> json) => Question(
        json['Question'],
        [
          json['a'],
          json['b'],
          json['c'],
          json['d'],
        ],
        json['correct'],
      );
}
