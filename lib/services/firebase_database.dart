import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:setup_1/models/base_stuff.dart';
import 'package:setup_1/models/driller_model.dart';

class FirebaseDatabaseService {
  void writeToDb(
      {String collectionName,
      BaseStuffModel baseStuff,
      String id,
      String imageUrl}) async {
    FirebaseFirestore.instance.collection(collectionName).doc(id).set(
      {
        'title': baseStuff.title,
        'isBroken': false,
        'imageUrl': imageUrl,
      },
    );
  }
}
