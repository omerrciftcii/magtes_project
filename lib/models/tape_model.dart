import 'base_stuff.dart';

class TapeModel extends BaseStuffModel {
  final String brand;
  TapeModel({this.brand, id, title, count, isBroken, imageUrl})
      : super(
            title: title,
            id: id,
            count: count,
            isBroken: isBroken,
            imageUrl: imageUrl);
}
