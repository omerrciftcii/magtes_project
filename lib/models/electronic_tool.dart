import 'package:flutter/cupertino.dart';

class ElectronicToolModel {
  final String id;
  final String title;
  final String imageUrl;
  final int count;
  final bool isBroken;
  final String barcode;
  final String location;

  ElectronicToolModel({
    this.id,
    this.count,
    @required this.isBroken,
    @required this.barcode,
    this.imageUrl,
    @required this.title,
    @required this.location,
  });
  ElectronicToolModel.fromJson(Map snapshot)
      : id = snapshot['id'],
        barcode = snapshot['barcode'],
        count = snapshot['count'],
        imageUrl = snapshot['imageUrl'],
        isBroken = snapshot['isBroken'],
        title = snapshot['title'],
        location = snapshot['location'];
  static Map<String, dynamic> toJson(ElectronicToolModel electronicTool) {
    Map<String, dynamic> electronicToolsMap = Map();
    electronicToolsMap['id'] = electronicTool.id;
    electronicToolsMap['title'] = electronicTool.title;
    electronicToolsMap['isBroken'] = electronicTool.isBroken;
    electronicToolsMap['count'] = electronicTool.count;
    electronicToolsMap['location'] = electronicTool.location;
    electronicToolsMap['imageUrl'] = electronicTool.imageUrl;
    electronicToolsMap['barcode'] = electronicTool.barcode;

    return electronicToolsMap;
  }
}
