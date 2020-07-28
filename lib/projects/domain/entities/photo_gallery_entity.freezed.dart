// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'photo_gallery_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$PhotoGalleryTearOff {
  const _$PhotoGalleryTearOff();

  _PhotoGallery call(
      {String id,
      String title,
      String description,
      String imageUrl,
      String hash}) {
    return _PhotoGallery(
      id: id,
      title: title,
      description: description,
      imageUrl: imageUrl,
      hash: hash,
    );
  }
}

// ignore: unused_element
const $PhotoGallery = _$PhotoGalleryTearOff();

mixin _$PhotoGallery {
  String get id;
  String get title;
  String get description;
  String get imageUrl;
  String get hash;

  $PhotoGalleryCopyWith<PhotoGallery> get copyWith;
}

abstract class $PhotoGalleryCopyWith<$Res> {
  factory $PhotoGalleryCopyWith(
          PhotoGallery value, $Res Function(PhotoGallery) then) =
      _$PhotoGalleryCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      String description,
      String imageUrl,
      String hash});
}

class _$PhotoGalleryCopyWithImpl<$Res> implements $PhotoGalleryCopyWith<$Res> {
  _$PhotoGalleryCopyWithImpl(this._value, this._then);

  final PhotoGallery _value;
  // ignore: unused_field
  final $Res Function(PhotoGallery) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object description = freezed,
    Object imageUrl = freezed,
    Object hash = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
      hash: hash == freezed ? _value.hash : hash as String,
    ));
  }
}

abstract class _$PhotoGalleryCopyWith<$Res>
    implements $PhotoGalleryCopyWith<$Res> {
  factory _$PhotoGalleryCopyWith(
          _PhotoGallery value, $Res Function(_PhotoGallery) then) =
      __$PhotoGalleryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      String description,
      String imageUrl,
      String hash});
}

class __$PhotoGalleryCopyWithImpl<$Res> extends _$PhotoGalleryCopyWithImpl<$Res>
    implements _$PhotoGalleryCopyWith<$Res> {
  __$PhotoGalleryCopyWithImpl(
      _PhotoGallery _value, $Res Function(_PhotoGallery) _then)
      : super(_value, (v) => _then(v as _PhotoGallery));

  @override
  _PhotoGallery get _value => super._value as _PhotoGallery;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object description = freezed,
    Object imageUrl = freezed,
    Object hash = freezed,
  }) {
    return _then(_PhotoGallery(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
      hash: hash == freezed ? _value.hash : hash as String,
    ));
  }
}

class _$_PhotoGallery implements _PhotoGallery {
  const _$_PhotoGallery(
      {this.id, this.title, this.description, this.imageUrl, this.hash});

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String imageUrl;
  @override
  final String hash;

  @override
  String toString() {
    return 'PhotoGallery(id: $id, title: $title, description: $description, imageUrl: $imageUrl, hash: $hash)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PhotoGallery &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.hash, hash) ||
                const DeepCollectionEquality().equals(other.hash, hash)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(hash);

  @override
  _$PhotoGalleryCopyWith<_PhotoGallery> get copyWith =>
      __$PhotoGalleryCopyWithImpl<_PhotoGallery>(this, _$identity);
}

abstract class _PhotoGallery implements PhotoGallery {
  const factory _PhotoGallery(
      {String id,
      String title,
      String description,
      String imageUrl,
      String hash}) = _$_PhotoGallery;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get imageUrl;
  @override
  String get hash;
  @override
  _$PhotoGalleryCopyWith<_PhotoGallery> get copyWith;
}
