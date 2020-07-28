part of 'testimonial_bloc.dart';

@freezed
abstract class TestimonialState with _$TestimonialState {
  const factory TestimonialState.initial() = Initial;
  const factory TestimonialState.loadingData() = LoadingData;
  const factory TestimonialState.loadSuccess(KtList<Testimonial> testimonials) =
      LoadSuccess;
  const factory TestimonialState.loadFailure(
      TestimonialFailure testimonialFailure) = LoadFailure;
}
