// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_gallery_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PhotoGalleryModel _$_$_PhotoGalleryModelFromJson(Map<String, dynamic> json) {
  return _$_PhotoGalleryModel(
    title: json['title'] as String,
    description: json['description'] as String,
    imageUrl: json['imageUrl'] as String,
    hash: json['hash'] as String,
  );
}

Map<String, dynamic> _$_$_PhotoGalleryModelToJson(
        _$_PhotoGalleryModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'hash': instance.hash,
    };
