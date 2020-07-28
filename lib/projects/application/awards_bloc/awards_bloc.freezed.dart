// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'awards_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AwardsEventTearOff {
  const _$AwardsEventTearOff();

  _GetAllAwards getAllAwards() {
    return const _GetAllAwards();
  }

  _PhotosReceived photosReceived(
      Either<PhotoGalleryFailure, KtList<PhotoGallery>> failureOrPhotos) {
    return _PhotosReceived(
      failureOrPhotos,
    );
  }
}

// ignore: unused_element
const $AwardsEvent = _$AwardsEventTearOff();

mixin _$AwardsEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getAllAwards(),
    @required
        Result photosReceived(
            Either<PhotoGalleryFailure, KtList<PhotoGallery>> failureOrPhotos),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getAllAwards(),
    Result photosReceived(
        Either<PhotoGalleryFailure, KtList<PhotoGallery>> failureOrPhotos),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getAllAwards(_GetAllAwards value),
    @required Result photosReceived(_PhotosReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getAllAwards(_GetAllAwards value),
    Result photosReceived(_PhotosReceived value),
    @required Result orElse(),
  });
}

abstract class $AwardsEventCopyWith<$Res> {
  factory $AwardsEventCopyWith(
          AwardsEvent value, $Res Function(AwardsEvent) then) =
      _$AwardsEventCopyWithImpl<$Res>;
}

class _$AwardsEventCopyWithImpl<$Res> implements $AwardsEventCopyWith<$Res> {
  _$AwardsEventCopyWithImpl(this._value, this._then);

  final AwardsEvent _value;
  // ignore: unused_field
  final $Res Function(AwardsEvent) _then;
}

abstract class _$GetAllAwardsCopyWith<$Res> {
  factory _$GetAllAwardsCopyWith(
          _GetAllAwards value, $Res Function(_GetAllAwards) then) =
      __$GetAllAwardsCopyWithImpl<$Res>;
}

class __$GetAllAwardsCopyWithImpl<$Res> extends _$AwardsEventCopyWithImpl<$Res>
    implements _$GetAllAwardsCopyWith<$Res> {
  __$GetAllAwardsCopyWithImpl(
      _GetAllAwards _value, $Res Function(_GetAllAwards) _then)
      : super(_value, (v) => _then(v as _GetAllAwards));

  @override
  _GetAllAwards get _value => super._value as _GetAllAwards;
}

class _$_GetAllAwards with DiagnosticableTreeMixin implements _GetAllAwards {
  const _$_GetAllAwards();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AwardsEvent.getAllAwards()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AwardsEvent.getAllAwards'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetAllAwards);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getAllAwards(),
    @required
        Result photosReceived(
            Either<PhotoGalleryFailure, KtList<PhotoGallery>> failureOrPhotos),
  }) {
    assert(getAllAwards != null);
    assert(photosReceived != null);
    return getAllAwards();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getAllAwards(),
    Result photosReceived(
        Either<PhotoGalleryFailure, KtList<PhotoGallery>> failureOrPhotos),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getAllAwards != null) {
      return getAllAwards();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getAllAwards(_GetAllAwards value),
    @required Result photosReceived(_PhotosReceived value),
  }) {
    assert(getAllAwards != null);
    assert(photosReceived != null);
    return getAllAwards(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getAllAwards(_GetAllAwards value),
    Result photosReceived(_PhotosReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getAllAwards != null) {
      return getAllAwards(this);
    }
    return orElse();
  }
}

abstract class _GetAllAwards implements AwardsEvent {
  const factory _GetAllAwards() = _$_GetAllAwards;
}

abstract class _$PhotosReceivedCopyWith<$Res> {
  factory _$PhotosReceivedCopyWith(
          _PhotosReceived value, $Res Function(_PhotosReceived) then) =
      __$PhotosReceivedCopyWithImpl<$Res>;
  $Res call(
      {Either<PhotoGalleryFailure, KtList<PhotoGallery>> failureOrPhotos});
}

class __$PhotosReceivedCopyWithImpl<$Res>
    extends _$AwardsEventCopyWithImpl<$Res>
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
    return 'AwardsEvent.photosReceived(failureOrPhotos: $failureOrPhotos)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AwardsEvent.photosReceived'))
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
    @required Result getAllAwards(),
    @required
        Result photosReceived(
            Either<PhotoGalleryFailure, KtList<PhotoGallery>> failureOrPhotos),
  }) {
    assert(getAllAwards != null);
    assert(photosReceived != null);
    return photosReceived(failureOrPhotos);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getAllAwards(),
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
    @required Result getAllAwards(_GetAllAwards value),
    @required Result photosReceived(_PhotosReceived value),
  }) {
    assert(getAllAwards != null);
    assert(photosReceived != null);
    return photosReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getAllAwards(_GetAllAwards value),
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

abstract class _PhotosReceived implements AwardsEvent {
  const factory _PhotosReceived(
          Either<PhotoGalleryFailure, KtList<PhotoGallery>> failureOrPhotos) =
      _$_PhotosReceived;

  Either<PhotoGalleryFailure, KtList<PhotoGallery>> get failureOrPhotos;
  _$PhotosReceivedCopyWith<_PhotosReceived> get copyWith;
}

class _$AwardsStateTearOff {
  const _$AwardsStateTearOff();

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
const $AwardsState = _$AwardsStateTearOff();

mixin _$AwardsState {
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

abstract class $AwardsStateCopyWith<$Res> {
  factory $AwardsStateCopyWith(
          AwardsState value, $Res Function(AwardsState) then) =
      _$AwardsStateCopyWithImpl<$Res>;
}

class _$AwardsStateCopyWithImpl<$Res> implements $AwardsStateCopyWith<$Res> {
  _$AwardsStateCopyWithImpl(this._value, this._then);

  final AwardsState _value;
  // ignore: unused_field
  final $Res Function(AwardsState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$AwardsStateCopyWithImpl<$Res>
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
    return 'AwardsState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AwardsState.initial'));
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

abstract class Initial implements AwardsState {
  const factory Initial() = _$Initial;
}

abstract class $LoadingDataCopyWith<$Res> {
  factory $LoadingDataCopyWith(
          LoadingData value, $Res Function(LoadingData) then) =
      _$LoadingDataCopyWithImpl<$Res>;
}

class _$LoadingDataCopyWithImpl<$Res> extends _$AwardsStateCopyWithImpl<$Res>
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
    return 'AwardsState.loadingData()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AwardsState.loadingData'));
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

abstract class LoadingData implements AwardsState {
  const factory LoadingData() = _$LoadingData;
}

abstract class $LoadSuccessCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<PhotoGallery> photos});
}

class _$LoadSuccessCopyWithImpl<$Res> extends _$AwardsStateCopyWithImpl<$Res>
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
    return 'AwardsState.loadSuccess(photos: $photos)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AwardsState.loadSuccess'))
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

abstract class LoadSuccess implements AwardsState {
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

class _$LoadFailureCopyWithImpl<$Res> extends _$AwardsStateCopyWithImpl<$Res>
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
    return 'AwardsState.loadFailure(photoGalleryFailure: $photoGalleryFailure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AwardsState.loadFailure'))
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

abstract class LoadFailure implements AwardsState {
  const factory LoadFailure(PhotoGalleryFailure photoGalleryFailure) =
      _$LoadFailure;

  PhotoGalleryFailure get photoGalleryFailure;
  $LoadFailureCopyWith<LoadFailure> get copyWith;
}
