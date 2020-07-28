import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

import '../../../common/failures/photo_gallery_failure.dart';
import '../entities/photo_gallery_entity.dart';

abstract class IPhotoGalleryFacade {
  Stream<Either<PhotoGalleryFailure, KtList<PhotoGallery>>> getAllPhotos();
  Stream<Either<PhotoGalleryFailure, KtList<PhotoGallery>>> getAllAwards();
  Stream<Either<PhotoGalleryFailure, KtList<PhotoGallery>>> getOurTeam();
}
