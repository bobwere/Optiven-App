part of 'philanthropy_news_bloc.dart';

@freezed
abstract class PhilanthropyNewsEvent with _$PhilanthropyNewsEvent {
  const factory PhilanthropyNewsEvent.getAllPhilanthropyNews() =
      _PhilanthropyNewsEvent;

  const factory PhilanthropyNewsEvent.philanthropyNewsReceived(
    Either<NewsAndBlogsFailure, KtList<NewsAndBlogs>> failureOrNewsAndBlogs,
  ) = _PhilanthropyNewsReceived;
}
