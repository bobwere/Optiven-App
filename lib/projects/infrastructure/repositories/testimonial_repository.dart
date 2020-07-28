import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:optiven/common/utils/internet_connection.dart';
import 'package:rxdart/rxdart.dart';

import '../../../common/failures/testimonial_failure.dart';
import '../../domain/entities/testimonial_entity.dart';
import '../../domain/interfaces/i_testimonial_facade.dart';
import '../models/testimonial_model/testimonial_model.dart';

@LazySingleton(as: ITestimonialFacade)
class TestimonialRepository implements ITestimonialFacade {
  final Firestore _firestore;

  TestimonialRepository(this._firestore);

  @override
  Stream<Either<TestimonialFailure, KtList<Testimonial>>>
      getAllTestimonials() async* {
    final internetStatus = await isConnected();

    if (!internetStatus) {
      yield left(const TestimonialFailure.noInternet());
    } else {
      final testimonialCollection = _firestore.collection('testimonials');
      yield* testimonialCollection
          .snapshots()
          .map(
            (snapshot) => right<TestimonialFailure, KtList<Testimonial>>(
              snapshot.documents
                  .map((doc) => TestimonialModel.fromFirestore(doc).toDomain())
                  .toImmutableList(),
            ),
          )
          .onErrorReturnWith((e) {
        print('ERROR IS THIS' + e.toString());
        return left(TestimonialFailure.unexpected());
      });
    }
  }
}
