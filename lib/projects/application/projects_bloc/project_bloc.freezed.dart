// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'project_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ProjectEventTearOff {
  const _$ProjectEventTearOff();

  _GetAllProjects getAllProjects() {
    return const _GetAllProjects();
  }

  _ProjectsReceived projectsReceived(
      Either<ProjectFailure, KtList<Project>> failureOrProjects) {
    return _ProjectsReceived(
      failureOrProjects,
    );
  }
}

// ignore: unused_element
const $ProjectEvent = _$ProjectEventTearOff();

mixin _$ProjectEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getAllProjects(),
    @required
        Result projectsReceived(
            Either<ProjectFailure, KtList<Project>> failureOrProjects),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getAllProjects(),
    Result projectsReceived(
        Either<ProjectFailure, KtList<Project>> failureOrProjects),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getAllProjects(_GetAllProjects value),
    @required Result projectsReceived(_ProjectsReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getAllProjects(_GetAllProjects value),
    Result projectsReceived(_ProjectsReceived value),
    @required Result orElse(),
  });
}

abstract class $ProjectEventCopyWith<$Res> {
  factory $ProjectEventCopyWith(
          ProjectEvent value, $Res Function(ProjectEvent) then) =
      _$ProjectEventCopyWithImpl<$Res>;
}

class _$ProjectEventCopyWithImpl<$Res> implements $ProjectEventCopyWith<$Res> {
  _$ProjectEventCopyWithImpl(this._value, this._then);

  final ProjectEvent _value;
  // ignore: unused_field
  final $Res Function(ProjectEvent) _then;
}

abstract class _$GetAllProjectsCopyWith<$Res> {
  factory _$GetAllProjectsCopyWith(
          _GetAllProjects value, $Res Function(_GetAllProjects) then) =
      __$GetAllProjectsCopyWithImpl<$Res>;
}

class __$GetAllProjectsCopyWithImpl<$Res>
    extends _$ProjectEventCopyWithImpl<$Res>
    implements _$GetAllProjectsCopyWith<$Res> {
  __$GetAllProjectsCopyWithImpl(
      _GetAllProjects _value, $Res Function(_GetAllProjects) _then)
      : super(_value, (v) => _then(v as _GetAllProjects));

  @override
  _GetAllProjects get _value => super._value as _GetAllProjects;
}

class _$_GetAllProjects
    with DiagnosticableTreeMixin
    implements _GetAllProjects {
  const _$_GetAllProjects();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProjectEvent.getAllProjects()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ProjectEvent.getAllProjects'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetAllProjects);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getAllProjects(),
    @required
        Result projectsReceived(
            Either<ProjectFailure, KtList<Project>> failureOrProjects),
  }) {
    assert(getAllProjects != null);
    assert(projectsReceived != null);
    return getAllProjects();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getAllProjects(),
    Result projectsReceived(
        Either<ProjectFailure, KtList<Project>> failureOrProjects),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getAllProjects != null) {
      return getAllProjects();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getAllProjects(_GetAllProjects value),
    @required Result projectsReceived(_ProjectsReceived value),
  }) {
    assert(getAllProjects != null);
    assert(projectsReceived != null);
    return getAllProjects(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getAllProjects(_GetAllProjects value),
    Result projectsReceived(_ProjectsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getAllProjects != null) {
      return getAllProjects(this);
    }
    return orElse();
  }
}

abstract class _GetAllProjects implements ProjectEvent {
  const factory _GetAllProjects() = _$_GetAllProjects;
}

abstract class _$ProjectsReceivedCopyWith<$Res> {
  factory _$ProjectsReceivedCopyWith(
          _ProjectsReceived value, $Res Function(_ProjectsReceived) then) =
      __$ProjectsReceivedCopyWithImpl<$Res>;
  $Res call({Either<ProjectFailure, KtList<Project>> failureOrProjects});
}

class __$ProjectsReceivedCopyWithImpl<$Res>
    extends _$ProjectEventCopyWithImpl<$Res>
    implements _$ProjectsReceivedCopyWith<$Res> {
  __$ProjectsReceivedCopyWithImpl(
      _ProjectsReceived _value, $Res Function(_ProjectsReceived) _then)
      : super(_value, (v) => _then(v as _ProjectsReceived));

  @override
  _ProjectsReceived get _value => super._value as _ProjectsReceived;

  @override
  $Res call({
    Object failureOrProjects = freezed,
  }) {
    return _then(_ProjectsReceived(
      failureOrProjects == freezed
          ? _value.failureOrProjects
          : failureOrProjects as Either<ProjectFailure, KtList<Project>>,
    ));
  }
}

class _$_ProjectsReceived
    with DiagnosticableTreeMixin
    implements _ProjectsReceived {
  const _$_ProjectsReceived(this.failureOrProjects)
      : assert(failureOrProjects != null);

  @override
  final Either<ProjectFailure, KtList<Project>> failureOrProjects;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProjectEvent.projectsReceived(failureOrProjects: $failureOrProjects)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProjectEvent.projectsReceived'))
      ..add(DiagnosticsProperty('failureOrProjects', failureOrProjects));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProjectsReceived &&
            (identical(other.failureOrProjects, failureOrProjects) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrProjects, failureOrProjects)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrProjects);

  @override
  _$ProjectsReceivedCopyWith<_ProjectsReceived> get copyWith =>
      __$ProjectsReceivedCopyWithImpl<_ProjectsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getAllProjects(),
    @required
        Result projectsReceived(
            Either<ProjectFailure, KtList<Project>> failureOrProjects),
  }) {
    assert(getAllProjects != null);
    assert(projectsReceived != null);
    return projectsReceived(failureOrProjects);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getAllProjects(),
    Result projectsReceived(
        Either<ProjectFailure, KtList<Project>> failureOrProjects),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (projectsReceived != null) {
      return projectsReceived(failureOrProjects);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getAllProjects(_GetAllProjects value),
    @required Result projectsReceived(_ProjectsReceived value),
  }) {
    assert(getAllProjects != null);
    assert(projectsReceived != null);
    return projectsReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getAllProjects(_GetAllProjects value),
    Result projectsReceived(_ProjectsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (projectsReceived != null) {
      return projectsReceived(this);
    }
    return orElse();
  }
}

abstract class _ProjectsReceived implements ProjectEvent {
  const factory _ProjectsReceived(
          Either<ProjectFailure, KtList<Project>> failureOrProjects) =
      _$_ProjectsReceived;

  Either<ProjectFailure, KtList<Project>> get failureOrProjects;
  _$ProjectsReceivedCopyWith<_ProjectsReceived> get copyWith;
}

class _$ProjectStateTearOff {
  const _$ProjectStateTearOff();

  Initial initial() {
    return const Initial();
  }

  LoadingData loadingData() {
    return const LoadingData();
  }

  LoadSuccess loadSuccess(KtList<Project> projects) {
    return LoadSuccess(
      projects,
    );
  }

  LoadFailure loadFailure(ProjectFailure projectFailure) {
    return LoadFailure(
      projectFailure,
    );
  }
}

// ignore: unused_element
const $ProjectState = _$ProjectStateTearOff();

mixin _$ProjectState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadingData(),
    @required Result loadSuccess(KtList<Project> projects),
    @required Result loadFailure(ProjectFailure projectFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadingData(),
    Result loadSuccess(KtList<Project> projects),
    Result loadFailure(ProjectFailure projectFailure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadingData(LoadingData value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadingData(LoadingData value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  });
}

abstract class $ProjectStateCopyWith<$Res> {
  factory $ProjectStateCopyWith(
          ProjectState value, $Res Function(ProjectState) then) =
      _$ProjectStateCopyWithImpl<$Res>;
}

class _$ProjectStateCopyWithImpl<$Res> implements $ProjectStateCopyWith<$Res> {
  _$ProjectStateCopyWithImpl(this._value, this._then);

  final ProjectState _value;
  // ignore: unused_field
  final $Res Function(ProjectState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$ProjectStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

class _$Initial with DiagnosticableTreeMixin implements Initial {
  const _$Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProjectState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ProjectState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadingData(),
    @required Result loadSuccess(KtList<Project> projects),
    @required Result loadFailure(ProjectFailure projectFailure),
  }) {
    assert(initial != null);
    assert(loadingData != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadingData(),
    Result loadSuccess(KtList<Project> projects),
    Result loadFailure(ProjectFailure projectFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadingData(LoadingData value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadingData != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadingData(LoadingData value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ProjectState {
  const factory Initial() = _$Initial;
}

abstract class $LoadingDataCopyWith<$Res> {
  factory $LoadingDataCopyWith(
          LoadingData value, $Res Function(LoadingData) then) =
      _$LoadingDataCopyWithImpl<$Res>;
}

class _$LoadingDataCopyWithImpl<$Res> extends _$ProjectStateCopyWithImpl<$Res>
    implements $LoadingDataCopyWith<$Res> {
  _$LoadingDataCopyWithImpl(
      LoadingData _value, $Res Function(LoadingData) _then)
      : super(_value, (v) => _then(v as LoadingData));

  @override
  LoadingData get _value => super._value as LoadingData;
}

class _$LoadingData with DiagnosticableTreeMixin implements LoadingData {
  const _$LoadingData();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProjectState.loadingData()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ProjectState.loadingData'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadingData(),
    @required Result loadSuccess(KtList<Project> projects),
    @required Result loadFailure(ProjectFailure projectFailure),
  }) {
    assert(initial != null);
    assert(loadingData != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadingData();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadingData(),
    Result loadSuccess(KtList<Project> projects),
    Result loadFailure(ProjectFailure projectFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadingData != null) {
      return loadingData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadingData(LoadingData value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadingData != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadingData(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadingData(LoadingData value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadingData != null) {
      return loadingData(this);
    }
    return orElse();
  }
}

abstract class LoadingData implements ProjectState {
  const factory LoadingData() = _$LoadingData;
}

abstract class $LoadSuccessCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<Project> projects});
}

class _$LoadSuccessCopyWithImpl<$Res> extends _$ProjectStateCopyWithImpl<$Res>
    implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(
      LoadSuccess _value, $Res Function(LoadSuccess) _then)
      : super(_value, (v) => _then(v as LoadSuccess));

  @override
  LoadSuccess get _value => super._value as LoadSuccess;

  @override
  $Res call({
    Object projects = freezed,
  }) {
    return _then(LoadSuccess(
      projects == freezed ? _value.projects : projects as KtList<Project>,
    ));
  }
}

class _$LoadSuccess with DiagnosticableTreeMixin implements LoadSuccess {
  const _$LoadSuccess(this.projects) : assert(projects != null);

  @override
  final KtList<Project> projects;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProjectState.loadSuccess(projects: $projects)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProjectState.loadSuccess'))
      ..add(DiagnosticsProperty('projects', projects));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSuccess &&
            (identical(other.projects, projects) ||
                const DeepCollectionEquality()
                    .equals(other.projects, projects)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(projects);

  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadingData(),
    @required Result loadSuccess(KtList<Project> projects),
    @required Result loadFailure(ProjectFailure projectFailure),
  }) {
    assert(initial != null);
    assert(loadingData != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(projects);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadingData(),
    Result loadSuccess(KtList<Project> projects),
    Result loadFailure(ProjectFailure projectFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(projects);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadingData(LoadingData value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadingData != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadingData(LoadingData value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class LoadSuccess implements ProjectState {
  const factory LoadSuccess(KtList<Project> projects) = _$LoadSuccess;

  KtList<Project> get projects;
  $LoadSuccessCopyWith<LoadSuccess> get copyWith;
}

abstract class $LoadFailureCopyWith<$Res> {
  factory $LoadFailureCopyWith(
          LoadFailure value, $Res Function(LoadFailure) then) =
      _$LoadFailureCopyWithImpl<$Res>;
  $Res call({ProjectFailure projectFailure});

  $ProjectFailureCopyWith<$Res> get projectFailure;
}

class _$LoadFailureCopyWithImpl<$Res> extends _$ProjectStateCopyWithImpl<$Res>
    implements $LoadFailureCopyWith<$Res> {
  _$LoadFailureCopyWithImpl(
      LoadFailure _value, $Res Function(LoadFailure) _then)
      : super(_value, (v) => _then(v as LoadFailure));

  @override
  LoadFailure get _value => super._value as LoadFailure;

  @override
  $Res call({
    Object projectFailure = freezed,
  }) {
    return _then(LoadFailure(
      projectFailure == freezed
          ? _value.projectFailure
          : projectFailure as ProjectFailure,
    ));
  }

  @override
  $ProjectFailureCopyWith<$Res> get projectFailure {
    if (_value.projectFailure == null) {
      return null;
    }
    return $ProjectFailureCopyWith<$Res>(_value.projectFailure, (value) {
      return _then(_value.copyWith(projectFailure: value));
    });
  }
}

class _$LoadFailure with DiagnosticableTreeMixin implements LoadFailure {
  const _$LoadFailure(this.projectFailure) : assert(projectFailure != null);

  @override
  final ProjectFailure projectFailure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProjectState.loadFailure(projectFailure: $projectFailure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProjectState.loadFailure'))
      ..add(DiagnosticsProperty('projectFailure', projectFailure));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadFailure &&
            (identical(other.projectFailure, projectFailure) ||
                const DeepCollectionEquality()
                    .equals(other.projectFailure, projectFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(projectFailure);

  @override
  $LoadFailureCopyWith<LoadFailure> get copyWith =>
      _$LoadFailureCopyWithImpl<LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadingData(),
    @required Result loadSuccess(KtList<Project> projects),
    @required Result loadFailure(ProjectFailure projectFailure),
  }) {
    assert(initial != null);
    assert(loadingData != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(projectFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadingData(),
    Result loadSuccess(KtList<Project> projects),
    Result loadFailure(ProjectFailure projectFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(projectFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadingData(LoadingData value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadingData != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadingData(LoadingData value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class LoadFailure implements ProjectState {
  const factory LoadFailure(ProjectFailure projectFailure) = _$LoadFailure;

  ProjectFailure get projectFailure;
  $LoadFailureCopyWith<LoadFailure> get copyWith;
}
