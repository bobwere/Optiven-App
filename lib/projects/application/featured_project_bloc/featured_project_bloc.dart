import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';

import '../../../common/failures/project_failure.dart';
import '../../domain/entities/project_entity.dart';
import '../../domain/interfaces/i_project_facade.dart';

part 'featured_project_bloc.freezed.dart';
part 'featured_project_event.dart';
part 'featured_project_state.dart';

@injectable
class FeaturedProjectBloc
    extends Bloc<FeaturedProjectEvent, FeaturedProjectState> {
  final IProjectFacade _projectFacade;

  FeaturedProjectBloc(this._projectFacade);

  StreamSubscription<Either<ProjectFailure, KtList<Project>>>
      _featuredProjectStreamSubscription;

  @override
  Stream<FeaturedProjectState> mapEventToState(
    FeaturedProjectEvent event,
  ) async* {
    yield* event.map(
      getAllFeaturedProjects: (e) async* {
        yield const FeaturedProjectState.loadingData();
        await _featuredProjectStreamSubscription?.cancel();
        _featuredProjectStreamSubscription = _projectFacade
            .getAllFeaturedProjects()
            .listen((projects) =>
                add(FeaturedProjectEvent.projectsReceived(projects)));
      },
      projectsReceived: (e) async* {
        yield e.failureOrProjects.fold(
          (f) => FeaturedProjectState.loadFailure(f),
          (projects) => FeaturedProjectState.loadSuccess(projects),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _featuredProjectStreamSubscription.cancel();
    return super.close();
  }

  @override
  FeaturedProjectState get initialState => FeaturedProjectState.initial();
}
