// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'featured_project_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$FeaturedProjectEventTearOff {
  const _$FeaturedProjectEventTearOff();

  _GetAllFeaturedProjects getAllFeaturedProjects() {
    return const _GetAllFeaturedProjects();
  }

  _ProjectsReceived projectsReceived(
      Either<ProjectFailure, KtList<Project>> failureOrProjects) {
    return _ProjectsReceived(
      failureOrProjects,
    );
  }
}

// ignore: unused_element
const $FeaturedProjectEvent = _$FeaturedProjectEventTearOff();

mixin _$FeaturedProjectEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getAllFeaturedProjects(),
    @required
        Result projectsReceived(
            Either<ProjectFailure, KtList<Project>> failureOrProjects),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getAllFeaturedProjects(),
    Result projectsReceived(
        Either<ProjectFailure, KtList<Project>> failureOrProjects),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getAllFeaturedProjects(_GetAllFeaturedProjects value),
    @required Result projectsReceived(_ProjectsReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getAllFeaturedProjects(_GetAllFeaturedProjects value),
    Result projectsReceived(_ProjectsReceived value),
    @required Result orElse(),
  });
}

abstract class $FeaturedProjectEventCopyWith<$Res> {
  factory $FeaturedProjectEventCopyWith(FeaturedProjectEvent value,
          $Res Function(FeaturedProjectEvent) then) =
      _$FeaturedProjectEventCopyWithImpl<$Res>;
}

class _$FeaturedProjectEventCopyWithImpl<$Res>
    implements $FeaturedProjectEventCopyWith<$Res> {
  _$FeaturedProjectEventCopyWithImpl(this._value, this._then);

  final FeaturedProjectEvent _value;
  // ignore: unused_field
  final $Res Function(FeaturedProjectEvent) _then;
}

abstract class _$GetAllFeaturedProjectsCopyWith<$Res> {
  factory _$GetAllFeaturedProjectsCopyWith(_GetAllFeaturedProjects value,
          $Res Function(_GetAllFeaturedProjects) then) =
      __$GetAllFeaturedProjectsCopyWithImpl<$Res>;
}

class __$GetAllFeaturedProjectsCopyWithImpl<$Res>
    extends _$FeaturedProjectEventCopyWithImpl<$Res>
    implements _$GetAllFeaturedProjectsCopyWith<$Res> {
  __$GetAllFeaturedProjectsCopyWithImpl(_GetAllFeaturedProjects _value,
      $Res Function(_GetAllFeaturedProjects) _then)
      : super(_value, (v) => _then(v as _GetAllFeaturedProjects));

  @override
  _GetAllFeaturedProjects get _value => super._value as _GetAllFeaturedProjects;
}

class _$_GetAllFeaturedProjects
    with DiagnosticableTreeMixin
    implements _GetAllFeaturedProjects {
  const _$_GetAllFeaturedProjects();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FeaturedProjectEvent.getAllFeaturedProjects()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'FeaturedProjectEvent.getAllFeaturedProjects'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetAllFeaturedProjects);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getAllFeaturedProjects(),
    @required
        Result projectsReceived(
            Either<ProjectFailure, KtList<Project>> failureOrProjects),
  }) {
    assert(getAllFeaturedProjects != null);
    assert(projectsReceived != null);
    return getAllFeaturedProjects();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getAllFeaturedProjects(),
    Result projectsReceived(
        Either<ProjectFailure, KtList<Project>> failureOrProjects),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getAllFeaturedProjects != null) {
      return getAllFeaturedProjects();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getAllFeaturedProjects(_GetAllFeaturedProjects value),
    @required Result projectsReceived(_ProjectsReceived value),
  }) {
    assert(getAllFeaturedProjects != null);
    assert(projectsReceived != null);
    return getAllFeaturedProjects(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getAllFeaturedProjects(_GetAllFeaturedProjects value),
    Result projectsReceived(_ProjectsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getAllFeaturedProjects != null) {
      return getAllFeaturedProjects(this);
    }
    return orElse();
  }
}

abstract class _GetAllFeaturedProjects implements FeaturedProjectEvent {
  const factory _GetAllFeaturedProjects() = _$_GetAllFeaturedProjects;
}

abstract class _$ProjectsReceivedCopyWith<$Res> {
  factory _$ProjectsReceivedCopyWith(
          _ProjectsReceived value, $Res Function(_ProjectsReceived) then) =
      __$ProjectsReceivedCopyWithImpl<$Res>;
  $Res call({Either<ProjectFailure, KtList<Project>> failureOrProjects});
}

class __$ProjectsReceivedCopyWithImpl<$Res>
    extends _$FeaturedProjectEventCopyWithImpl<$Res>
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
    return 'FeaturedProjectEvent.projectsReceived(failureOrProjects: $failureOrProjects)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'FeaturedProjectEvent.projectsReceived'))
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
    @required Result getAllFeaturedProjects(),
    @required
        Result projectsReceived(
            Either<ProjectFailure, KtList<Project>> failureOrProjects),
  }) {
    assert(getAllFeaturedProjects != null);
    assert(projectsReceived != null);
    return projectsReceived(failureOrProjects);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getAllFeaturedProjects(),
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
    @required Result getAllFeaturedProjects(_GetAllFeaturedProjects value),
    @required Result projectsReceived(_ProjectsReceived value),
  }) {
    assert(getAllFeaturedProjects != null);
    assert(projectsReceived != null);
    return projectsReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getAllFeaturedProjects(_GetAllFeaturedProjects value),
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

abstract class _ProjectsReceived implements FeaturedProjectEvent {
  const factory _ProjectsReceived(
          Either<ProjectFailure, KtList<Project>> failureOrProjects) =
      _$_ProjectsReceived;

  Either<ProjectFailure, KtList<Project>> get failureOrProjects;
  _$ProjectsReceivedCopyWith<_ProjectsReceived> get copyWith;
}

class _$FeaturedProjectStateTearOff {
  const _$FeaturedProjectStateTearOff();

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
const $FeaturedProjectState = _$FeaturedProjectStateTearOff();

mixin _$FeaturedProjectState {
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

abstract class $FeaturedProjectStateCopyWith<$Res> {
  factory $FeaturedProjectStateCopyWith(FeaturedProjectState value,
          $Res Function(FeaturedProjectState) then) =
      _$FeaturedProjectStateCopyWithImpl<$Res>;
}

class _$FeaturedProjectStateCopyWithImpl<$Res>
    implements $FeaturedProjectStateCopyWith<$Res> {
  _$FeaturedProjectStateCopyWithImpl(this._value, this._then);

  final FeaturedProjectState _value;
  // ignore: unused_field
  final $Res Function(FeaturedProjectState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res>
    extends _$FeaturedProjectStateCopyWithImpl<$Res>
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
    return 'FeaturedProjectState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FeaturedProjectState.initial'));
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

abstract class Initial implements FeaturedProjectState {
  const factory Initial() = _$Initial;
}

abstract class $LoadingDataCopyWith<$Res> {
  factory $LoadingDataCopyWith(
          LoadingData value, $Res Function(LoadingData) then) =
      _$LoadingDataCopyWithImpl<$Res>;
}

class _$LoadingDataCopyWithImpl<$Res>
    extends _$FeaturedProjectStateCopyWithImpl<$Res>
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
    return 'FeaturedProjectState.loadingData()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FeaturedProjectState.loadingData'));
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

abstract class LoadingData implements FeaturedProjectState {
  const factory LoadingData() = _$LoadingData;
}

abstract class $LoadSuccessCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<Project> projects});
}

class _$LoadSuccessCopyWithImpl<$Res>
    extends _$FeaturedProjectStateCopyWithImpl<$Res>
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
    return 'FeaturedProjectState.loadSuccess(projects: $projects)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FeaturedProjectState.loadSuccess'))
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

abstract class LoadSuccess implements FeaturedProjectState {
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

class _$LoadFailureCopyWithImpl<$Res>
    extends _$FeaturedProjectStateCopyWithImpl<$Res>
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
    return 'FeaturedProjectState.loadFailure(projectFailure: $projectFailure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FeaturedProjectState.loadFailure'))
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

abstract class LoadFailure implements FeaturedProjectState {
  const factory LoadFailure(ProjectFailure projectFailure) = _$LoadFailure;

  ProjectFailure get projectFailure;
  $LoadFailureCopyWith<LoadFailure> get copyWith;
}
