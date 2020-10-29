
import 'base_stuff.dart';

class SpiralModel extends BaseStuffModel {
  final String brand;
   SpiralModel({this.brand,
       id,
       title, 
       count,
        isBroken, 
        imageUrl}) : super(title:title,
         id:id,count:count,
          isBroken:isBroken,
          imageUrl:imageUrl);
}
