import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';
import 'package:optiven/projects/domain/interfaces/i_project_facade.dart';

import '../../../common/failures/photo_gallery_failure.dart';
import '../../domain/entities/photo_gallery_entity.dart';
import '../../domain/interfaces/i_photo_gallery_facade.dart';

part 'photo_gallery_bloc.freezed.dart';
part 'photo_gallery_event.dart';
part 'photo_gallery_state.dart';

@injectable
class PhotoGalleryBloc extends Bloc<PhotoGalleryEvent, PhotoGalleryState> {
  final IProjectFacade _photoGalleryFacade;

  PhotoGalleryBloc(this._photoGalleryFacade);

  StreamSubscription<Either<PhotoGalleryFailure, KtList<PhotoGallery>>>
      _photosStreamSubscription;

  @override
  Stream<PhotoGalleryState> mapEventToState(
    PhotoGalleryEvent event,
  ) async* {
    yield* event.map(
      getAllPhotos: (e) async* {
        yield const PhotoGalleryState.loadingData();
        await _photosStreamSubscription?.cancel();
        _photosStreamSubscription = _photoGalleryFacade
            .getAllPhotos()
            .listen((photos) => add(PhotoGalleryEvent.photosReceived(photos)));
      },
      photosReceived: (e) async* {
        yield e.failureOrPhotos.fold(
          (f) => PhotoGalleryState.loadFailure(f),
          (photos) => PhotoGalleryState.loadSuccess(photos),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _photosStreamSubscription.cancel();
    return super.close();
  }

  @override
  PhotoGalleryState get initialState => PhotoGalleryState.initial();
}
