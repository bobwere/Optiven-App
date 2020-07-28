part of 'newsletter_bloc.dart';

@freezed
abstract class NewsletterEvent with _$NewsletterEvent {
  const factory NewsletterEvent.getAllNewsletters() = _GetAllNewsletters;

  const factory NewsletterEvent.newslettersReceived(
    Either<NewsletterFailure, KtList<Newsletter>> failureOrNewsletters,
  ) = _NewslettersReceived;
}
