// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'project_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ProjectModel _$ProjectModelFromJson(Map<String, dynamic> json) {
  return _ProjectModel.fromJson(json);
}

class _$ProjectModelTearOff {
  const _$ProjectModelTearOff();

  _ProjectModel call(
      {@JsonKey(ignore: true) String id,
      String name,
      List<String> hash,
      List<String> picture,
      String price,
      String pricerange,
      String financing,
      String location,
      String description}) {
    return _ProjectModel(
      id: id,
      name: name,
      hash: hash,
      picture: picture,
      price: price,
      pricerange: pricerange,
      financing: financing,
      location: location,
      description: description,
    );
  }
}

// ignore: unused_element
const $ProjectModel = _$ProjectModelTearOff();

mixin _$ProjectModel {
  @JsonKey(ignore: true)
  String get id;
  String get name;
  List<String> get hash;
  List<String> get picture;
  String get price;
  String get pricerange;
  String get financing;
  String get location;
  String get description;

  Map<String, dynamic> toJson();
  $ProjectModelCopyWith<ProjectModel> get copyWith;
}

abstract class $ProjectModelCopyWith<$Res> {
  factory $ProjectModelCopyWith(
          ProjectModel value, $Res Function(ProjectModel) then) =
      _$ProjectModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      String name,
      List<String> hash,
      List<String> picture,
      String price,
      String pricerange,
      String financing,
      String location,
      String description});
}

class _$ProjectModelCopyWithImpl<$Res> implements $ProjectModelCopyWith<$Res> {
  _$ProjectModelCopyWithImpl(this._value, this._then);

  final ProjectModel _value;
  // ignore: unused_field
  final $Res Function(ProjectModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object hash = freezed,
    Object picture = freezed,
    Object price = freezed,
    Object pricerange = freezed,
    Object financing = freezed,
    Object location = freezed,
    Object description = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      hash: hash == freezed ? _value.hash : hash as List<String>,
      picture: picture == freezed ? _value.picture : picture as List<String>,
      price: price == freezed ? _value.price : price as String,
      pricerange:
          pricerange == freezed ? _value.pricerange : pricerange as String,
      financing: financing == freezed ? _value.financing : financing as String,
      location: location == freezed ? _value.location : location as String,
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

abstract class _$ProjectModelCopyWith<$Res>
    implements $ProjectModelCopyWith<$Res> {
  factory _$ProjectModelCopyWith(
          _ProjectModel value, $Res Function(_ProjectModel) then) =
      __$ProjectModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      String name,
      List<String> hash,
      List<String> picture,
      String price,
      String pricerange,
      String financing,
      String location,
      String description});
}

class __$ProjectModelCopyWithImpl<$Res> extends _$ProjectModelCopyWithImpl<$Res>
    implements _$ProjectModelCopyWith<$Res> {
  __$ProjectModelCopyWithImpl(
      _ProjectModel _value, $Res Function(_ProjectModel) _then)
      : super(_value, (v) => _then(v as _ProjectModel));

  @override
  _ProjectModel get _value => super._value as _ProjectModel;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object hash = freezed,
    Object picture = freezed,
    Object price = freezed,
    Object pricerange = freezed,
    Object financing = freezed,
    Object location = freezed,
    Object description = freezed,
  }) {
    return _then(_ProjectModel(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      hash: hash == freezed ? _value.hash : hash as List<String>,
      picture: picture == freezed ? _value.picture : picture as List<String>,
      price: price == freezed ? _value.price : price as String,
      pricerange:
          pricerange == freezed ? _value.pricerange : pricerange as String,
      financing: financing == freezed ? _value.financing : financing as String,
      location: location == freezed ? _value.location : location as String,
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

@JsonSerializable()
class _$_ProjectModel implements _ProjectModel {
  _$_ProjectModel(
      {@JsonKey(ignore: true) this.id,
      this.name,
      this.hash,
      this.picture,
      this.price,
      this.pricerange,
      this.financing,
      this.location,
      this.description});

  factory _$_ProjectModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ProjectModelFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String name;
  @override
  final List<String> hash;
  @override
  final List<String> picture;
  @override
  final String price;
  @override
  final String pricerange;
  @override
  final String financing;
  @override
  final String location;
  @override
  final String description;

  @override
  String toString() {
    return 'ProjectModel(id: $id, name: $name, hash: $hash, picture: $picture, price: $price, pricerange: $pricerange, financing: $financing, location: $location, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProjectModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.hash, hash) ||
                const DeepCollectionEquality().equals(other.hash, hash)) &&
            (identical(other.picture, picture) ||
                const DeepCollectionEquality()
                    .equals(other.picture, picture)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.pricerange, pricerange) ||
                const DeepCollectionEquality()
                    .equals(other.pricerange, pricerange)) &&
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
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(pricerange) ^
      const DeepCollectionEquality().hash(financing) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(description);

  @override
  _$ProjectModelCopyWith<_ProjectModel> get copyWith =>
      __$ProjectModelCopyWithImpl<_ProjectModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProjectModelToJson(this);
  }
}

abstract class _ProjectModel implements ProjectModel {
  factory _ProjectModel(
      {@JsonKey(ignore: true) String id,
      String name,
      List<String> hash,
      List<String> picture,
      String price,
      String pricerange,
      String financing,
      String location,
      String description}) = _$_ProjectModel;

  factory _ProjectModel.fromJson(Map<String, dynamic> json) =
      _$_ProjectModel.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get name;
  @override
  List<String> get hash;
  @override
  List<String> get picture;
  @override
  String get price;
  @override
  String get pricerange;
  @override
  String get financing;
  @override
  String get location;
  @override
  String get description;
  @override
  _$ProjectModelCopyWith<_ProjectModel> get copyWith;
}
