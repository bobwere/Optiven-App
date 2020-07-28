// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'newsletter_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$NewsletterTearOff {
  const _$NewsletterTearOff();

  _Newsletter call({String id, String title, String pdfUrl}) {
    return _Newsletter(
      id: id,
      title: title,
      pdfUrl: pdfUrl,
    );
  }
}

// ignore: unused_element
const $Newsletter = _$NewsletterTearOff();

mixin _$Newsletter {
  String get id;
  String get title;
  String get pdfUrl;

  $NewsletterCopyWith<Newsletter> get copyWith;
}

abstract class $NewsletterCopyWith<$Res> {
  factory $NewsletterCopyWith(
          Newsletter value, $Res Function(Newsletter) then) =
      _$NewsletterCopyWithImpl<$Res>;
  $Res call({String id, String title, String pdfUrl});
}

class _$NewsletterCopyWithImpl<$Res> implements $NewsletterCopyWith<$Res> {
  _$NewsletterCopyWithImpl(this._value, this._then);

  final Newsletter _value;
  // ignore: unused_field
  final $Res Function(Newsletter) _then;

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

abstract class _$NewsletterCopyWith<$Res> implements $NewsletterCopyWith<$Res> {
  factory _$NewsletterCopyWith(
          _Newsletter value, $Res Function(_Newsletter) then) =
      __$NewsletterCopyWithImpl<$Res>;
  @override
  $Res call({String id, String title, String pdfUrl});
}

class __$NewsletterCopyWithImpl<$Res> extends _$NewsletterCopyWithImpl<$Res>
    implements _$NewsletterCopyWith<$Res> {
  __$NewsletterCopyWithImpl(
      _Newsletter _value, $Res Function(_Newsletter) _then)
      : super(_value, (v) => _then(v as _Newsletter));

  @override
  _Newsletter get _value => super._value as _Newsletter;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object pdfUrl = freezed,
  }) {
    return _then(_Newsletter(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      pdfUrl: pdfUrl == freezed ? _value.pdfUrl : pdfUrl as String,
    ));
  }
}

class _$_Newsletter implements _Newsletter {
  const _$_Newsletter({this.id, this.title, this.pdfUrl});

  @override
  final String id;
  @override
  final String title;
  @override
  final String pdfUrl;

  @override
  String toString() {
    return 'Newsletter(id: $id, title: $title, pdfUrl: $pdfUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Newsletter &&
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
  _$NewsletterCopyWith<_Newsletter> get copyWith =>
      __$NewsletterCopyWithImpl<_Newsletter>(this, _$identity);
}

abstract class _Newsletter implements Newsletter {
  const factory _Newsletter({String id, String title, String pdfUrl}) =
      _$_Newsletter;

  @override
  String get id;
  @override
  String get title;
  @override
  String get pdfUrl;
  @override
  _$NewsletterCopyWith<_Newsletter> get copyWith;
}
