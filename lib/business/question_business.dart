import 'package:kpss/models/test_question_models.dart';
import 'package:kpss/screens/added_question.dart';
import 'package:kpss/serves/firebase.dart';

class QuestionBusiness {
  final Map<String, String> question_type_names = {
    "Ilk konu": "1",
    "Ikinci konu": "2",
    "Ucüncü konu": "3",
    "Dördüncü konu": "4",
  };
  QuestionBusiness();

  QuestionBusiness.toDatabase(List<String> questionDetail) {
    TestQuestionModel questionModel;
    questionModel();

    Firebase.writetoDb(question: questionModel);
  }
}
