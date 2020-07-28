part of 'newsletter_bloc.dart';

@freezed
abstract class NewsletterState with _$NewsletterState {
  const factory NewsletterState.initial() = Initial;
  const factory NewsletterState.loadingData() = LoadingData;
  const factory NewsletterState.loadSuccess(KtList<Newsletter> newsletters) =
      LoadSuccess;
  const factory NewsletterState.loadFailure(
      NewsletterFailure newsletterFailure) = LoadFailure;
}
