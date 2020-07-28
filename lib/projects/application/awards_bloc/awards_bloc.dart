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

part 'awards_bloc.freezed.dart';
part 'awards_event.dart';
part 'awards_state.dart';

@injectable
class AwardsBloc extends Bloc<AwardsEvent, AwardsState> {
  final IProjectFacade _photoGalleryFacade;

  AwardsBloc(this._photoGalleryFacade);

  StreamSubscription<Either<PhotoGalleryFailure, KtList<PhotoGallery>>>
      _photosStreamSubscription;

  @override
  Stream<AwardsState> mapEventToState(
    AwardsEvent event,
  ) async* {
    yield* event.map(
      getAllAwards: (e) async* {
        yield const AwardsState.loadingData();
        await _photosStreamSubscription?.cancel();
        _photosStreamSubscription = _photoGalleryFacade
            .getAllAwards()
            .listen((photos) => add(AwardsEvent.photosReceived(photos)));
      },
      photosReceived: (e) async* {
        yield e.failureOrPhotos.fold(
          (f) => AwardsState.loadFailure(f),
          (photos) => AwardsState.loadSuccess(photos),
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
  AwardsState get initialState => AwardsState.initial();
}
