import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/news_and_blogs_entity.dart';

part 'news_and_blogs_model.freezed.dart';
part 'news_and_blogs_model.g.dart';

@freezed
abstract class NewsAndBlogsModel with _$NewsAndBlogsModel {
  factory NewsAndBlogsModel({
    @JsonKey(ignore: true) String id,
    String title,
    String date,
    String description,
    String imageUrl,
    String hash,
  }) = _NewsAndBlogsModel;

  factory NewsAndBlogsModel.fromDomain(NewsAndBlogs newsAndBlogs) {
    return NewsAndBlogsModel(
      id: newsAndBlogs.id,
      title: newsAndBlogs.title,
      date: newsAndBlogs.date,
      description: newsAndBlogs.description,
      hash: newsAndBlogs.hash,
      imageUrl: newsAndBlogs.imageUrl,
    );
  }

  factory NewsAndBlogsModel.fromJson(Map<String, dynamic> json) =>
      _$NewsAndBlogsModelFromJson(json);

  factory NewsAndBlogsModel.fromFirestore(DocumentSnapshot doc) {
    return NewsAndBlogsModel.fromJson(doc.data).copyWith(id: doc.documentID);
  }
}

extension NewsAndBlogsModelX on NewsAndBlogsModel {
  NewsAndBlogs toDomain() {
    return NewsAndBlogs(
      id: id,
      title: title,
      date: date,
      description: description,
      imageUrl: imageUrl,
    );
  }
}
