import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'testimonial_entity.freezed.dart';

@freezed
abstract class Testimonial with _$Testimonial {
  const factory Testimonial({
    String id,
    String name,
    String review,
  }) = _Testimonial;

  factory Testimonial.empty() => Testimonial(
        id: '',
        name: '',
        review: '',
      );
}
