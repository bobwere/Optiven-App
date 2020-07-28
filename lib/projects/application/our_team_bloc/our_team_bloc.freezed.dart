// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'our_team_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$OurTeamEventTearOff {
  const _$OurTeamEventTearOff();

  _GetOurTeam getOurTeam() {
    return const _GetOurTeam();
  }

  _PhotosReceived photosReceived(
      Either<PhotoGalleryFailure, KtList<PhotoGallery>> failureOrPhotos) {
    return _PhotosReceived(
      failureOrPhotos,
    );
  }
}

// ignore: unused_element
const $OurTeamEvent = _$OurTeamEventTearOff();

mixin _$OurTeamEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getOurTeam(),
    @required
        Result photosReceived(
            Either<PhotoGalleryFailure, KtList<PhotoGallery>> failureOrPhotos),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getOurTeam(),
    Result photosReceived(
        Either<PhotoGalleryFailure, KtList<PhotoGallery>> failureOrPhotos),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getOurTeam(_GetOurTeam value),
    @required Result photosReceived(_PhotosReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getOurTeam(_GetOurTeam value),
    Result photosReceived(_PhotosReceived value),
    @required Result orElse(),
  });
}

abstract class $OurTeamEventCopyWith<$Res> {
  factory $OurTeamEventCopyWith(
          OurTeamEvent value, $Res Function(OurTeamEvent) then) =
      _$OurTeamEventCopyWithImpl<$Res>;
}

class _$OurTeamEventCopyWithImpl<$Res> implements $OurTeamEventCopyWith<$Res> {
  _$OurTeamEventCopyWithImpl(this._value, this._then);

  final OurTeamEvent _value;
  // ignore: unused_field
  final $Res Function(OurTeamEvent) _then;
}

abstract class _$GetOurTeamCopyWith<$Res> {
  factory _$GetOurTeamCopyWith(
          _GetOurTeam value, $Res Function(_GetOurTeam) then) =
      __$GetOurTeamCopyWithImpl<$Res>;
}

class __$GetOurTeamCopyWithImpl<$Res> extends _$OurTeamEventCopyWithImpl<$Res>
    implements _$GetOurTeamCopyWith<$Res> {
  __$GetOurTeamCopyWithImpl(
      _GetOurTeam _value, $Res Function(_GetOurTeam) _then)
      : super(_value, (v) => _then(v as _GetOurTeam));

  @override
  _GetOurTeam get _value => super._value as _GetOurTeam;
}

class _$_GetOurTeam with DiagnosticableTreeMixin implements _GetOurTeam {
  const _$_GetOurTeam();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OurTeamEvent.getOurTeam()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'OurTeamEvent.getOurTeam'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetOurTeam);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getOurTeam(),
    @required
        Result photosReceived(
            Either<PhotoGalleryFailure, KtList<PhotoGallery>> failureOrPhotos),
  }) {
    assert(getOurTeam != null);
    assert(photosReceived != null);
    return getOurTeam();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getOurTeam(),
    Result photosReceived(
        Either<PhotoGalleryFailure, KtList<PhotoGallery>> failureOrPhotos),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getOurTeam != null) {
      return getOurTeam();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getOurTeam(_GetOurTeam value),
    @required Result photosReceived(_PhotosReceived value),
  }) {
    assert(getOurTeam != null);
    assert(photosReceived != null);
    return getOurTeam(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getOurTeam(_GetOurTeam value),
    Result photosReceived(_PhotosReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getOurTeam != null) {
      return getOurTeam(this);
    }
    return orElse();
  }
}

abstract class _GetOurTeam implements OurTeamEvent {
  const factory _GetOurTeam() = _$_GetOurTeam;
}

abstract class _$PhotosReceivedCopyWith<$Res> {
  factory _$PhotosReceivedCopyWith(
          _PhotosReceived value, $Res Function(_PhotosReceived) then) =
      __$PhotosReceivedCopyWithImpl<$Res>;
  $Res call(
      {Either<PhotoGalleryFailure, KtList<PhotoGallery>> failureOrPhotos});
}

class __$PhotosReceivedCopyWithImpl<$Res>
    extends _$OurTeamEventCopyWithImpl<$Res>
    implements _$PhotosReceivedCopyWith<$Res> {
  __$PhotosReceivedCopyWithImpl(
      _PhotosReceived _value, $Res Function(_PhotosReceived) _then)
      : super(_value, (v) => _then(v as _PhotosReceived));

  @override
  _PhotosReceived get _value => super._value as _PhotosReceived;

  @override
  $Res call({
    Object failureOrPhotos = freezed,
  }) {
    return _then(_PhotosReceived(
      failureOrPhotos == freezed
          ? _value.failureOrPhotos
          : failureOrPhotos
              as Either<PhotoGalleryFailure, KtList<PhotoGallery>>,
    ));
  }
}

class _$_PhotosReceived
    with DiagnosticableTreeMixin
    implements _PhotosReceived {
  const _$_PhotosReceived(this.failureOrPhotos)
      : assert(failureOrPhotos != null);

  @override
  final Either<PhotoGalleryFailure, KtList<PhotoGallery>> failureOrPhotos;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OurTeamEvent.photosReceived(failureOrPhotos: $failureOrPhotos)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OurTeamEvent.photosReceived'))
      ..add(DiagnosticsProperty('failureOrPhotos', failureOrPhotos));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PhotosReceived &&
            (identical(other.failureOrPhotos, failureOrPhotos) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrPhotos, failureOrPhotos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrPhotos);

  @override
  _$PhotosReceivedCopyWith<_PhotosReceived> get copyWith =>
      __$PhotosReceivedCopyWithImpl<_PhotosReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getOurTeam(),
    @required
        Result photosReceived(
            Either<PhotoGalleryFailure, KtList<PhotoGallery>> failureOrPhotos),
  }) {
    assert(getOurTeam != null);
    assert(photosReceived != null);
    return photosReceived(failureOrPhotos);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getOurTeam(),
    Result photosReceived(
        Either<PhotoGalleryFailure, KtList<PhotoGallery>> failureOrPhotos),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (photosReceived != null) {
      return photosReceived(failureOrPhotos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getOurTeam(_GetOurTeam value),
    @required Result photosReceived(_PhotosReceived value),
  }) {
    assert(getOurTeam != null);
    assert(photosReceived != null);
    return photosReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getOurTeam(_GetOurTeam value),
    Result photosReceived(_PhotosReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (photosReceived != null) {
      return photosReceived(this);
    }
    return orElse();
  }
}

abstract class _PhotosReceived implements OurTeamEvent {
  const factory _PhotosReceived(
          Either<PhotoGalleryFailure, KtList<PhotoGallery>> failureOrPhotos) =
      _$_PhotosReceived;

  Either<PhotoGalleryFailure, KtList<PhotoGallery>> get failureOrPhotos;
  _$PhotosReceivedCopyWith<_PhotosReceived> get copyWith;
}

class _$OurTeamStateTearOff {
  const _$OurTeamStateTearOff();

  Initial initial() {
    return const Initial();
  }

  LoadingData loadingData() {
    return const LoadingData();
  }

  LoadSuccess loadSuccess(KtList<PhotoGallery> photos) {
    return LoadSuccess(
      photos,
    );
  }

  LoadFailure loadFailure(PhotoGalleryFailure photoGalleryFailure) {
    return LoadFailure(
      photoGalleryFailure,
    );
  }
}

// ignore: unused_element
const $OurTeamState = _$OurTeamStateTearOff();

mixin _$OurTeamState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadingData(),
    @required Result loadSuccess(KtList<PhotoGallery> photos),
    @required Result loadFailure(PhotoGalleryFailure photoGalleryFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadingData(),
    Result loadSuccess(KtList<PhotoGallery> photos),
    Result loadFailure(PhotoGalleryFailure photoGalleryFailure),
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

abstract class $OurTeamStateCopyWith<$Res> {
  factory $OurTeamStateCopyWith(
          OurTeamState value, $Res Function(OurTeamState) then) =
      _$OurTeamStateCopyWithImpl<$Res>;
}

class _$OurTeamStateCopyWithImpl<$Res> implements $OurTeamStateCopyWith<$Res> {
  _$OurTeamStateCopyWithImpl(this._value, this._then);

  final OurTeamState _value;
  // ignore: unused_field
  final $Res Function(OurTeamState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$OurTeamStateCopyWithImpl<$Res>
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
    return 'OurTeamState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'OurTeamState.initial'));
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
    @required Result loadSuccess(KtList<PhotoGallery> photos),
    @required Result loadFailure(PhotoGalleryFailure photoGalleryFailure),
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
    Result loadSuccess(KtList<PhotoGallery> photos),
    Result loadFailure(PhotoGalleryFailure photoGalleryFailure),
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

abstract class Initial implements OurTeamState {
  const factory Initial() = _$Initial;
}

abstract class $LoadingDataCopyWith<$Res> {
  factory $LoadingDataCopyWith(
          LoadingData value, $Res Function(LoadingData) then) =
      _$LoadingDataCopyWithImpl<$Res>;
}

class _$LoadingDataCopyWithImpl<$Res> extends _$OurTeamStateCopyWithImpl<$Res>
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
    return 'OurTeamState.loadingData()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'OurTeamState.loadingData'));
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
    @required Result loadSuccess(KtList<PhotoGallery> photos),
    @required Result loadFailure(PhotoGalleryFailure photoGalleryFailure),
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
    Result loadSuccess(KtList<PhotoGallery> photos),
    Result loadFailure(PhotoGalleryFailure photoGalleryFailure),
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

abstract class LoadingData implements OurTeamState {
  const factory LoadingData() = _$LoadingData;
}

abstract class $LoadSuccessCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<PhotoGallery> photos});
}

class _$LoadSuccessCopyWithImpl<$Res> extends _$OurTeamStateCopyWithImpl<$Res>
    implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(
      LoadSuccess _value, $Res Function(LoadSuccess) _then)
      : super(_value, (v) => _then(v as LoadSuccess));

  @override
  LoadSuccess get _value => super._value as LoadSuccess;

  @override
  $Res call({
    Object photos = freezed,
  }) {
    return _then(LoadSuccess(
      photos == freezed ? _value.photos : photos as KtList<PhotoGallery>,
    ));
  }
}

class _$LoadSuccess with DiagnosticableTreeMixin implements LoadSuccess {
  const _$LoadSuccess(this.photos) : assert(photos != null);

  @override
  final KtList<PhotoGallery> photos;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OurTeamState.loadSuccess(photos: $photos)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OurTeamState.loadSuccess'))
      ..add(DiagnosticsProperty('photos', photos));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSuccess &&
            (identical(other.photos, photos) ||
                const DeepCollectionEquality().equals(other.photos, photos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(photos);

  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadingData(),
    @required Result loadSuccess(KtList<PhotoGallery> photos),
    @required Result loadFailure(PhotoGalleryFailure photoGalleryFailure),
  }) {
    assert(initial != null);
    assert(loadingData != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(photos);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadingData(),
    Result loadSuccess(KtList<PhotoGallery> photos),
    Result loadFailure(PhotoGalleryFailure photoGalleryFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(photos);
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

abstract class LoadSuccess implements OurTeamState {
  const factory LoadSuccess(KtList<PhotoGallery> photos) = _$LoadSuccess;

  KtList<PhotoGallery> get photos;
  $LoadSuccessCopyWith<LoadSuccess> get copyWith;
}

abstract class $LoadFailureCopyWith<$Res> {
  factory $LoadFailureCopyWith(
          LoadFailure value, $Res Function(LoadFailure) then) =
      _$LoadFailureCopyWithImpl<$Res>;
  $Res call({PhotoGalleryFailure photoGalleryFailure});

  $PhotoGalleryFailureCopyWith<$Res> get photoGalleryFailure;
}

class _$LoadFailureCopyWithImpl<$Res> extends _$OurTeamStateCopyWithImpl<$Res>
    implements $LoadFailureCopyWith<$Res> {
  _$LoadFailureCopyWithImpl(
      LoadFailure _value, $Res Function(LoadFailure) _then)
      : super(_value, (v) => _then(v as LoadFailure));

  @override
  LoadFailure get _value => super._value as LoadFailure;

  @override
  $Res call({
    Object photoGalleryFailure = freezed,
  }) {
    return _then(LoadFailure(
      photoGalleryFailure == freezed
          ? _value.photoGalleryFailure
          : photoGalleryFailure as PhotoGalleryFailure,
    ));
  }

  @override
  $PhotoGalleryFailureCopyWith<$Res> get photoGalleryFailure {
    if (_value.photoGalleryFailure == null) {
      return null;
    }
    return $PhotoGalleryFailureCopyWith<$Res>(_value.photoGalleryFailure,
        (value) {
      return _then(_value.copyWith(photoGalleryFailure: value));
    });
  }
}

class _$LoadFailure with DiagnosticableTreeMixin implements LoadFailure {
  const _$LoadFailure(this.photoGalleryFailure)
      : assert(photoGalleryFailure != null);

  @override
  final PhotoGalleryFailure photoGalleryFailure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OurTeamState.loadFailure(photoGalleryFailure: $photoGalleryFailure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OurTeamState.loadFailure'))
      ..add(DiagnosticsProperty('photoGalleryFailure', photoGalleryFailure));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadFailure &&
            (identical(other.photoGalleryFailure, photoGalleryFailure) ||
                const DeepCollectionEquality()
                    .equals(other.photoGalleryFailure, photoGalleryFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(photoGalleryFailure);

  @override
  $LoadFailureCopyWith<LoadFailure> get copyWith =>
      _$LoadFailureCopyWithImpl<LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadingData(),
    @required Result loadSuccess(KtList<PhotoGallery> photos),
    @required Result loadFailure(PhotoGalleryFailure photoGalleryFailure),
  }) {
    assert(initial != null);
    assert(loadingData != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(photoGalleryFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadingData(),
    Result loadSuccess(KtList<PhotoGallery> photos),
    Result loadFailure(PhotoGalleryFailure photoGalleryFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(photoGalleryFailure);
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

abstract class LoadFailure implements OurTeamState {
  const factory LoadFailure(PhotoGalleryFailure photoGalleryFailure) =
      _$LoadFailure;

  PhotoGalleryFailure get photoGalleryFailure;
  $LoadFailureCopyWith<LoadFailure> get copyWith;
}
