// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_and_blogs_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewsAndBlogsModel _$_$_NewsAndBlogsModelFromJson(Map<String, dynamic> json) {
  return _$_NewsAndBlogsModel(
    title: json['title'] as String,
    date: json['date'] as String,
    description: json['description'] as String,
    imageUrl: json['imageUrl'] as String,
    hash: json['hash'] as String,
  );
}

Map<String, dynamic> _$_$_NewsAndBlogsModelToJson(
        _$_NewsAndBlogsModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'date': instance.date,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'hash': instance.hash,
    };
