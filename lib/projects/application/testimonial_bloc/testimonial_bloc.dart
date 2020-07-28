import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';
import 'package:optiven/projects/domain/interfaces/i_project_facade.dart';

import '../../../common/failures/testimonial_failure.dart';
import '../../domain/entities/testimonial_entity.dart';
import '../../domain/interfaces/i_testimonial_facade.dart';

part 'testimonial_bloc.freezed.dart';
part 'testimonial_event.dart';
part 'testimonial_state.dart';

@injectable
class TestimonialBloc extends Bloc<TestimonialEvent, TestimonialState> {
  final IProjectFacade _testimonialFacade;

  TestimonialBloc(this._testimonialFacade);

  StreamSubscription<Either<TestimonialFailure, KtList<Testimonial>>>
      _testimonialStreamSubscription;

  @override
  Stream<TestimonialState> mapEventToState(
    TestimonialEvent event,
  ) async* {
    yield* event.map(
      getAllTestimonials: (e) async* {
        yield const TestimonialState.loadingData();
        await _testimonialStreamSubscription?.cancel();
        _testimonialStreamSubscription = _testimonialFacade
            .getAllTestimonials()
            .listen((testimonials) =>
                add(TestimonialEvent.testimonialsReceived(testimonials)));
      },
      testimonialsReceived: (e) async* {
        yield e.failureOrTestimonials.fold(
          (f) => TestimonialState.loadFailure(f),
          (testimonials) => TestimonialState.loadSuccess(testimonials),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _testimonialStreamSubscription.cancel();
    return super.close();
  }

  @override
  TestimonialState get initialState => TestimonialState.initial();
}
