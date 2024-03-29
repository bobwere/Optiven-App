// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'project_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ProjectFailureTearOff {
  const _$ProjectFailureTearOff();

  Unexpected unexpected() {
    return const Unexpected();
  }

  NoInternet noInternet() {
    return const NoInternet();
  }
}

// ignore: unused_element
const $ProjectFailure = _$ProjectFailureTearOff();

mixin _$ProjectFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unexpected(),
    @required Result noInternet(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unexpected(),
    Result noInternet(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unexpected(Unexpected value),
    @required Result noInternet(NoInternet value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unexpected(Unexpected value),
    Result noInternet(NoInternet value),
    @required Result orElse(),
  });
}

abstract class $ProjectFailureCopyWith<$Res> {
  factory $ProjectFailureCopyWith(
          ProjectFailure value, $Res Function(ProjectFailure) then) =
      _$ProjectFailureCopyWithImpl<$Res>;
}

class _$ProjectFailureCopyWithImpl<$Res>
    implements $ProjectFailureCopyWith<$Res> {
  _$ProjectFailureCopyWithImpl(this._value, this._then);

  final ProjectFailure _value;
  // ignore: unused_field
  final $Res Function(ProjectFailure) _then;
}

abstract class $UnexpectedCopyWith<$Res> {
  factory $UnexpectedCopyWith(
          Unexpected value, $Res Function(Unexpected) then) =
      _$UnexpectedCopyWithImpl<$Res>;
}

class _$UnexpectedCopyWithImpl<$Res> extends _$ProjectFailureCopyWithImpl<$Res>
    implements $UnexpectedCopyWith<$Res> {
  _$UnexpectedCopyWithImpl(Unexpected _value, $Res Function(Unexpected) _then)
      : super(_value, (v) => _then(v as Unexpected));

  @override
  Unexpected get _value => super._value as Unexpected;
}

class _$Unexpected implements Unexpected {
  const _$Unexpected();

  @override
  String toString() {
    return 'ProjectFailure.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Unexpected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unexpected(),
    @required Result noInternet(),
  }) {
    assert(unexpected != null);
    assert(noInternet != null);
    return unexpected();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unexpected(),
    Result noInternet(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unexpected(Unexpected value),
    @required Result noInternet(NoInternet value),
  }) {
    assert(unexpected != null);
    assert(noInternet != null);
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unexpected(Unexpected value),
    Result noInternet(NoInternet value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class Unexpected implements ProjectFailure {
  const factory Unexpected() = _$Unexpected;
}

abstract class $NoInternetCopyWith<$Res> {
  factory $NoInternetCopyWith(
          NoInternet value, $Res Function(NoInternet) then) =
      _$NoInternetCopyWithImpl<$Res>;
}

class _$NoInternetCopyWithImpl<$Res> extends _$ProjectFailureCopyWithImpl<$Res>
    implements $NoInternetCopyWith<$Res> {
  _$NoInternetCopyWithImpl(NoInternet _value, $Res Function(NoInternet) _then)
      : super(_value, (v) => _then(v as NoInternet));

  @override
  NoInternet get _value => super._value as NoInternet;
}

class _$NoInternet implements NoInternet {
  const _$NoInternet();

  @override
  String toString() {
    return 'ProjectFailure.noInternet()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NoInternet);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unexpected(),
    @required Result noInternet(),
  }) {
    assert(unexpected != null);
    assert(noInternet != null);
    return noInternet();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unexpected(),
    Result noInternet(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noInternet != null) {
      return noInternet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unexpected(Unexpected value),
    @required Result noInternet(NoInternet value),
  }) {
    assert(unexpected != null);
    assert(noInternet != null);
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unexpected(Unexpected value),
    Result noInternet(NoInternet value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class NoInternet implements ProjectFailure {
  const factory NoInternet() = _$NoInternet;
}
