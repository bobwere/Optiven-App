// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'newsletter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$NewsletterEventTearOff {
  const _$NewsletterEventTearOff();

  _GetAllNewsletters getAllNewsletters() {
    return const _GetAllNewsletters();
  }

  _NewslettersReceived newslettersReceived(
      Either<NewsletterFailure, KtList<Newsletter>> failureOrNewsletters) {
    return _NewslettersReceived(
      failureOrNewsletters,
    );
  }
}

// ignore: unused_element
const $NewsletterEvent = _$NewsletterEventTearOff();

mixin _$NewsletterEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getAllNewsletters(),
    @required
        Result newslettersReceived(
            Either<NewsletterFailure, KtList<Newsletter>> failureOrNewsletters),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getAllNewsletters(),
    Result newslettersReceived(
        Either<NewsletterFailure, KtList<Newsletter>> failureOrNewsletters),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getAllNewsletters(_GetAllNewsletters value),
    @required Result newslettersReceived(_NewslettersReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getAllNewsletters(_GetAllNewsletters value),
    Result newslettersReceived(_NewslettersReceived value),
    @required Result orElse(),
  });
}

abstract class $NewsletterEventCopyWith<$Res> {
  factory $NewsletterEventCopyWith(
          NewsletterEvent value, $Res Function(NewsletterEvent) then) =
      _$NewsletterEventCopyWithImpl<$Res>;
}

class _$NewsletterEventCopyWithImpl<$Res>
    implements $NewsletterEventCopyWith<$Res> {
  _$NewsletterEventCopyWithImpl(this._value, this._then);

  final NewsletterEvent _value;
  // ignore: unused_field
  final $Res Function(NewsletterEvent) _then;
}

abstract class _$GetAllNewslettersCopyWith<$Res> {
  factory _$GetAllNewslettersCopyWith(
          _GetAllNewsletters value, $Res Function(_GetAllNewsletters) then) =
      __$GetAllNewslettersCopyWithImpl<$Res>;
}

class __$GetAllNewslettersCopyWithImpl<$Res>
    extends _$NewsletterEventCopyWithImpl<$Res>
    implements _$GetAllNewslettersCopyWith<$Res> {
  __$GetAllNewslettersCopyWithImpl(
      _GetAllNewsletters _value, $Res Function(_GetAllNewsletters) _then)
      : super(_value, (v) => _then(v as _GetAllNewsletters));

  @override
  _GetAllNewsletters get _value => super._value as _GetAllNewsletters;
}

class _$_GetAllNewsletters
    with DiagnosticableTreeMixin
    implements _GetAllNewsletters {
  const _$_GetAllNewsletters();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewsletterEvent.getAllNewsletters()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NewsletterEvent.getAllNewsletters'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetAllNewsletters);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getAllNewsletters(),
    @required
        Result newslettersReceived(
            Either<NewsletterFailure, KtList<Newsletter>> failureOrNewsletters),
  }) {
    assert(getAllNewsletters != null);
    assert(newslettersReceived != null);
    return getAllNewsletters();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getAllNewsletters(),
    Result newslettersReceived(
        Either<NewsletterFailure, KtList<Newsletter>> failureOrNewsletters),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getAllNewsletters != null) {
      return getAllNewsletters();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getAllNewsletters(_GetAllNewsletters value),
    @required Result newslettersReceived(_NewslettersReceived value),
  }) {
    assert(getAllNewsletters != null);
    assert(newslettersReceived != null);
    return getAllNewsletters(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getAllNewsletters(_GetAllNewsletters value),
    Result newslettersReceived(_NewslettersReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getAllNewsletters != null) {
      return getAllNewsletters(this);
    }
    return orElse();
  }
}

abstract class _GetAllNewsletters implements NewsletterEvent {
  const factory _GetAllNewsletters() = _$_GetAllNewsletters;
}

abstract class _$NewslettersReceivedCopyWith<$Res> {
  factory _$NewslettersReceivedCopyWith(_NewslettersReceived value,
          $Res Function(_NewslettersReceived) then) =
      __$NewslettersReceivedCopyWithImpl<$Res>;
  $Res call(
      {Either<NewsletterFailure, KtList<Newsletter>> failureOrNewsletters});
}

class __$NewslettersReceivedCopyWithImpl<$Res>
    extends _$NewsletterEventCopyWithImpl<$Res>
    implements _$NewslettersReceivedCopyWith<$Res> {
  __$NewslettersReceivedCopyWithImpl(
      _NewslettersReceived _value, $Res Function(_NewslettersReceived) _then)
      : super(_value, (v) => _then(v as _NewslettersReceived));

  @override
  _NewslettersReceived get _value => super._value as _NewslettersReceived;

  @override
  $Res call({
    Object failureOrNewsletters = freezed,
  }) {
    return _then(_NewslettersReceived(
      failureOrNewsletters == freezed
          ? _value.failureOrNewsletters
          : failureOrNewsletters
              as Either<NewsletterFailure, KtList<Newsletter>>,
    ));
  }
}

class _$_NewslettersReceived
    with DiagnosticableTreeMixin
    implements _NewslettersReceived {
  const _$_NewslettersReceived(this.failureOrNewsletters)
      : assert(failureOrNewsletters != null);

  @override
  final Either<NewsletterFailure, KtList<Newsletter>> failureOrNewsletters;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewsletterEvent.newslettersReceived(failureOrNewsletters: $failureOrNewsletters)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NewsletterEvent.newslettersReceived'))
      ..add(DiagnosticsProperty('failureOrNewsletters', failureOrNewsletters));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewslettersReceived &&
            (identical(other.failureOrNewsletters, failureOrNewsletters) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrNewsletters, failureOrNewsletters)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrNewsletters);

  @override
  _$NewslettersReceivedCopyWith<_NewslettersReceived> get copyWith =>
      __$NewslettersReceivedCopyWithImpl<_NewslettersReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getAllNewsletters(),
    @required
        Result newslettersReceived(
            Either<NewsletterFailure, KtList<Newsletter>> failureOrNewsletters),
  }) {
    assert(getAllNewsletters != null);
    assert(newslettersReceived != null);
    return newslettersReceived(failureOrNewsletters);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getAllNewsletters(),
    Result newslettersReceived(
        Either<NewsletterFailure, KtList<Newsletter>> failureOrNewsletters),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (newslettersReceived != null) {
      return newslettersReceived(failureOrNewsletters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getAllNewsletters(_GetAllNewsletters value),
    @required Result newslettersReceived(_NewslettersReceived value),
  }) {
    assert(getAllNewsletters != null);
    assert(newslettersReceived != null);
    return newslettersReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getAllNewsletters(_GetAllNewsletters value),
    Result newslettersReceived(_NewslettersReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (newslettersReceived != null) {
      return newslettersReceived(this);
    }
    return orElse();
  }
}

abstract class _NewslettersReceived implements NewsletterEvent {
  const factory _NewslettersReceived(
          Either<NewsletterFailure, KtList<Newsletter>> failureOrNewsletters) =
      _$_NewslettersReceived;

  Either<NewsletterFailure, KtList<Newsletter>> get failureOrNewsletters;
  _$NewslettersReceivedCopyWith<_NewslettersReceived> get copyWith;
}

class _$NewsletterStateTearOff {
  const _$NewsletterStateTearOff();

  Initial initial() {
    return const Initial();
  }

  LoadingData loadingData() {
    return const LoadingData();
  }

  LoadSuccess loadSuccess(KtList<Newsletter> newsletters) {
    return LoadSuccess(
      newsletters,
    );
  }

  LoadFailure loadFailure(NewsletterFailure newsletterFailure) {
    return LoadFailure(
      newsletterFailure,
    );
  }
}

// ignore: unused_element
const $NewsletterState = _$NewsletterStateTearOff();

mixin _$NewsletterState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadingData(),
    @required Result loadSuccess(KtList<Newsletter> newsletters),
    @required Result loadFailure(NewsletterFailure newsletterFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadingData(),
    Result loadSuccess(KtList<Newsletter> newsletters),
    Result loadFailure(NewsletterFailure newsletterFailure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadingData(LoadingData value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadingData(LoadingData value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  });
}

abstract class $NewsletterStateCopyWith<$Res> {
  factory $NewsletterStateCopyWith(
          NewsletterState value, $Res Function(NewsletterState) then) =
      _$NewsletterStateCopyWithImpl<$Res>;
}

class _$NewsletterStateCopyWithImpl<$Res>
    implements $NewsletterStateCopyWith<$Res> {
  _$NewsletterStateCopyWithImpl(this._value, this._then);

  final NewsletterState _value;
  // ignore: unused_field
  final $Res Function(NewsletterState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$NewsletterStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

class _$Initial with DiagnosticableTreeMixin implements Initial {
  const _$Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewsletterState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'NewsletterState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadingData(),
    @required Result loadSuccess(KtList<Newsletter> newsletters),
    @required Result loadFailure(NewsletterFailure newsletterFailure),
  }) {
    assert(initial != null);
    assert(loadingData != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadingData(),
    Result loadSuccess(KtList<Newsletter> newsletters),
    Result loadFailure(NewsletterFailure newsletterFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadingData(LoadingData value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadingData != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadingData(LoadingData value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements NewsletterState {
  const factory Initial() = _$Initial;
}

abstract class $LoadingDataCopyWith<$Res> {
  factory $LoadingDataCopyWith(
          LoadingData value, $Res Function(LoadingData) then) =
      _$LoadingDataCopyWithImpl<$Res>;
}

class _$LoadingDataCopyWithImpl<$Res>
    extends _$NewsletterStateCopyWithImpl<$Res>
    implements $LoadingDataCopyWith<$Res> {
  _$LoadingDataCopyWithImpl(
      LoadingData _value, $Res Function(LoadingData) _then)
      : super(_value, (v) => _then(v as LoadingData));

  @override
  LoadingData get _value => super._value as LoadingData;
}

class _$LoadingData with DiagnosticableTreeMixin implements LoadingData {
  const _$LoadingData();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewsletterState.loadingData()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'NewsletterState.loadingData'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadingData(),
    @required Result loadSuccess(KtList<Newsletter> newsletters),
    @required Result loadFailure(NewsletterFailure newsletterFailure),
  }) {
    assert(initial != null);
    assert(loadingData != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadingData();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadingData(),
    Result loadSuccess(KtList<Newsletter> newsletters),
    Result loadFailure(NewsletterFailure newsletterFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadingData != null) {
      return loadingData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadingData(LoadingData value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadingData != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadingData(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadingData(LoadingData value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadingData != null) {
      return loadingData(this);
    }
    return orElse();
  }
}

abstract class LoadingData implements NewsletterState {
  const factory LoadingData() = _$LoadingData;
}

abstract class $LoadSuccessCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<Newsletter> newsletters});
}

class _$LoadSuccessCopyWithImpl<$Res>
    extends _$NewsletterStateCopyWithImpl<$Res>
    implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(
      LoadSuccess _value, $Res Function(LoadSuccess) _then)
      : super(_value, (v) => _then(v as LoadSuccess));

  @override
  LoadSuccess get _value => super._value as LoadSuccess;

  @override
  $Res call({
    Object newsletters = freezed,
  }) {
    return _then(LoadSuccess(
      newsletters == freezed
          ? _value.newsletters
          : newsletters as KtList<Newsletter>,
    ));
  }
}

class _$LoadSuccess with DiagnosticableTreeMixin implements LoadSuccess {
  const _$LoadSuccess(this.newsletters) : assert(newsletters != null);

  @override
  final KtList<Newsletter> newsletters;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewsletterState.loadSuccess(newsletters: $newsletters)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NewsletterState.loadSuccess'))
      ..add(DiagnosticsProperty('newsletters', newsletters));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSuccess &&
            (identical(other.newsletters, newsletters) ||
                const DeepCollectionEquality()
                    .equals(other.newsletters, newsletters)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(newsletters);

  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadingData(),
    @required Result loadSuccess(KtList<Newsletter> newsletters),
    @required Result loadFailure(NewsletterFailure newsletterFailure),
  }) {
    assert(initial != null);
    assert(loadingData != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(newsletters);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadingData(),
    Result loadSuccess(KtList<Newsletter> newsletters),
    Result loadFailure(NewsletterFailure newsletterFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(newsletters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadingData(LoadingData value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadingData != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadingData(LoadingData value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class LoadSuccess implements NewsletterState {
  const factory LoadSuccess(KtList<Newsletter> newsletters) = _$LoadSuccess;

  KtList<Newsletter> get newsletters;
  $LoadSuccessCopyWith<LoadSuccess> get copyWith;
}

abstract class $LoadFailureCopyWith<$Res> {
  factory $LoadFailureCopyWith(
          LoadFailure value, $Res Function(LoadFailure) then) =
      _$LoadFailureCopyWithImpl<$Res>;
  $Res call({NewsletterFailure newsletterFailure});

  $NewsletterFailureCopyWith<$Res> get newsletterFailure;
}

class _$LoadFailureCopyWithImpl<$Res>
    extends _$NewsletterStateCopyWithImpl<$Res>
    implements $LoadFailureCopyWith<$Res> {
  _$LoadFailureCopyWithImpl(
      LoadFailure _value, $Res Function(LoadFailure) _then)
      : super(_value, (v) => _then(v as LoadFailure));

  @override
  LoadFailure get _value => super._value as LoadFailure;

  @override
  $Res call({
    Object newsletterFailure = freezed,
  }) {
    return _then(LoadFailure(
      newsletterFailure == freezed
          ? _value.newsletterFailure
          : newsletterFailure as NewsletterFailure,
    ));
  }

  @override
  $NewsletterFailureCopyWith<$Res> get newsletterFailure {
    if (_value.newsletterFailure == null) {
      return null;
    }
    return $NewsletterFailureCopyWith<$Res>(_value.newsletterFailure, (value) {
      return _then(_value.copyWith(newsletterFailure: value));
    });
  }
}

class _$LoadFailure with DiagnosticableTreeMixin implements LoadFailure {
  const _$LoadFailure(this.newsletterFailure)
      : assert(newsletterFailure != null);

  @override
  final NewsletterFailure newsletterFailure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewsletterState.loadFailure(newsletterFailure: $newsletterFailure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NewsletterState.loadFailure'))
      ..add(DiagnosticsProperty('newsletterFailure', newsletterFailure));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadFailure &&
            (identical(other.newsletterFailure, newsletterFailure) ||
                const DeepCollectionEquality()
                    .equals(other.newsletterFailure, newsletterFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(newsletterFailure);

  @override
  $LoadFailureCopyWith<LoadFailure> get copyWith =>
      _$LoadFailureCopyWithImpl<LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadingData(),
    @required Result loadSuccess(KtList<Newsletter> newsletters),
    @required Result loadFailure(NewsletterFailure newsletterFailure),
  }) {
    assert(initial != null);
    assert(loadingData != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(newsletterFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadingData(),
    Result loadSuccess(KtList<Newsletter> newsletters),
    Result loadFailure(NewsletterFailure newsletterFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(newsletterFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadingData(LoadingData value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadingData != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadingData(LoadingData value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class LoadFailure implements NewsletterState {
  const factory LoadFailure(NewsletterFailure newsletterFailure) =
      _$LoadFailure;

  NewsletterFailure get newsletterFailure;
  $LoadFailureCopyWith<LoadFailure> get copyWith;
}
