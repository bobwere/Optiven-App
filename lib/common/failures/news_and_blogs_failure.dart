import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_and_blogs_failure.freezed.dart';

@freezed
abstract class NewsAndBlogsFailure with _$NewsAndBlogsFailure {
  const factory NewsAndBlogsFailure.unexpected() = Unexpected;
  const factory NewsAndBlogsFailure.noInternet() = NoInternet;
}
