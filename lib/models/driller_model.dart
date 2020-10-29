import 'package:setup_1/models/base_stuff.dart';

class DrillerModel extends BaseStuffModel {
  final String brand;
   DrillerModel({this.brand,
       id,
       title, 
       count,
        isBroken, 
        imageUrl}) : super(title:title,
         id:id,count:count,
          isBroken:isBroken,
          imageUrl:imageUrl);
}
