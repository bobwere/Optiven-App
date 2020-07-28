// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProjectModel _$_$_ProjectModelFromJson(Map<String, dynamic> json) {
  return _$_ProjectModel(
    name: json['name'] as String,
    hash: (json['hash'] as List)?.map((e) => e as String)?.toList(),
    picture: (json['picture'] as List)?.map((e) => e as String)?.toList(),
    price: json['price'] as String,
    pricerange: json['pricerange'] as String,
    financing: json['financing'] as String,
    location: json['location'] as String,
    description: json['description'] as String,
  );
}

Map<String, dynamic> _$_$_ProjectModelToJson(_$_ProjectModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'hash': instance.hash,
      'picture': instance.picture,
      'price': instance.price,
      'pricerange': instance.pricerange,
      'financing': instance.financing,
      'location': instance.location,
      'description': instance.description,
    };
