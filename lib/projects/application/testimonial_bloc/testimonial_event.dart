part of 'testimonial_bloc.dart';

@freezed
abstract class TestimonialEvent with _$TestimonialEvent {
  const factory TestimonialEvent.getAllTestimonials() = _GetAllTestimonials;

  const factory TestimonialEvent.testimonialsReceived(
    Either<TestimonialFailure, KtList<Testimonial>> failureOrTestimonials,
  ) = _TestimonialsReceived;
}
