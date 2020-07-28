import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/testimonial_entity.dart';

part 'testimonial_model.freezed.dart';
part 'testimonial_model.g.dart';

@freezed
abstract class TestimonialModel with _$TestimonialModel {
  factory TestimonialModel({
    @JsonKey(ignore: true) String id,
     String name,
    String review,
  }) = _TestimonialModel;

  factory TestimonialModel.fromDomain(Testimonial testimonial) {
    return TestimonialModel(
      id: testimonial.id,
      name: testimonial.name,
      review: testimonial.review,
    );
  }

  factory TestimonialModel.fromJson(Map<String, dynamic> json) =>
      _$TestimonialModelFromJson(json);

  factory TestimonialModel.fromFirestore(DocumentSnapshot doc) {
    return TestimonialModel.fromJson(doc.data).copyWith(id: doc.documentID);
  }
}

extension TestimonialModelX on TestimonialModel {
  Testimonial toDomain() {
    return Testimonial(
      id: id,
      name: name,
      review: review,
    );
  }
}
