// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'photo_gallery_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$PhotoGalleryEventTearOff {
  const _$PhotoGalleryEventTearOff();

  _GetAllPhotos getAllPhotos() {
    return const _GetAllPhotos();
  }

  _PhotosReceived photosReceived(
      Either<PhotoGalleryFailure, KtList<PhotoGallery>> failureOrPhotos) {
    return _PhotosReceived(
      failureOrPhotos,
    );
  }
}

// ignore: unused_element
const $PhotoGalleryEvent = _$PhotoGalleryEventTearOff();

mixin _$PhotoGalleryEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getAllPhotos(),
    @required
        Result photosReceived(
            Either<PhotoGalleryFailure, KtList<PhotoGallery>> failureOrPhotos),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getAllPhotos(),
    Result photosReceived(
        Either<PhotoGalleryFailure, KtList<PhotoGallery>> failureOrPhotos),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getAllPhotos(_GetAllPhotos value),
    @required Result photosReceived(_PhotosReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getAllPhotos(_GetAllPhotos value),
    Result photosReceived(_PhotosReceived value),
    @required Result orElse(),
  });
}

abstract class $PhotoGalleryEventCopyWith<$Res> {
  factory $PhotoGalleryEventCopyWith(
          PhotoGalleryEvent value, $Res Function(PhotoGalleryEvent) then) =
      _$PhotoGalleryEventCopyWithImpl<$Res>;
}

class _$PhotoGalleryEventCopyWithImpl<$Res>
    implements $PhotoGalleryEventCopyWith<$Res> {
  _$PhotoGalleryEventCopyWithImpl(this._value, this._then);

  final PhotoGalleryEvent _value;
  // ignore: unused_field
  final $Res Function(PhotoGalleryEvent) _then;
}

abstract class _$GetAllPhotosCopyWith<$Res> {
  factory _$GetAllPhotosCopyWith(
          _GetAllPhotos value, $Res Function(_GetAllPhotos) then) =
      __$GetAllPhotosCopyWithImpl<$Res>;
}

class __$GetAllPhotosCopyWithImpl<$Res>
    extends _$PhotoGalleryEventCopyWithImpl<$Res>
    implements _$GetAllPhotosCopyWith<$Res> {
  __$GetAllPhotosCopyWithImpl(
      _GetAllPhotos _value, $Res Function(_GetAllPhotos) _then)
      : super(_value, (v) => _then(v as _GetAllPhotos));

  @override
  _GetAllPhotos get _value => super._value as _GetAllPhotos;
}

class _$_GetAllPhotos with DiagnosticableTreeMixin implements _GetAllPhotos {
  const _$_GetAllPhotos();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PhotoGalleryEvent.getAllPhotos()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PhotoGalleryEvent.getAllPhotos'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetAllPhotos);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getAllPhotos(),
    @required
        Result photosReceived(
            Either<PhotoGalleryFailure, KtList<PhotoGallery>> failureOrPhotos),
  }) {
    assert(getAllPhotos != null);
    assert(photosReceived != null);
    return getAllPhotos();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getAllPhotos(),
    Result photosReceived(
        Either<PhotoGalleryFailure, KtList<PhotoGallery>> failureOrPhotos),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getAllPhotos != null) {
      return getAllPhotos();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getAllPhotos(_GetAllPhotos value),
    @required Result photosReceived(_PhotosReceived value),
  }) {
    assert(getAllPhotos != null);
    assert(photosReceived != null);
    return getAllPhotos(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getAllPhotos(_GetAllPhotos value),
    Result photosReceived(_PhotosReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getAllPhotos != null) {
      return getAllPhotos(this);
    }
    return orElse();
  }
}

abstract class _GetAllPhotos implements PhotoGalleryEvent {
  const factory _GetAllPhotos() = _$_GetAllPhotos;
}

abstract class _$PhotosReceivedCopyWith<$Res> {
  factory _$PhotosReceivedCopyWith(
          _PhotosReceived value, $Res Function(_PhotosReceived) then) =
      __$PhotosReceivedCopyWithImpl<$Res>;
  $Res call(
      {Either<PhotoGalleryFailure, KtList<PhotoGallery>> failureOrPhotos});
}

class __$PhotosReceivedCopyWithImpl<$Res>
    extends _$PhotoGalleryEventCopyWithImpl<$Res>
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
    return 'PhotoGalleryEvent.photosReceived(failureOrPhotos: $failureOrPhotos)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PhotoGalleryEvent.photosReceived'))
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
    @required Result getAllPhotos(),
    @required
        Result photosReceived(
            Either<PhotoGalleryFailure, KtList<PhotoGallery>> failureOrPhotos),
  }) {
    assert(getAllPhotos != null);
    assert(photosReceived != null);
    return photosReceived(failureOrPhotos);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getAllPhotos(),
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
    @required Result getAllPhotos(_GetAllPhotos value),
    @required Result photosReceived(_PhotosReceived value),
  }) {
    assert(getAllPhotos != null);
    assert(photosReceived != null);
    return photosReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getAllPhotos(_GetAllPhotos value),
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

abstract class _PhotosReceived implements PhotoGalleryEvent {
  const factory _PhotosReceived(
          Either<PhotoGalleryFailure, KtList<PhotoGallery>> failureOrPhotos) =
      _$_PhotosReceived;

  Either<PhotoGalleryFailure, KtList<PhotoGallery>> get failureOrPhotos;
  _$PhotosReceivedCopyWith<_PhotosReceived> get copyWith;
}

class _$PhotoGalleryStateTearOff {
  const _$PhotoGalleryStateTearOff();

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
const $PhotoGalleryState = _$PhotoGalleryStateTearOff();

mixin _$PhotoGalleryState {
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

abstract class $PhotoGalleryStateCopyWith<$Res> {
  factory $PhotoGalleryStateCopyWith(
          PhotoGalleryState value, $Res Function(PhotoGalleryState) then) =
      _$PhotoGalleryStateCopyWithImpl<$Res>;
}

class _$PhotoGalleryStateCopyWithImpl<$Res>
    implements $PhotoGalleryStateCopyWith<$Res> {
  _$PhotoGalleryStateCopyWithImpl(this._value, this._then);

  final PhotoGalleryState _value;
  // ignore: unused_field
  final $Res Function(PhotoGalleryState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$PhotoGalleryStateCopyWithImpl<$Res>
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
    return 'PhotoGalleryState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'PhotoGalleryState.initial'));
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

abstract class Initial implements PhotoGalleryState {
  const factory Initial() = _$Initial;
}

abstract class $LoadingDataCopyWith<$Res> {
  factory $LoadingDataCopyWith(
          LoadingData value, $Res Function(LoadingData) then) =
      _$LoadingDataCopyWithImpl<$Res>;
}

class _$LoadingDataCopyWithImpl<$Res>
    extends _$PhotoGalleryStateCopyWithImpl<$Res>
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
    return 'PhotoGalleryState.loadingData()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PhotoGalleryState.loadingData'));
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

abstract class LoadingData implements PhotoGalleryState {
  const factory LoadingData() = _$LoadingData;
}

abstract class $LoadSuccessCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<PhotoGallery> photos});
}

class _$LoadSuccessCopyWithImpl<$Res>
    extends _$PhotoGalleryStateCopyWithImpl<$Res>
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
    return 'PhotoGalleryState.loadSuccess(photos: $photos)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PhotoGalleryState.loadSuccess'))
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

abstract class LoadSuccess implements PhotoGalleryState {
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

class _$LoadFailureCopyWithImpl<$Res>
    extends _$PhotoGalleryStateCopyWithImpl<$Res>
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
    return 'PhotoGalleryState.loadFailure(photoGalleryFailure: $photoGalleryFailure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PhotoGalleryState.loadFailure'))
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

abstract class LoadFailure implements PhotoGalleryState {
  const factory LoadFailure(PhotoGalleryFailure photoGalleryFailure) =
      _$LoadFailure;

  PhotoGalleryFailure get photoGalleryFailure;
  $LoadFailureCopyWith<LoadFailure> get copyWith;
}
