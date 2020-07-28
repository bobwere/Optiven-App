import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_and_blogs_entity.freezed.dart';

@freezed
abstract class NewsAndBlogs with _$NewsAndBlogs {
  const factory NewsAndBlogs({
    String id,
    String title,
    String date,
    String description,
    String hash,
    String imageUrl,
  }) = _NewsAndBlogs;

  factory NewsAndBlogs.empty() => NewsAndBlogs(
        id: '',
        title: '',
        date: '',
        hash: '',
        imageUrl: '',
        description: '',
      );
}
