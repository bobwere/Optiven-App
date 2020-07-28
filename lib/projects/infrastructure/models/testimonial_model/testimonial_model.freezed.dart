// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'testimonial_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
TestimonialModel _$TestimonialModelFromJson(Map<String, dynamic> json) {
  return _TestimonialModel.fromJson(json);
}

class _$TestimonialModelTearOff {
  const _$TestimonialModelTearOff();

  _TestimonialModel call(
      {@JsonKey(ignore: true) String id, String name, String review}) {
    return _TestimonialModel(
      id: id,
      name: name,
      review: review,
    );
  }
}

// ignore: unused_element
const $TestimonialModel = _$TestimonialModelTearOff();

mixin _$TestimonialModel {
  @JsonKey(ignore: true)
  String get id;
  String get name;
  String get review;

  Map<String, dynamic> toJson();
  $TestimonialModelCopyWith<TestimonialModel> get copyWith;
}

abstract class $TestimonialModelCopyWith<$Res> {
  factory $TestimonialModelCopyWith(
          TestimonialModel value, $Res Function(TestimonialModel) then) =
      _$TestimonialModelCopyWithImpl<$Res>;
  $Res call({@JsonKey(ignore: true) String id, String name, String review});
}

class _$TestimonialModelCopyWithImpl<$Res>
    implements $TestimonialModelCopyWith<$Res> {
  _$TestimonialModelCopyWithImpl(this._value, this._then);

  final TestimonialModel _value;
  // ignore: unused_field
  final $Res Function(TestimonialModel) _then;

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

abstract class _$TestimonialModelCopyWith<$Res>
    implements $TestimonialModelCopyWith<$Res> {
  factory _$TestimonialModelCopyWith(
          _TestimonialModel value, $Res Function(_TestimonialModel) then) =
      __$TestimonialModelCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(ignore: true) String id, String name, String review});
}

class __$TestimonialModelCopyWithImpl<$Res>
    extends _$TestimonialModelCopyWithImpl<$Res>
    implements _$TestimonialModelCopyWith<$Res> {
  __$TestimonialModelCopyWithImpl(
      _TestimonialModel _value, $Res Function(_TestimonialModel) _then)
      : super(_value, (v) => _then(v as _TestimonialModel));

  @override
  _TestimonialModel get _value => super._value as _TestimonialModel;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object review = freezed,
  }) {
    return _then(_TestimonialModel(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      review: review == freezed ? _value.review : review as String,
    ));
  }
}

@JsonSerializable()
class _$_TestimonialModel implements _TestimonialModel {
  _$_TestimonialModel({@JsonKey(ignore: true) this.id, this.name, this.review});

  factory _$_TestimonialModel.fromJson(Map<String, dynamic> json) =>
      _$_$_TestimonialModelFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String name;
  @override
  final String review;

  @override
  String toString() {
    return 'TestimonialModel(id: $id, name: $name, review: $review)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TestimonialModel &&
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
  _$TestimonialModelCopyWith<_TestimonialModel> get copyWith =>
      __$TestimonialModelCopyWithImpl<_TestimonialModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TestimonialModelToJson(this);
  }
}

abstract class _TestimonialModel implements TestimonialModel {
  factory _TestimonialModel(
      {@JsonKey(ignore: true) String id,
      String name,
      String review}) = _$_TestimonialModel;

  factory _TestimonialModel.fromJson(Map<String, dynamic> json) =
      _$_TestimonialModel.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get name;
  @override
  String get review;
  @override
  _$TestimonialModelCopyWith<_TestimonialModel> get copyWith;
}
