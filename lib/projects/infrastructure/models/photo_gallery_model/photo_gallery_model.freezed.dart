// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'photo_gallery_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PhotoGalleryModel _$PhotoGalleryModelFromJson(Map<String, dynamic> json) {
  return _PhotoGalleryModel.fromJson(json);
}

class _$PhotoGalleryModelTearOff {
  const _$PhotoGalleryModelTearOff();

  _PhotoGalleryModel call(
      {@JsonKey(ignore: true) String id,
      String title,
      String description,
      String imageUrl,
      String hash}) {
    return _PhotoGalleryModel(
      id: id,
      title: title,
      description: description,
      imageUrl: imageUrl,
      hash: hash,
    );
  }
}

// ignore: unused_element
const $PhotoGalleryModel = _$PhotoGalleryModelTearOff();

mixin _$PhotoGalleryModel {
  @JsonKey(ignore: true)
  String get id;
  String get title;
  String get description;
  String get imageUrl;
  String get hash;

  Map<String, dynamic> toJson();
  $PhotoGalleryModelCopyWith<PhotoGalleryModel> get copyWith;
}

abstract class $PhotoGalleryModelCopyWith<$Res> {
  factory $PhotoGalleryModelCopyWith(
          PhotoGalleryModel value, $Res Function(PhotoGalleryModel) then) =
      _$PhotoGalleryModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      String title,
      String description,
      String imageUrl,
      String hash});
}

class _$PhotoGalleryModelCopyWithImpl<$Res>
    implements $PhotoGalleryModelCopyWith<$Res> {
  _$PhotoGalleryModelCopyWithImpl(this._value, this._then);

  final PhotoGalleryModel _value;
  // ignore: unused_field
  final $Res Function(PhotoGalleryModel) _then;

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

abstract class _$PhotoGalleryModelCopyWith<$Res>
    implements $PhotoGalleryModelCopyWith<$Res> {
  factory _$PhotoGalleryModelCopyWith(
          _PhotoGalleryModel value, $Res Function(_PhotoGalleryModel) then) =
      __$PhotoGalleryModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      String title,
      String description,
      String imageUrl,
      String hash});
}

class __$PhotoGalleryModelCopyWithImpl<$Res>
    extends _$PhotoGalleryModelCopyWithImpl<$Res>
    implements _$PhotoGalleryModelCopyWith<$Res> {
  __$PhotoGalleryModelCopyWithImpl(
      _PhotoGalleryModel _value, $Res Function(_PhotoGalleryModel) _then)
      : super(_value, (v) => _then(v as _PhotoGalleryModel));

  @override
  _PhotoGalleryModel get _value => super._value as _PhotoGalleryModel;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object description = freezed,
    Object imageUrl = freezed,
    Object hash = freezed,
  }) {
    return _then(_PhotoGalleryModel(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
      hash: hash == freezed ? _value.hash : hash as String,
    ));
  }
}

@JsonSerializable()
class _$_PhotoGalleryModel implements _PhotoGalleryModel {
  _$_PhotoGalleryModel(
      {@JsonKey(ignore: true) this.id,
      this.title,
      this.description,
      this.imageUrl,
      this.hash});

  factory _$_PhotoGalleryModel.fromJson(Map<String, dynamic> json) =>
      _$_$_PhotoGalleryModelFromJson(json);

  @override
  @JsonKey(ignore: true)
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
    return 'PhotoGalleryModel(id: $id, title: $title, description: $description, imageUrl: $imageUrl, hash: $hash)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PhotoGalleryModel &&
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
  _$PhotoGalleryModelCopyWith<_PhotoGalleryModel> get copyWith =>
      __$PhotoGalleryModelCopyWithImpl<_PhotoGalleryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PhotoGalleryModelToJson(this);
  }
}

abstract class _PhotoGalleryModel implements PhotoGalleryModel {
  factory _PhotoGalleryModel(
      {@JsonKey(ignore: true) String id,
      String title,
      String description,
      String imageUrl,
      String hash}) = _$_PhotoGalleryModel;

  factory _PhotoGalleryModel.fromJson(Map<String, dynamic> json) =
      _$_PhotoGalleryModel.fromJson;

  @override
  @JsonKey(ignore: true)
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
  _$PhotoGalleryModelCopyWith<_PhotoGalleryModel> get copyWith;
}
