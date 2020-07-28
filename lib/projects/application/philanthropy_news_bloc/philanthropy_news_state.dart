part of 'philanthropy_news_bloc.dart';

@freezed
abstract class PhilanthropyNewsState with _$PhilanthropyNewsState {
  const factory PhilanthropyNewsState.initial() = Initial;
  const factory PhilanthropyNewsState.loadingData() = LoadingData;
  const factory PhilanthropyNewsState.loadSuccess(
      KtList<NewsAndBlogs> newsAndBlogs) = LoadSuccess;
  const factory PhilanthropyNewsState.loadFailure(
      NewsAndBlogsFailure newsAndBlogsFailure) = LoadFailure;
}
