import 'package:setup_1/models/base_stuff.dart';

class PipeModel extends BaseStuffModel {
  
  final double width;
  final double radius;
  final String model;
  final String length;
  PipeModel({this.length,
   this.model,
    this.radius,
     this.width,
      id,
       title, 
       count,
        isBroken, 
        imageUrl}) : super(title:title,
         id:id,count:count,
          isBroken:isBroken,
          imageUrl:imageUrl);

}
