import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/newsletter_entity.dart';

part 'newsletter_model.freezed.dart';
part 'newsletter_model.g.dart';

@freezed
abstract class NewsletterModel with _$NewsletterModel {
  factory NewsletterModel({
    @JsonKey(ignore: true) String id,
    String title,
    @required String pdfUrl,
  }) = _NewsletterModel;

  factory NewsletterModel.fromDomain(Newsletter newsletter) {
    return NewsletterModel(
      id: newsletter.id,
      title: newsletter.title,
      pdfUrl: newsletter.pdfUrl,
    );
  }

  factory NewsletterModel.fromJson(Map<String, dynamic> json) =>
      _$NewsletterModelFromJson(json);

  factory NewsletterModel.fromFirestore(DocumentSnapshot doc) {
    return NewsletterModel.fromJson(doc.data).copyWith(id: doc.documentID);
  }
}

extension NewsletterX on NewsletterModel {
  Newsletter toDomain() {
    return Newsletter(
      id: id,
      title: title,
      pdfUrl: pdfUrl,
    );
  }
}
