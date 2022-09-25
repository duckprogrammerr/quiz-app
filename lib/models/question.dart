import 'dart:convert';

List<Question> questionFromJson(String str) =>
    List<Question>.from(json.decode(str).map((e) => Question.fromJson(e)))
        .toList();

class Question {
  final String question;
  final String a;
  final String b;
  final String c;
  final String d;
  final String correct;

  Question(this.question, this.a, this.b, this.c, this.d, this.correct);
  factory Question.fromJson(Map<String, dynamic> json) => Question(
        json['Question'],
        json['a'],
        json['b'],
        json['c'],
        json['d'],
        json['correct'],
      );
}
