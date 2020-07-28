// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'news_and_blogs_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$NewsAndBlogsTearOff {
  const _$NewsAndBlogsTearOff();

  _NewsAndBlogs call(
      {String id,
      String title,
      String date,
      String description,
      String hash,
      String imageUrl}) {
    return _NewsAndBlogs(
      id: id,
      title: title,
      date: date,
      description: description,
      hash: hash,
      imageUrl: imageUrl,
    );
  }
}

// ignore: unused_element
const $NewsAndBlogs = _$NewsAndBlogsTearOff();

mixin _$NewsAndBlogs {
  String get id;
  String get title;
  String get date;
  String get description;
  String get hash;
  String get imageUrl;

  $NewsAndBlogsCopyWith<NewsAndBlogs> get copyWith;
}

abstract class $NewsAndBlogsCopyWith<$Res> {
  factory $NewsAndBlogsCopyWith(
          NewsAndBlogs value, $Res Function(NewsAndBlogs) then) =
      _$NewsAndBlogsCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      String date,
      String description,
      String hash,
      String imageUrl});
}

class _$NewsAndBlogsCopyWithImpl<$Res> implements $NewsAndBlogsCopyWith<$Res> {
  _$NewsAndBlogsCopyWithImpl(this._value, this._then);

  final NewsAndBlogs _value;
  // ignore: unused_field
  final $Res Function(NewsAndBlogs) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object date = freezed,
    Object description = freezed,
    Object hash = freezed,
    Object imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      date: date == freezed ? _value.date : date as String,
      description:
          description == freezed ? _value.description : description as String,
      hash: hash == freezed ? _value.hash : hash as String,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
    ));
  }
}

abstract class _$NewsAndBlogsCopyWith<$Res>
    implements $NewsAndBlogsCopyWith<$Res> {
  factory _$NewsAndBlogsCopyWith(
          _NewsAndBlogs value, $Res Function(_NewsAndBlogs) then) =
      __$NewsAndBlogsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      String date,
      String description,
      String hash,
      String imageUrl});
}

class __$NewsAndBlogsCopyWithImpl<$Res> extends _$NewsAndBlogsCopyWithImpl<$Res>
    implements _$NewsAndBlogsCopyWith<$Res> {
  __$NewsAndBlogsCopyWithImpl(
      _NewsAndBlogs _value, $Res Function(_NewsAndBlogs) _then)
      : super(_value, (v) => _then(v as _NewsAndBlogs));

  @override
  _NewsAndBlogs get _value => super._value as _NewsAndBlogs;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object date = freezed,
    Object description = freezed,
    Object hash = freezed,
    Object imageUrl = freezed,
  }) {
    return _then(_NewsAndBlogs(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      date: date == freezed ? _value.date : date as String,
      description:
          description == freezed ? _value.description : description as String,
      hash: hash == freezed ? _value.hash : hash as String,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
    ));
  }
}

class _$_NewsAndBlogs implements _NewsAndBlogs {
  const _$_NewsAndBlogs(
      {this.id,
      this.title,
      this.date,
      this.description,
      this.hash,
      this.imageUrl});

  @override
  final String id;
  @override
  final String title;
  @override
  final String date;
  @override
  final String description;
  @override
  final String hash;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'NewsAndBlogs(id: $id, title: $title, date: $date, description: $description, hash: $hash, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewsAndBlogs &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.hash, hash) ||
                const DeepCollectionEquality().equals(other.hash, hash)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(hash) ^
      const DeepCollectionEquality().hash(imageUrl);

  @override
  _$NewsAndBlogsCopyWith<_NewsAndBlogs> get copyWith =>
      __$NewsAndBlogsCopyWithImpl<_NewsAndBlogs>(this, _$identity);
}

abstract class _NewsAndBlogs implements NewsAndBlogs {
  const factory _NewsAndBlogs(
      {String id,
      String title,
      String date,
      String description,
      String hash,
      String imageUrl}) = _$_NewsAndBlogs;

  @override
  String get id;
  @override
  String get title;
  @override
  String get date;
  @override
  String get description;
  @override
  String get hash;
  @override
  String get imageUrl;
  @override
  _$NewsAndBlogsCopyWith<_NewsAndBlogs> get copyWith;
}
