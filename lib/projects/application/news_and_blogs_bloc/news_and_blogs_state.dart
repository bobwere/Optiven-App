part of 'news_and_blogs_bloc.dart';

@freezed
abstract class NewsAndBlogsState with _$NewsAndBlogsState {
  const factory NewsAndBlogsState.initial() = Initial;
  const factory NewsAndBlogsState.loadingData() = LoadingData;
  const factory NewsAndBlogsState.loadSuccess(
      KtList<NewsAndBlogs> newsAndBlogs) = LoadSuccess;
  const factory NewsAndBlogsState.loadFailure(
      NewsAndBlogsFailure newsAndBlogsFailure) = LoadFailure;
}
