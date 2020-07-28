import 'package:optiven/common/helpers/sqflite_database_helper.dart';

class ProjectFavourite {
  ProjectFavourite({
    this.id,
    this.title,
    this.location,
    this.price,
    this.financing,
    this.image,
  });

  String id;
  String title;
  String location;
  String price;
  String financing;
  String image;

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      DatabaseProvider.COLUMN_TITLE: title,
      DatabaseProvider.COLUMN_LOCATION: location,
      DatabaseProvider.COLUMN_PRICE: price,
      DatabaseProvider.COLUMN_FINANCING: financing,
      DatabaseProvider.COLUMN_IMAGE: image,
    };

    if (id != null) {
      map[DatabaseProvider.COLUMN_ID] = id;
    }

    return map;
  }

  ProjectFavourite.fromMap(Map<String, dynamic> map) {
    id = map[DatabaseProvider.COLUMN_ID];
    title = map[DatabaseProvider.COLUMN_TITLE];
    location = map[DatabaseProvider.COLUMN_LOCATION];
    price = map[DatabaseProvider.COLUMN_PRICE];
    financing = map[DatabaseProvider.COLUMN_FINANCING];
    image = map[DatabaseProvider.COLUMN_IMAGE];
  }
}
