import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:setup_1/models/electronic_tool.dart';
import 'dart:convert' as convert;

class FirebaseDatabaseService {
  static void writeToDb({
    ElectronicToolModel electronicToolModel,
  }) async {
    FirebaseFirestore.instance
        .collection('elektronikTools')
        .doc()
        .set(ElectronicToolModel.toJson(electronicToolModel));
  }

  static Future<List<ElectronicToolModel>> readsFromDb() async {
    var getData =
        await FirebaseFirestore.instance.collection("elektronikTools").get();
    var jsonGetData = convert.jsonEncode(getData) as List;
    return jsonGetData.map(
        (elektronicTools) => ElectronicToolModel.fromJson(elektronicTools));
  }

  static Future<List<ElectronicToolModel>> readFromDb(id) async {
    var getData = await FirebaseFirestore.instance
        .collection("elektronikTools")
        .doc(id)
        .get();
    var jsonGetData = convert.jsonEncode(getData) as List;

    return jsonGetData.map(
        (electronicTools) => ElectronicToolModel.fromJson(electronicTools));
  }
//userId location değişikliğini kimin yaptığını anlamak için kullanırız, profil verisinden çeker oluştururuz.
//id hangi aletin değiştiğini seçmek için kullanılacak
//newLocation verisini arayüzden çekeceğiz, çoktan seçmeli olacak

  static locationChange(itemId, newLocation, userId) async {
    FirebaseFirestore.instance
        .collection("elektronikTools")
        .doc(itemId)
        .update({
      "location": newLocation,
    });
  }

  static locationList() async {
    var location_list = await FirebaseFirestore.instance
        .collection("locations")
        .doc("locations_strings")
        .get();
    var last_location_list = convert.jsonEncode(location_list) as List;
    return location_list;
  }
}
/*

class EmployeeService{

  Future<List<Employee>> fetchemployees() async {
    var response = await http.get("https://jsonplaceholder.typicode.com/users");
    var jsonResponse = convert.jsonDecode(response.body) as List;
    return jsonResponse.map((employee) => Employee.fromJson(employee)).toList();
  }

   Future<Employee> fetchemployee(int id) async {
    var response = await http.get("https://jsonplaceholder.typicode.com/users/$id");
    var jsonResponse = convert.jsonDecode(response.body);
    return Employee.fromJson(jsonResponse);
  }

}
*/
