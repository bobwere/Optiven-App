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

part 'our_team_bloc.freezed.dart';
part 'our_team_event.dart';
part 'our_team_state.dart';

@injectable
class OurTeamBloc extends Bloc<OurTeamEvent, OurTeamState> {
  final IProjectFacade _photoGalleryFacade;

  OurTeamBloc(this._photoGalleryFacade);

  StreamSubscription<Either<PhotoGalleryFailure, KtList<PhotoGallery>>>
      _photosStreamSubscription;

  @override
  Stream<OurTeamState> mapEventToState(
    OurTeamEvent event,
  ) async* {
    yield* event.map(
      getOurTeam: (e) async* {
        yield const OurTeamState.loadingData();
        await _photosStreamSubscription?.cancel();
        _photosStreamSubscription = _photoGalleryFacade
            .getOurTeam()
            .listen((photos) => add(OurTeamEvent.photosReceived(photos)));
      },
      photosReceived: (e) async* {
        yield e.failureOrPhotos.fold(
          (f) => OurTeamState.loadFailure(f),
          (photos) => OurTeamState.loadSuccess(photos),
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
  OurTeamState get initialState => OurTeamState.initial();
}
