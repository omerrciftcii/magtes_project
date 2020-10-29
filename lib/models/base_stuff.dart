import 'package:flutter/material.dart';

 class BaseStuffModel {
  final String id;
  final String title;
  final int count;
  final bool isBroken;
  final String imageUrl;

  BaseStuffModel(
      {@required this.id,
      this.count,
      @required this.isBroken,
      @required this.title,
      @required this.imageUrl});
}
