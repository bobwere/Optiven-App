// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'project_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ProjectTearOff {
  const _$ProjectTearOff();

  _Project call(
      {String id,
      String name,
      List<String> hash,
      List<String> picture,
      String pricerange,
      String price,
      String financing,
      String location,
      String description}) {
    return _Project(
      id: id,
      name: name,
      hash: hash,
      picture: picture,
      pricerange: pricerange,
      price: price,
      financing: financing,
      location: location,
      description: description,
    );
  }
}

// ignore: unused_element
const $Project = _$ProjectTearOff();

mixin _$Project {
  String get id;
  String get name;
  List<String> get hash;
  List<String> get picture;
  String get pricerange;
  String get price;
  String get financing;
  String get location;
  String get description;

  $ProjectCopyWith<Project> get copyWith;
}

abstract class $ProjectCopyWith<$Res> {
  factory $ProjectCopyWith(Project value, $Res Function(Project) then) =
      _$ProjectCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      List<String> hash,
      List<String> picture,
      String pricerange,
      String price,
      String financing,
      String location,
      String description});
}

class _$ProjectCopyWithImpl<$Res> implements $ProjectCopyWith<$Res> {
  _$ProjectCopyWithImpl(this._value, this._then);

  final Project _value;
  // ignore: unused_field
  final $Res Function(Project) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object hash = freezed,
    Object picture = freezed,
    Object pricerange = freezed,
    Object price = freezed,
    Object financing = freezed,
    Object location = freezed,
    Object description = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      hash: hash == freezed ? _value.hash : hash as List<String>,
      picture: picture == freezed ? _value.picture : picture as List<String>,
      pricerange:
          pricerange == freezed ? _value.pricerange : pricerange as String,
      price: price == freezed ? _value.price : price as String,
      financing: financing == freezed ? _value.financing : financing as String,
      location: location == freezed ? _value.location : location as String,
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

abstract class _$ProjectCopyWith<$Res> implements $ProjectCopyWith<$Res> {
  factory _$ProjectCopyWith(_Project value, $Res Function(_Project) then) =
      __$ProjectCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      List<String> hash,
      List<String> picture,
      String pricerange,
      String price,
      String financing,
      String location,
      String description});
}

class __$ProjectCopyWithImpl<$Res> extends _$ProjectCopyWithImpl<$Res>
    implements _$ProjectCopyWith<$Res> {
  __$ProjectCopyWithImpl(_Project _value, $Res Function(_Project) _then)
      : super(_value, (v) => _then(v as _Project));

  @override
  _Project get _value => super._value as _Project;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object hash = freezed,
    Object picture = freezed,
    Object pricerange = freezed,
    Object price = freezed,
    Object financing = freezed,
    Object location = freezed,
    Object description = freezed,
  }) {
    return _then(_Project(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      hash: hash == freezed ? _value.hash : hash as List<String>,
      picture: picture == freezed ? _value.picture : picture as List<String>,
      pricerange:
          pricerange == freezed ? _value.pricerange : pricerange as String,
      price: price == freezed ? _value.price : price as String,
      financing: financing == freezed ? _value.financing : financing as String,
      location: location == freezed ? _value.location : location as String,
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

class _$_Project implements _Project {
  const _$_Project(
      {this.id,
      this.name,
      this.hash,
      this.picture,
      this.pricerange,
      this.price,
      this.financing,
      this.location,
      this.description});

  @override
  final String id;
  @override
  final String name;
  @override
  final List<String> hash;
  @override
  final List<String> picture;
  @override
  final String pricerange;
  @override
  final String price;
  @override
  final String financing;
  @override
  final String location;
  @override
  final String description;

  @override
  String toString() {
    return 'Project(id: $id, name: $name, hash: $hash, picture: $picture, pricerange: $pricerange, price: $price, financing: $financing, location: $location, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Project &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.hash, hash) ||
                const DeepCollectionEquality().equals(other.hash, hash)) &&
            (identical(other.picture, picture) ||
                const DeepCollectionEquality()
                    .equals(other.picture, picture)) &&
            (identical(other.pricerange, pricerange) ||
                const DeepCollectionEquality()
                    .equals(other.pricerange, pricerange)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.financing, financing) ||
                const DeepCollectionEquality()
                    .equals(other.financing, financing)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(hash) ^
      const DeepCollectionEquality().hash(picture) ^
      const DeepCollectionEquality().hash(pricerange) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(financing) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(description);

  @override
  _$ProjectCopyWith<_Project> get copyWith =>
      __$ProjectCopyWithImpl<_Project>(this, _$identity);
}

abstract class _Project implements Project {
  const factory _Project(
      {String id,
      String name,
      List<String> hash,
      List<String> picture,
      String pricerange,
      String price,
      String financing,
      String location,
      String description}) = _$_Project;

  @override
  String get id;
  @override
  String get name;
  @override
  List<String> get hash;
  @override
  List<String> get picture;
  @override
  String get pricerange;
  @override
  String get price;
  @override
  String get financing;
  @override
  String get location;
  @override
  String get description;
  @override
  _$ProjectCopyWith<_Project> get copyWith;
}
