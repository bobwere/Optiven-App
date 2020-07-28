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

part 'project_bloc.freezed.dart';
part 'project_event.dart';
part 'project_state.dart';

@injectable
class ProjectBloc extends Bloc<ProjectEvent, ProjectState> {
  final IProjectFacade _projectFacade;

  ProjectBloc(this._projectFacade);

  StreamSubscription<Either<ProjectFailure, KtList<Project>>>
      _projectStreamSubscription;

  @override
  Stream<ProjectState> mapEventToState(
    ProjectEvent event,
  ) async* {
    yield* event.map(
      getAllProjects: (e) async* {
        yield const ProjectState.loadingData();
        await _projectStreamSubscription?.cancel();
        _projectStreamSubscription = _projectFacade
            .getAllProjects()
            .listen((projects) => add(ProjectEvent.projectsReceived(projects)));
      },
      projectsReceived: (e) async* {
        yield e.failureOrProjects.fold(
          (f) => ProjectState.loadFailure(f),
          (projects) => ProjectState.loadSuccess(projects),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _projectStreamSubscription.cancel();
    return super.close();
  }

  @override
  ProjectState get initialState => ProjectState.initial();
}
