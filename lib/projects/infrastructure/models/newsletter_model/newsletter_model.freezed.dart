// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'newsletter_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
NewsletterModel _$NewsletterModelFromJson(Map<String, dynamic> json) {
  return _NewsletterModel.fromJson(json);
}

class _$NewsletterModelTearOff {
  const _$NewsletterModelTearOff();

  _NewsletterModel call(
      {@JsonKey(ignore: true) String id,
      String title,
      @required String pdfUrl}) {
    return _NewsletterModel(
      id: id,
      title: title,
      pdfUrl: pdfUrl,
    );
  }
}

// ignore: unused_element
const $NewsletterModel = _$NewsletterModelTearOff();

mixin _$NewsletterModel {
  @JsonKey(ignore: true)
  String get id;
  String get title;
  String get pdfUrl;

  Map<String, dynamic> toJson();
  $NewsletterModelCopyWith<NewsletterModel> get copyWith;
}

abstract class $NewsletterModelCopyWith<$Res> {
  factory $NewsletterModelCopyWith(
          NewsletterModel value, $Res Function(NewsletterModel) then) =
      _$NewsletterModelCopyWithImpl<$Res>;
  $Res call({@JsonKey(ignore: true) String id, String title, String pdfUrl});
}

class _$NewsletterModelCopyWithImpl<$Res>
    implements $NewsletterModelCopyWith<$Res> {
  _$NewsletterModelCopyWithImpl(this._value, this._then);

  final NewsletterModel _value;
  // ignore: unused_field
  final $Res Function(NewsletterModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object pdfUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      pdfUrl: pdfUrl == freezed ? _value.pdfUrl : pdfUrl as String,
    ));
  }
}

abstract class _$NewsletterModelCopyWith<$Res>
    implements $NewsletterModelCopyWith<$Res> {
  factory _$NewsletterModelCopyWith(
          _NewsletterModel value, $Res Function(_NewsletterModel) then) =
      __$NewsletterModelCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(ignore: true) String id, String title, String pdfUrl});
}

class __$NewsletterModelCopyWithImpl<$Res>
    extends _$NewsletterModelCopyWithImpl<$Res>
    implements _$NewsletterModelCopyWith<$Res> {
  __$NewsletterModelCopyWithImpl(
      _NewsletterModel _value, $Res Function(_NewsletterModel) _then)
      : super(_value, (v) => _then(v as _NewsletterModel));

  @override
  _NewsletterModel get _value => super._value as _NewsletterModel;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object pdfUrl = freezed,
  }) {
    return _then(_NewsletterModel(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      pdfUrl: pdfUrl == freezed ? _value.pdfUrl : pdfUrl as String,
    ));
  }
}

@JsonSerializable()
class _$_NewsletterModel implements _NewsletterModel {
  _$_NewsletterModel(
      {@JsonKey(ignore: true) this.id, this.title, @required this.pdfUrl})
      : assert(pdfUrl != null);

  factory _$_NewsletterModel.fromJson(Map<String, dynamic> json) =>
      _$_$_NewsletterModelFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String title;
  @override
  final String pdfUrl;

  @override
  String toString() {
    return 'NewsletterModel(id: $id, title: $title, pdfUrl: $pdfUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewsletterModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.pdfUrl, pdfUrl) ||
                const DeepCollectionEquality().equals(other.pdfUrl, pdfUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(pdfUrl);

  @override
  _$NewsletterModelCopyWith<_NewsletterModel> get copyWith =>
      __$NewsletterModelCopyWithImpl<_NewsletterModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NewsletterModelToJson(this);
  }
}

abstract class _NewsletterModel implements NewsletterModel {
  factory _NewsletterModel(
      {@JsonKey(ignore: true) String id,
      String title,
      @required String pdfUrl}) = _$_NewsletterModel;

  factory _NewsletterModel.fromJson(Map<String, dynamic> json) =
      _$_NewsletterModel.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get title;
  @override
  String get pdfUrl;
  @override
  _$NewsletterModelCopyWith<_NewsletterModel> get copyWith;
}
