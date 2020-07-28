import 'package:freezed_annotation/freezed_annotation.dart';

part 'newsletter_failure.freezed.dart';

@freezed
abstract class NewsletterFailure with _$NewsletterFailure {
  const factory NewsletterFailure.unexpected() = Unexpected;
  const factory NewsletterFailure.noInternet() = NoInternet;
}
