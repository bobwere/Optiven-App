import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

import '../../../common/failures/testimonial_failure.dart';
import '../entities/testimonial_entity.dart';

abstract class ITestimonialFacade {
  Stream<Either<TestimonialFailure, KtList<Testimonial>>> getAllTestimonials();
}
