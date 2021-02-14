import 'package:flutter/material.dart';
import 'package:kpss/models/test_question_models.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Firebase {
  static void writetoDb({TestQuestionModel question}) async {
    String type = question.question_type_ID;
    await FirebaseFirestore.instance
        .doc("/test_sorulari/$type/questions")
        .set(TestQuestionModel.toJson(question));
  }

  static Future<TestQuestionModel> readfromDb({questionID}) async {
    TestQuestionModel question = await FirebaseFirestore.instance
        .doc("/test_sorulari/uW089hegJa2azqnXsd0k/questions/$questionID")
        .get()
        .then((value) => TestQuestionModel.fromJson(value.data()));
    return question;
  }

  static void updatetoDb({TestQuestionModel question}) async {
    String type = question.question_type_ID;
    String questionID = question.id;
    await FirebaseFirestore.instance
        .doc("/test_sorulari/$type/questions/$questionID")
        .update(TestQuestionModel.toJson(question));
  }

  static void deletefromDb({questionID, question_type_id}) async {
    await FirebaseFirestore.instance
        .doc("/test_sorulari/$question_type_id/questions/$questionID")
        .delete();
  }
}
