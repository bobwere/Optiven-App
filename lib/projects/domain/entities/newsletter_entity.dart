import 'package:freezed_annotation/freezed_annotation.dart';
part 'newsletter_entity.freezed.dart';

@freezed
abstract class Newsletter with _$Newsletter {
  const factory Newsletter({
    String id,
    String title,
    String pdfUrl,
  }) = _Newsletter;

  factory Newsletter.empty() => Newsletter(
        id: '',
        title: '',
        pdfUrl: '',
      );
}
