part of 'news_and_blogs_bloc.dart';

@freezed
abstract class NewsAndBlogsEvent with _$NewsAndBlogsEvent {
  const factory NewsAndBlogsEvent.getAllNewsAndBlogs() = _GetAllNewsAndBlogs;
  const factory NewsAndBlogsEvent.getFirstNewsAndBlogs() =
      _GetFirstNewsAndBlogs;
  const factory NewsAndBlogsEvent.getMoreNewsAndBlogs() = _GetMoreNewsAndBlogs;
  const factory NewsAndBlogsEvent.newsAndBlogsReceived(
    Either<NewsAndBlogsFailure, KtList<NewsAndBlogs>> failureOrNewsAndBlogs,
  ) = _NewsANdBlogsReceived;
}
