import 'package:flutter/material.dart';

class TestQuestionModel {
  final String question_type_name;
  String question_type_ID;
  final String id;
  final String question;
  final String answer_1;
  final String answer_2;
  final String answer_3;
  final String answer_4;
  final String answer_5;
  final String correct_answer;

  TestQuestionModel(
      {this.question_type_name,
      this.question_type_ID,
      this.id,
      this.question,
      this.answer_1,
      this.answer_2,
      this.answer_3,
      this.answer_4,
      this.answer_5,
      this.correct_answer});
  TestQuestionModel.fromJson(Map snapshot)
      : question_type_name = snapshot["question_type_name"],
        question_type_ID = snapshot["question_type_ID"],
        id = snapshot["id"],
        question = snapshot["question"],
        answer_1 = snapshot["answer_1"],
        answer_2 = snapshot["answer_2"],
        answer_3 = snapshot["answer_3"],
        answer_4 = snapshot["answer_4"],
        answer_5 = snapshot["answer_5"],
        correct_answer = snapshot["correct_answer"];
  static Map<String, dynamic> toJson(TestQuestionModel model) {
    Map<String, dynamic> questionModelMap = Map();
    questionModelMap["question_type_name"] = model.question_type_name;
    questionModelMap["question_type_ID"] = model.question_type_ID;
    questionModelMap["id"] = model.id;
    questionModelMap["question"] = model.question;
    questionModelMap["answer_1"] = model.answer_1;
    questionModelMap["answer_2"] = model.answer_2;
    questionModelMap["answer_3"] = model.answer_3;
    questionModelMap["answer_4"] = model.answer_4;
    questionModelMap["answer_5"] = model.answer_5;
    questionModelMap["correct_answer"] = model.correct_answer;
    return questionModelMap;
  }
}
