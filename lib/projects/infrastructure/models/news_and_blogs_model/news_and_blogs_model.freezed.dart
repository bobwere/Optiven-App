// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'news_and_blogs_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
NewsAndBlogsModel _$NewsAndBlogsModelFromJson(Map<String, dynamic> json) {
  return _NewsAndBlogsModel.fromJson(json);
}

class _$NewsAndBlogsModelTearOff {
  const _$NewsAndBlogsModelTearOff();

  _NewsAndBlogsModel call(
      {@JsonKey(ignore: true) String id,
      String title,
      String date,
      String description,
      String imageUrl,
      String hash}) {
    return _NewsAndBlogsModel(
      id: id,
      title: title,
      date: date,
      description: description,
      imageUrl: imageUrl,
      hash: hash,
    );
  }
}

// ignore: unused_element
const $NewsAndBlogsModel = _$NewsAndBlogsModelTearOff();

mixin _$NewsAndBlogsModel {
  @JsonKey(ignore: true)
  String get id;
  String get title;
  String get date;
  String get description;
  String get imageUrl;
  String get hash;

  Map<String, dynamic> toJson();
  $NewsAndBlogsModelCopyWith<NewsAndBlogsModel> get copyWith;
}

abstract class $NewsAndBlogsModelCopyWith<$Res> {
  factory $NewsAndBlogsModelCopyWith(
          NewsAndBlogsModel value, $Res Function(NewsAndBlogsModel) then) =
      _$NewsAndBlogsModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      String title,
      String date,
      String description,
      String imageUrl,
      String hash});
}

class _$NewsAndBlogsModelCopyWithImpl<$Res>
    implements $NewsAndBlogsModelCopyWith<$Res> {
  _$NewsAndBlogsModelCopyWithImpl(this._value, this._then);

  final NewsAndBlogsModel _value;
  // ignore: unused_field
  final $Res Function(NewsAndBlogsModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object date = freezed,
    Object description = freezed,
    Object imageUrl = freezed,
    Object hash = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      date: date == freezed ? _value.date : date as String,
      description:
          description == freezed ? _value.description : description as String,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
      hash: hash == freezed ? _value.hash : hash as String,
    ));
  }
}

abstract class _$NewsAndBlogsModelCopyWith<$Res>
    implements $NewsAndBlogsModelCopyWith<$Res> {
  factory _$NewsAndBlogsModelCopyWith(
          _NewsAndBlogsModel value, $Res Function(_NewsAndBlogsModel) then) =
      __$NewsAndBlogsModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      String title,
      String date,
      String description,
      String imageUrl,
      String hash});
}

class __$NewsAndBlogsModelCopyWithImpl<$Res>
    extends _$NewsAndBlogsModelCopyWithImpl<$Res>
    implements _$NewsAndBlogsModelCopyWith<$Res> {
  __$NewsAndBlogsModelCopyWithImpl(
      _NewsAndBlogsModel _value, $Res Function(_NewsAndBlogsModel) _then)
      : super(_value, (v) => _then(v as _NewsAndBlogsModel));

  @override
  _NewsAndBlogsModel get _value => super._value as _NewsAndBlogsModel;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object date = freezed,
    Object description = freezed,
    Object imageUrl = freezed,
    Object hash = freezed,
  }) {
    return _then(_NewsAndBlogsModel(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      date: date == freezed ? _value.date : date as String,
      description:
          description == freezed ? _value.description : description as String,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
      hash: hash == freezed ? _value.hash : hash as String,
    ));
  }
}

@JsonSerializable()
class _$_NewsAndBlogsModel implements _NewsAndBlogsModel {
  _$_NewsAndBlogsModel(
      {@JsonKey(ignore: true) this.id,
      this.title,
      this.date,
      this.description,
      this.imageUrl,
      this.hash});

  factory _$_NewsAndBlogsModel.fromJson(Map<String, dynamic> json) =>
      _$_$_NewsAndBlogsModelFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String title;
  @override
  final String date;
  @override
  final String description;
  @override
  final String imageUrl;
  @override
  final String hash;

  @override
  String toString() {
    return 'NewsAndBlogsModel(id: $id, title: $title, date: $date, description: $description, imageUrl: $imageUrl, hash: $hash)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewsAndBlogsModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
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
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(hash);

  @override
  _$NewsAndBlogsModelCopyWith<_NewsAndBlogsModel> get copyWith =>
      __$NewsAndBlogsModelCopyWithImpl<_NewsAndBlogsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NewsAndBlogsModelToJson(this);
  }
}

abstract class _NewsAndBlogsModel implements NewsAndBlogsModel {
  factory _NewsAndBlogsModel(
      {@JsonKey(ignore: true) String id,
      String title,
      String date,
      String description,
      String imageUrl,
      String hash}) = _$_NewsAndBlogsModel;

  factory _NewsAndBlogsModel.fromJson(Map<String, dynamic> json) =
      _$_NewsAndBlogsModel.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get title;
  @override
  String get date;
  @override
  String get description;
  @override
  String get imageUrl;
  @override
  String get hash;
  @override
  _$NewsAndBlogsModelCopyWith<_NewsAndBlogsModel> get copyWith;
}
