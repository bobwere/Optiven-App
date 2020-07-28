// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'testimonial_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$TestimonialTearOff {
  const _$TestimonialTearOff();

  _Testimonial call({String id, String name, String review}) {
    return _Testimonial(
      id: id,
      name: name,
      review: review,
    );
  }
}

// ignore: unused_element
const $Testimonial = _$TestimonialTearOff();

mixin _$Testimonial {
  String get id;
  String get name;
  String get review;

  $TestimonialCopyWith<Testimonial> get copyWith;
}

abstract class $TestimonialCopyWith<$Res> {
  factory $TestimonialCopyWith(
          Testimonial value, $Res Function(Testimonial) then) =
      _$TestimonialCopyWithImpl<$Res>;
  $Res call({String id, String name, String review});
}

class _$TestimonialCopyWithImpl<$Res> implements $TestimonialCopyWith<$Res> {
  _$TestimonialCopyWithImpl(this._value, this._then);

  final Testimonial _value;
  // ignore: unused_field
  final $Res Function(Testimonial) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object review = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      review: review == freezed ? _value.review : review as String,
    ));
  }
}

abstract class _$TestimonialCopyWith<$Res>
    implements $TestimonialCopyWith<$Res> {
  factory _$TestimonialCopyWith(
          _Testimonial value, $Res Function(_Testimonial) then) =
      __$TestimonialCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, String review});
}

class __$TestimonialCopyWithImpl<$Res> extends _$TestimonialCopyWithImpl<$Res>
    implements _$TestimonialCopyWith<$Res> {
  __$TestimonialCopyWithImpl(
      _Testimonial _value, $Res Function(_Testimonial) _then)
      : super(_value, (v) => _then(v as _Testimonial));

  @override
  _Testimonial get _value => super._value as _Testimonial;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object review = freezed,
  }) {
    return _then(_Testimonial(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      review: review == freezed ? _value.review : review as String,
    ));
  }
}

class _$_Testimonial implements _Testimonial {
  const _$_Testimonial({this.id, this.name, this.review});

  @override
  final String id;
  @override
  final String name;
  @override
  final String review;

  @override
  String toString() {
    return 'Testimonial(id: $id, name: $name, review: $review)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Testimonial &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.review, review) ||
                const DeepCollectionEquality().equals(other.review, review)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(review);

  @override
  _$TestimonialCopyWith<_Testimonial> get copyWith =>
      __$TestimonialCopyWithImpl<_Testimonial>(this, _$identity);
}

abstract class _Testimonial implements Testimonial {
  const factory _Testimonial({String id, String name, String review}) =
      _$_Testimonial;

  @override
  String get id;
  @override
  String get name;
  @override
  String get review;
  @override
  _$TestimonialCopyWith<_Testimonial> get copyWith;
}
