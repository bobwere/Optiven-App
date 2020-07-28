import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

import '../../../common/failures/newsletter_failure.dart';
import '../entities/newsletter_entity.dart';

abstract class INewsletterFacade {
  Stream<Either<NewsletterFailure, KtList<Newsletter>>> getAllNewsletters();
}
