  import 'base_stuff.dart';

  class CementModel extends BaseStuffModel {
    final String brand;
    CementModel({
      this.brand,
      final double amountPerCount,
        id,
        title, 
        count,
          isBroken, 
          imageUrl}) : super(title:title,
          id:id,count:count,
            isBroken:isBroken,
            imageUrl:imageUrl);
  }
