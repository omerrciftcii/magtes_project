import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:setup_1/models/electronic_tool.dart';

class FirebaseDatabaseService {
  static void writeToDb({
    ElectronicToolModel electronicToolModel,
  }) async {
    FirebaseFirestore.instance
        .collection('elektronikTools')
        .doc()
        .set(ElectronicToolModel.toJson(electronicToolModel));
  }

  static Future<ElectronicToolModel> readFromDb({
    ElectronicToolModel electronicToolModel,
  }) async {
    var result =
        await FirebaseFirestore.instance.collection('elektronikTools').get();
    // var lastResult = ElectronicToolModel.fromJson();

    // return lastResult;
  }
}
