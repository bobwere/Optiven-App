// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'philanthropy_news_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$PhilanthropyNewsEventTearOff {
  const _$PhilanthropyNewsEventTearOff();

  _PhilanthropyNewsEvent getAllPhilanthropyNews() {
    return const _PhilanthropyNewsEvent();
  }

  _PhilanthropyNewsReceived philanthropyNewsReceived(
      Either<NewsAndBlogsFailure, KtList<NewsAndBlogs>> failureOrNewsAndBlogs) {
    return _PhilanthropyNewsReceived(
      failureOrNewsAndBlogs,
    );
  }
}

// ignore: unused_element
const $PhilanthropyNewsEvent = _$PhilanthropyNewsEventTearOff();

mixin _$PhilanthropyNewsEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getAllPhilanthropyNews(),
    @required
        Result philanthropyNewsReceived(
            Either<NewsAndBlogsFailure, KtList<NewsAndBlogs>>
                failureOrNewsAndBlogs),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getAllPhilanthropyNews(),
    Result philanthropyNewsReceived(
        Either<NewsAndBlogsFailure, KtList<NewsAndBlogs>>
            failureOrNewsAndBlogs),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getAllPhilanthropyNews(_PhilanthropyNewsEvent value),
    @required Result philanthropyNewsReceived(_PhilanthropyNewsReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getAllPhilanthropyNews(_PhilanthropyNewsEvent value),
    Result philanthropyNewsReceived(_PhilanthropyNewsReceived value),
    @required Result orElse(),
  });
}

abstract class $PhilanthropyNewsEventCopyWith<$Res> {
  factory $PhilanthropyNewsEventCopyWith(PhilanthropyNewsEvent value,
          $Res Function(PhilanthropyNewsEvent) then) =
      _$PhilanthropyNewsEventCopyWithImpl<$Res>;
}

class _$PhilanthropyNewsEventCopyWithImpl<$Res>
    implements $PhilanthropyNewsEventCopyWith<$Res> {
  _$PhilanthropyNewsEventCopyWithImpl(this._value, this._then);

  final PhilanthropyNewsEvent _value;
  // ignore: unused_field
  final $Res Function(PhilanthropyNewsEvent) _then;
}

abstract class _$PhilanthropyNewsEventCopyWith<$Res> {
  factory _$PhilanthropyNewsEventCopyWith(_PhilanthropyNewsEvent value,
          $Res Function(_PhilanthropyNewsEvent) then) =
      __$PhilanthropyNewsEventCopyWithImpl<$Res>;
}

class __$PhilanthropyNewsEventCopyWithImpl<$Res>
    extends _$PhilanthropyNewsEventCopyWithImpl<$Res>
    implements _$PhilanthropyNewsEventCopyWith<$Res> {
  __$PhilanthropyNewsEventCopyWithImpl(_PhilanthropyNewsEvent _value,
      $Res Function(_PhilanthropyNewsEvent) _then)
      : super(_value, (v) => _then(v as _PhilanthropyNewsEvent));

  @override
  _PhilanthropyNewsEvent get _value => super._value as _PhilanthropyNewsEvent;
}

class _$_PhilanthropyNewsEvent
    with DiagnosticableTreeMixin
    implements _PhilanthropyNewsEvent {
  const _$_PhilanthropyNewsEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PhilanthropyNewsEvent.getAllPhilanthropyNews()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'PhilanthropyNewsEvent.getAllPhilanthropyNews'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PhilanthropyNewsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getAllPhilanthropyNews(),
    @required
        Result philanthropyNewsReceived(
            Either<NewsAndBlogsFailure, KtList<NewsAndBlogs>>
                failureOrNewsAndBlogs),
  }) {
    assert(getAllPhilanthropyNews != null);
    assert(philanthropyNewsReceived != null);
    return getAllPhilanthropyNews();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getAllPhilanthropyNews(),
    Result philanthropyNewsReceived(
        Either<NewsAndBlogsFailure, KtList<NewsAndBlogs>>
            failureOrNewsAndBlogs),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getAllPhilanthropyNews != null) {
      return getAllPhilanthropyNews();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getAllPhilanthropyNews(_PhilanthropyNewsEvent value),
    @required Result philanthropyNewsReceived(_PhilanthropyNewsReceived value),
  }) {
    assert(getAllPhilanthropyNews != null);
    assert(philanthropyNewsReceived != null);
    return getAllPhilanthropyNews(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getAllPhilanthropyNews(_PhilanthropyNewsEvent value),
    Result philanthropyNewsReceived(_PhilanthropyNewsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getAllPhilanthropyNews != null) {
      return getAllPhilanthropyNews(this);
    }
    return orElse();
  }
}

abstract class _PhilanthropyNewsEvent implements PhilanthropyNewsEvent {
  const factory _PhilanthropyNewsEvent() = _$_PhilanthropyNewsEvent;
}

abstract class _$PhilanthropyNewsReceivedCopyWith<$Res> {
  factory _$PhilanthropyNewsReceivedCopyWith(_PhilanthropyNewsReceived value,
          $Res Function(_PhilanthropyNewsReceived) then) =
      __$PhilanthropyNewsReceivedCopyWithImpl<$Res>;
  $Res call(
      {Either<NewsAndBlogsFailure, KtList<NewsAndBlogs>>
          failureOrNewsAndBlogs});
}

class __$PhilanthropyNewsReceivedCopyWithImpl<$Res>
    extends _$PhilanthropyNewsEventCopyWithImpl<$Res>
    implements _$PhilanthropyNewsReceivedCopyWith<$Res> {
  __$PhilanthropyNewsReceivedCopyWithImpl(_PhilanthropyNewsReceived _value,
      $Res Function(_PhilanthropyNewsReceived) _then)
      : super(_value, (v) => _then(v as _PhilanthropyNewsReceived));

  @override
  _PhilanthropyNewsReceived get _value =>
      super._value as _PhilanthropyNewsReceived;

  @override
  $Res call({
    Object failureOrNewsAndBlogs = freezed,
  }) {
    return _then(_PhilanthropyNewsReceived(
      failureOrNewsAndBlogs == freezed
          ? _value.failureOrNewsAndBlogs
          : failureOrNewsAndBlogs
              as Either<NewsAndBlogsFailure, KtList<NewsAndBlogs>>,
    ));
  }
}

class _$_PhilanthropyNewsReceived
    with DiagnosticableTreeMixin
    implements _PhilanthropyNewsReceived {
  const _$_PhilanthropyNewsReceived(this.failureOrNewsAndBlogs)
      : assert(failureOrNewsAndBlogs != null);

  @override
  final Either<NewsAndBlogsFailure, KtList<NewsAndBlogs>> failureOrNewsAndBlogs;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PhilanthropyNewsEvent.philanthropyNewsReceived(failureOrNewsAndBlogs: $failureOrNewsAndBlogs)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'PhilanthropyNewsEvent.philanthropyNewsReceived'))
      ..add(
          DiagnosticsProperty('failureOrNewsAndBlogs', failureOrNewsAndBlogs));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PhilanthropyNewsReceived &&
            (identical(other.failureOrNewsAndBlogs, failureOrNewsAndBlogs) ||
                const DeepCollectionEquality().equals(
                    other.failureOrNewsAndBlogs, failureOrNewsAndBlogs)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrNewsAndBlogs);

  @override
  _$PhilanthropyNewsReceivedCopyWith<_PhilanthropyNewsReceived> get copyWith =>
      __$PhilanthropyNewsReceivedCopyWithImpl<_PhilanthropyNewsReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getAllPhilanthropyNews(),
    @required
        Result philanthropyNewsReceived(
            Either<NewsAndBlogsFailure, KtList<NewsAndBlogs>>
                failureOrNewsAndBlogs),
  }) {
    assert(getAllPhilanthropyNews != null);
    assert(philanthropyNewsReceived != null);
    return philanthropyNewsReceived(failureOrNewsAndBlogs);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getAllPhilanthropyNews(),
    Result philanthropyNewsReceived(
        Either<NewsAndBlogsFailure, KtList<NewsAndBlogs>>
            failureOrNewsAndBlogs),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (philanthropyNewsReceived != null) {
      return philanthropyNewsReceived(failureOrNewsAndBlogs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getAllPhilanthropyNews(_PhilanthropyNewsEvent value),
    @required Result philanthropyNewsReceived(_PhilanthropyNewsReceived value),
  }) {
    assert(getAllPhilanthropyNews != null);
    assert(philanthropyNewsReceived != null);
    return philanthropyNewsReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getAllPhilanthropyNews(_PhilanthropyNewsEvent value),
    Result philanthropyNewsReceived(_PhilanthropyNewsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (philanthropyNewsReceived != null) {
      return philanthropyNewsReceived(this);
    }
    return orElse();
  }
}

abstract class _PhilanthropyNewsReceived implements PhilanthropyNewsEvent {
  const factory _PhilanthropyNewsReceived(
      Either<NewsAndBlogsFailure, KtList<NewsAndBlogs>>
          failureOrNewsAndBlogs) = _$_PhilanthropyNewsReceived;

  Either<NewsAndBlogsFailure, KtList<NewsAndBlogs>> get failureOrNewsAndBlogs;
  _$PhilanthropyNewsReceivedCopyWith<_PhilanthropyNewsReceived> get copyWith;
}

class _$PhilanthropyNewsStateTearOff {
  const _$PhilanthropyNewsStateTearOff();

  Initial initial() {
    return const Initial();
  }

  LoadingData loadingData() {
    return const LoadingData();
  }

  LoadSuccess loadSuccess(KtList<NewsAndBlogs> newsAndBlogs) {
    return LoadSuccess(
      newsAndBlogs,
    );
  }

  LoadFailure loadFailure(NewsAndBlogsFailure newsAndBlogsFailure) {
    return LoadFailure(
      newsAndBlogsFailure,
    );
  }
}

// ignore: unused_element
const $PhilanthropyNewsState = _$PhilanthropyNewsStateTearOff();

mixin _$PhilanthropyNewsState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadingData(),
    @required Result loadSuccess(KtList<NewsAndBlogs> newsAndBlogs),
    @required Result loadFailure(NewsAndBlogsFailure newsAndBlogsFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadingData(),
    Result loadSuccess(KtList<NewsAndBlogs> newsAndBlogs),
    Result loadFailure(NewsAndBlogsFailure newsAndBlogsFailure),
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

abstract class $PhilanthropyNewsStateCopyWith<$Res> {
  factory $PhilanthropyNewsStateCopyWith(PhilanthropyNewsState value,
          $Res Function(PhilanthropyNewsState) then) =
      _$PhilanthropyNewsStateCopyWithImpl<$Res>;
}

class _$PhilanthropyNewsStateCopyWithImpl<$Res>
    implements $PhilanthropyNewsStateCopyWith<$Res> {
  _$PhilanthropyNewsStateCopyWithImpl(this._value, this._then);

  final PhilanthropyNewsState _value;
  // ignore: unused_field
  final $Res Function(PhilanthropyNewsState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res>
    extends _$PhilanthropyNewsStateCopyWithImpl<$Res>
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
    return 'PhilanthropyNewsState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PhilanthropyNewsState.initial'));
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
    @required Result loadSuccess(KtList<NewsAndBlogs> newsAndBlogs),
    @required Result loadFailure(NewsAndBlogsFailure newsAndBlogsFailure),
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
    Result loadSuccess(KtList<NewsAndBlogs> newsAndBlogs),
    Result loadFailure(NewsAndBlogsFailure newsAndBlogsFailure),
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

abstract class Initial implements PhilanthropyNewsState {
  const factory Initial() = _$Initial;
}

abstract class $LoadingDataCopyWith<$Res> {
  factory $LoadingDataCopyWith(
          LoadingData value, $Res Function(LoadingData) then) =
      _$LoadingDataCopyWithImpl<$Res>;
}

class _$LoadingDataCopyWithImpl<$Res>
    extends _$PhilanthropyNewsStateCopyWithImpl<$Res>
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
    return 'PhilanthropyNewsState.loadingData()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PhilanthropyNewsState.loadingData'));
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
    @required Result loadSuccess(KtList<NewsAndBlogs> newsAndBlogs),
    @required Result loadFailure(NewsAndBlogsFailure newsAndBlogsFailure),
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
    Result loadSuccess(KtList<NewsAndBlogs> newsAndBlogs),
    Result loadFailure(NewsAndBlogsFailure newsAndBlogsFailure),
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

abstract class LoadingData implements PhilanthropyNewsState {
  const factory LoadingData() = _$LoadingData;
}

abstract class $LoadSuccessCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<NewsAndBlogs> newsAndBlogs});
}

class _$LoadSuccessCopyWithImpl<$Res>
    extends _$PhilanthropyNewsStateCopyWithImpl<$Res>
    implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(
      LoadSuccess _value, $Res Function(LoadSuccess) _then)
      : super(_value, (v) => _then(v as LoadSuccess));

  @override
  LoadSuccess get _value => super._value as LoadSuccess;

  @override
  $Res call({
    Object newsAndBlogs = freezed,
  }) {
    return _then(LoadSuccess(
      newsAndBlogs == freezed
          ? _value.newsAndBlogs
          : newsAndBlogs as KtList<NewsAndBlogs>,
    ));
  }
}

class _$LoadSuccess with DiagnosticableTreeMixin implements LoadSuccess {
  const _$LoadSuccess(this.newsAndBlogs) : assert(newsAndBlogs != null);

  @override
  final KtList<NewsAndBlogs> newsAndBlogs;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PhilanthropyNewsState.loadSuccess(newsAndBlogs: $newsAndBlogs)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PhilanthropyNewsState.loadSuccess'))
      ..add(DiagnosticsProperty('newsAndBlogs', newsAndBlogs));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSuccess &&
            (identical(other.newsAndBlogs, newsAndBlogs) ||
                const DeepCollectionEquality()
                    .equals(other.newsAndBlogs, newsAndBlogs)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(newsAndBlogs);

  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadingData(),
    @required Result loadSuccess(KtList<NewsAndBlogs> newsAndBlogs),
    @required Result loadFailure(NewsAndBlogsFailure newsAndBlogsFailure),
  }) {
    assert(initial != null);
    assert(loadingData != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(newsAndBlogs);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadingData(),
    Result loadSuccess(KtList<NewsAndBlogs> newsAndBlogs),
    Result loadFailure(NewsAndBlogsFailure newsAndBlogsFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(newsAndBlogs);
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

abstract class LoadSuccess implements PhilanthropyNewsState {
  const factory LoadSuccess(KtList<NewsAndBlogs> newsAndBlogs) = _$LoadSuccess;

  KtList<NewsAndBlogs> get newsAndBlogs;
  $LoadSuccessCopyWith<LoadSuccess> get copyWith;
}

abstract class $LoadFailureCopyWith<$Res> {
  factory $LoadFailureCopyWith(
          LoadFailure value, $Res Function(LoadFailure) then) =
      _$LoadFailureCopyWithImpl<$Res>;
  $Res call({NewsAndBlogsFailure newsAndBlogsFailure});

  $NewsAndBlogsFailureCopyWith<$Res> get newsAndBlogsFailure;
}

class _$LoadFailureCopyWithImpl<$Res>
    extends _$PhilanthropyNewsStateCopyWithImpl<$Res>
    implements $LoadFailureCopyWith<$Res> {
  _$LoadFailureCopyWithImpl(
      LoadFailure _value, $Res Function(LoadFailure) _then)
      : super(_value, (v) => _then(v as LoadFailure));

  @override
  LoadFailure get _value => super._value as LoadFailure;

  @override
  $Res call({
    Object newsAndBlogsFailure = freezed,
  }) {
    return _then(LoadFailure(
      newsAndBlogsFailure == freezed
          ? _value.newsAndBlogsFailure
          : newsAndBlogsFailure as NewsAndBlogsFailure,
    ));
  }

  @override
  $NewsAndBlogsFailureCopyWith<$Res> get newsAndBlogsFailure {
    if (_value.newsAndBlogsFailure == null) {
      return null;
    }
    return $NewsAndBlogsFailureCopyWith<$Res>(_value.newsAndBlogsFailure,
        (value) {
      return _then(_value.copyWith(newsAndBlogsFailure: value));
    });
  }
}

class _$LoadFailure with DiagnosticableTreeMixin implements LoadFailure {
  const _$LoadFailure(this.newsAndBlogsFailure)
      : assert(newsAndBlogsFailure != null);

  @override
  final NewsAndBlogsFailure newsAndBlogsFailure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PhilanthropyNewsState.loadFailure(newsAndBlogsFailure: $newsAndBlogsFailure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PhilanthropyNewsState.loadFailure'))
      ..add(DiagnosticsProperty('newsAndBlogsFailure', newsAndBlogsFailure));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadFailure &&
            (identical(other.newsAndBlogsFailure, newsAndBlogsFailure) ||
                const DeepCollectionEquality()
                    .equals(other.newsAndBlogsFailure, newsAndBlogsFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(newsAndBlogsFailure);

  @override
  $LoadFailureCopyWith<LoadFailure> get copyWith =>
      _$LoadFailureCopyWithImpl<LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadingData(),
    @required Result loadSuccess(KtList<NewsAndBlogs> newsAndBlogs),
    @required Result loadFailure(NewsAndBlogsFailure newsAndBlogsFailure),
  }) {
    assert(initial != null);
    assert(loadingData != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(newsAndBlogsFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadingData(),
    Result loadSuccess(KtList<NewsAndBlogs> newsAndBlogs),
    Result loadFailure(NewsAndBlogsFailure newsAndBlogsFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(newsAndBlogsFailure);
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

abstract class LoadFailure implements PhilanthropyNewsState {
  const factory LoadFailure(NewsAndBlogsFailure newsAndBlogsFailure) =
      _$LoadFailure;

  NewsAndBlogsFailure get newsAndBlogsFailure;
  $LoadFailureCopyWith<LoadFailure> get copyWith;
}
