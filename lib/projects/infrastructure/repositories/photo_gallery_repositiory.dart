import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:optiven/common/utils/internet_connection.dart';
import 'package:rxdart/rxdart.dart';

import '../../../common/failures/photo_gallery_failure.dart';
import '../../domain/entities/photo_gallery_entity.dart';
import '../../domain/interfaces/i_photo_gallery_facade.dart';
import '../models/photo_gallery_model/photo_gallery_model.dart';

@LazySingleton(as: IPhotoGalleryFacade)
class PhotoGalleryRepository implements IPhotoGalleryFacade {
  final Firestore _firestore;

  PhotoGalleryRepository(this._firestore);

  @override
  Stream<Either<PhotoGalleryFailure, KtList<PhotoGallery>>>
      getAllPhotos() async* {
    final internetStatus = await isConnected();

    if (!internetStatus) {
      yield left(const PhotoGalleryFailure.noInternet());
    } else {
      final photoGalleryCollection = _firestore.collection('photogallery');
      yield* photoGalleryCollection
          .snapshots()
          .map(
            (snapshot) => right<PhotoGalleryFailure, KtList<PhotoGallery>>(
              snapshot.documents
                  .map((doc) => PhotoGalleryModel.fromFirestore(doc).toDomain())
                  .toImmutableList(),
            ),
          )
          .onErrorReturnWith((e) {
        return left(PhotoGalleryFailure.unexpected());
      });
    }
  }

  @override
  Stream<Either<PhotoGalleryFailure, KtList<PhotoGallery>>>
      getAllAwards() async* {
    final internetStatus = await isConnected();

    if (!internetStatus) {
      yield left(const PhotoGalleryFailure.noInternet());
    } else {
      final awardsCollection = _firestore.collection('awards');
      yield* awardsCollection
          .snapshots()
          .map(
            (snapshot) => right<PhotoGalleryFailure, KtList<PhotoGallery>>(
              snapshot.documents
                  .map((doc) => PhotoGalleryModel.fromFirestore(doc).toDomain())
                  .toImmutableList(),
            ),
          )
          .onErrorReturnWith((e) {
        return left(PhotoGalleryFailure.unexpected());
      });
    }
  }

  @override
  Stream<Either<PhotoGalleryFailure, KtList<PhotoGallery>>>
      getOurTeam() async* {
    final internetStatus = await isConnected();

    if (!internetStatus) {
      yield left(const PhotoGalleryFailure.noInternet());
    } else {
      final awardsCollection = _firestore.collection('ourteam');
      yield* awardsCollection
          .snapshots()
          .map(
            (snapshot) => right<PhotoGalleryFailure, KtList<PhotoGallery>>(
              snapshot.documents
                  .map((doc) => PhotoGalleryModel.fromFirestore(doc).toDomain())
                  .toImmutableList(),
            ),
          )
          .onErrorReturnWith((e) {
        return left(PhotoGalleryFailure.unexpected());
      });
    }
  }
}
