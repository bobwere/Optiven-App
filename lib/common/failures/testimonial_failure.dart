import 'package:freezed_annotation/freezed_annotation.dart';

part 'testimonial_failure.freezed.dart';

@freezed
abstract class TestimonialFailure with _$TestimonialFailure {
  const factory TestimonialFailure.unexpected() = Unexpected;
  const factory TestimonialFailure.noInternet() = NoInternet;
}
