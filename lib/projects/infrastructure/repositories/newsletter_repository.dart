import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:optiven/common/utils/internet_connection.dart';
import 'package:rxdart/rxdart.dart';

import '../../../common/failures/newsletter_failure.dart';
import '../../domain/entities/newsletter_entity.dart';
import '../../domain/interfaces/i_newsletter_facade.dart';
import '../models/newsletter_model/newsletter_model.dart';

@LazySingleton(as: INewsletterFacade)
class NewsletterRepository implements INewsletterFacade {
  final Firestore _firestore;

  NewsletterRepository(this._firestore);

  @override
  Stream<Either<NewsletterFailure, KtList<Newsletter>>>
      getAllNewsletters() async* {
    final internetStatus = await isConnected();

    if (!internetStatus) {
      yield left(const NewsletterFailure.noInternet());
    } else {
      final newsletterCollection = _firestore.collection('newsletter');
      yield* newsletterCollection
          .snapshots()
          .map(
            (snapshot) => right<NewsletterFailure, KtList<Newsletter>>(
              snapshot.documents
                  .map((doc) => NewsletterModel.fromFirestore(doc).toDomain())
                  .toImmutableList(),
            ),
          )
          .onErrorReturnWith((e) {
        return left(NewsletterFailure.unexpected());
      });
    }
  }
}
