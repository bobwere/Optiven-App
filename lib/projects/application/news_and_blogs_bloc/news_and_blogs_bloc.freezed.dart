// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'news_and_blogs_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$NewsAndBlogsEventTearOff {
  const _$NewsAndBlogsEventTearOff();

  _GetAllNewsAndBlogs getAllNewsAndBlogs() {
    return const _GetAllNewsAndBlogs();
  }

  _GetFirstNewsAndBlogs getFirstNewsAndBlogs() {
    return const _GetFirstNewsAndBlogs();
  }

  _GetMoreNewsAndBlogs getMoreNewsAndBlogs() {
    return const _GetMoreNewsAndBlogs();
  }

  _NewsANdBlogsReceived newsAndBlogsReceived(
      Either<NewsAndBlogsFailure, KtList<NewsAndBlogs>> failureOrNewsAndBlogs) {
    return _NewsANdBlogsReceived(
      failureOrNewsAndBlogs,
    );
  }
}

// ignore: unused_element
const $NewsAndBlogsEvent = _$NewsAndBlogsEventTearOff();

mixin _$NewsAndBlogsEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getAllNewsAndBlogs(),
    @required Result getFirstNewsAndBlogs(),
    @required Result getMoreNewsAndBlogs(),
    @required
        Result newsAndBlogsReceived(
            Either<NewsAndBlogsFailure, KtList<NewsAndBlogs>>
                failureOrNewsAndBlogs),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getAllNewsAndBlogs(),
    Result getFirstNewsAndBlogs(),
    Result getMoreNewsAndBlogs(),
    Result newsAndBlogsReceived(
        Either<NewsAndBlogsFailure, KtList<NewsAndBlogs>>
            failureOrNewsAndBlogs),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getAllNewsAndBlogs(_GetAllNewsAndBlogs value),
    @required Result getFirstNewsAndBlogs(_GetFirstNewsAndBlogs value),
    @required Result getMoreNewsAndBlogs(_GetMoreNewsAndBlogs value),
    @required Result newsAndBlogsReceived(_NewsANdBlogsReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getAllNewsAndBlogs(_GetAllNewsAndBlogs value),
    Result getFirstNewsAndBlogs(_GetFirstNewsAndBlogs value),
    Result getMoreNewsAndBlogs(_GetMoreNewsAndBlogs value),
    Result newsAndBlogsReceived(_NewsANdBlogsReceived value),
    @required Result orElse(),
  });
}

abstract class $NewsAndBlogsEventCopyWith<$Res> {
  factory $NewsAndBlogsEventCopyWith(
          NewsAndBlogsEvent value, $Res Function(NewsAndBlogsEvent) then) =
      _$NewsAndBlogsEventCopyWithImpl<$Res>;
}

class _$NewsAndBlogsEventCopyWithImpl<$Res>
    implements $NewsAndBlogsEventCopyWith<$Res> {
  _$NewsAndBlogsEventCopyWithImpl(this._value, this._then);

  final NewsAndBlogsEvent _value;
  // ignore: unused_field
  final $Res Function(NewsAndBlogsEvent) _then;
}

abstract class _$GetAllNewsAndBlogsCopyWith<$Res> {
  factory _$GetAllNewsAndBlogsCopyWith(
          _GetAllNewsAndBlogs value, $Res Function(_GetAllNewsAndBlogs) then) =
      __$GetAllNewsAndBlogsCopyWithImpl<$Res>;
}

class __$GetAllNewsAndBlogsCopyWithImpl<$Res>
    extends _$NewsAndBlogsEventCopyWithImpl<$Res>
    implements _$GetAllNewsAndBlogsCopyWith<$Res> {
  __$GetAllNewsAndBlogsCopyWithImpl(
      _GetAllNewsAndBlogs _value, $Res Function(_GetAllNewsAndBlogs) _then)
      : super(_value, (v) => _then(v as _GetAllNewsAndBlogs));

  @override
  _GetAllNewsAndBlogs get _value => super._value as _GetAllNewsAndBlogs;
}

class _$_GetAllNewsAndBlogs
    with DiagnosticableTreeMixin
    implements _GetAllNewsAndBlogs {
  const _$_GetAllNewsAndBlogs();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewsAndBlogsEvent.getAllNewsAndBlogs()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'NewsAndBlogsEvent.getAllNewsAndBlogs'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetAllNewsAndBlogs);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getAllNewsAndBlogs(),
    @required Result getFirstNewsAndBlogs(),
    @required Result getMoreNewsAndBlogs(),
    @required
        Result newsAndBlogsReceived(
            Either<NewsAndBlogsFailure, KtList<NewsAndBlogs>>
                failureOrNewsAndBlogs),
  }) {
    assert(getAllNewsAndBlogs != null);
    assert(getFirstNewsAndBlogs != null);
    assert(getMoreNewsAndBlogs != null);
    assert(newsAndBlogsReceived != null);
    return getAllNewsAndBlogs();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getAllNewsAndBlogs(),
    Result getFirstNewsAndBlogs(),
    Result getMoreNewsAndBlogs(),
    Result newsAndBlogsReceived(
        Either<NewsAndBlogsFailure, KtList<NewsAndBlogs>>
            failureOrNewsAndBlogs),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getAllNewsAndBlogs != null) {
      return getAllNewsAndBlogs();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getAllNewsAndBlogs(_GetAllNewsAndBlogs value),
    @required Result getFirstNewsAndBlogs(_GetFirstNewsAndBlogs value),
    @required Result getMoreNewsAndBlogs(_GetMoreNewsAndBlogs value),
    @required Result newsAndBlogsReceived(_NewsANdBlogsReceived value),
  }) {
    assert(getAllNewsAndBlogs != null);
    assert(getFirstNewsAndBlogs != null);
    assert(getMoreNewsAndBlogs != null);
    assert(newsAndBlogsReceived != null);
    return getAllNewsAndBlogs(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getAllNewsAndBlogs(_GetAllNewsAndBlogs value),
    Result getFirstNewsAndBlogs(_GetFirstNewsAndBlogs value),
    Result getMoreNewsAndBlogs(_GetMoreNewsAndBlogs value),
    Result newsAndBlogsReceived(_NewsANdBlogsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getAllNewsAndBlogs != null) {
      return getAllNewsAndBlogs(this);
    }
    return orElse();
  }
}

abstract class _GetAllNewsAndBlogs implements NewsAndBlogsEvent {
  const factory _GetAllNewsAndBlogs() = _$_GetAllNewsAndBlogs;
}

abstract class _$GetFirstNewsAndBlogsCopyWith<$Res> {
  factory _$GetFirstNewsAndBlogsCopyWith(_GetFirstNewsAndBlogs value,
          $Res Function(_GetFirstNewsAndBlogs) then) =
      __$GetFirstNewsAndBlogsCopyWithImpl<$Res>;
}

class __$GetFirstNewsAndBlogsCopyWithImpl<$Res>
    extends _$NewsAndBlogsEventCopyWithImpl<$Res>
    implements _$GetFirstNewsAndBlogsCopyWith<$Res> {
  __$GetFirstNewsAndBlogsCopyWithImpl(
      _GetFirstNewsAndBlogs _value, $Res Function(_GetFirstNewsAndBlogs) _then)
      : super(_value, (v) => _then(v as _GetFirstNewsAndBlogs));

  @override
  _GetFirstNewsAndBlogs get _value => super._value as _GetFirstNewsAndBlogs;
}

class _$_GetFirstNewsAndBlogs
    with DiagnosticableTreeMixin
    implements _GetFirstNewsAndBlogs {
  const _$_GetFirstNewsAndBlogs();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewsAndBlogsEvent.getFirstNewsAndBlogs()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'NewsAndBlogsEvent.getFirstNewsAndBlogs'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetFirstNewsAndBlogs);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getAllNewsAndBlogs(),
    @required Result getFirstNewsAndBlogs(),
    @required Result getMoreNewsAndBlogs(),
    @required
        Result newsAndBlogsReceived(
            Either<NewsAndBlogsFailure, KtList<NewsAndBlogs>>
                failureOrNewsAndBlogs),
  }) {
    assert(getAllNewsAndBlogs != null);
    assert(getFirstNewsAndBlogs != null);
    assert(getMoreNewsAndBlogs != null);
    assert(newsAndBlogsReceived != null);
    return getFirstNewsAndBlogs();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getAllNewsAndBlogs(),
    Result getFirstNewsAndBlogs(),
    Result getMoreNewsAndBlogs(),
    Result newsAndBlogsReceived(
        Either<NewsAndBlogsFailure, KtList<NewsAndBlogs>>
            failureOrNewsAndBlogs),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getFirstNewsAndBlogs != null) {
      return getFirstNewsAndBlogs();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getAllNewsAndBlogs(_GetAllNewsAndBlogs value),
    @required Result getFirstNewsAndBlogs(_GetFirstNewsAndBlogs value),
    @required Result getMoreNewsAndBlogs(_GetMoreNewsAndBlogs value),
    @required Result newsAndBlogsReceived(_NewsANdBlogsReceived value),
  }) {
    assert(getAllNewsAndBlogs != null);
    assert(getFirstNewsAndBlogs != null);
    assert(getMoreNewsAndBlogs != null);
    assert(newsAndBlogsReceived != null);
    return getFirstNewsAndBlogs(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getAllNewsAndBlogs(_GetAllNewsAndBlogs value),
    Result getFirstNewsAndBlogs(_GetFirstNewsAndBlogs value),
    Result getMoreNewsAndBlogs(_GetMoreNewsAndBlogs value),
    Result newsAndBlogsReceived(_NewsANdBlogsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getFirstNewsAndBlogs != null) {
      return getFirstNewsAndBlogs(this);
    }
    return orElse();
  }
}

abstract class _GetFirstNewsAndBlogs implements NewsAndBlogsEvent {
  const factory _GetFirstNewsAndBlogs() = _$_GetFirstNewsAndBlogs;
}

abstract class _$GetMoreNewsAndBlogsCopyWith<$Res> {
  factory _$GetMoreNewsAndBlogsCopyWith(_GetMoreNewsAndBlogs value,
          $Res Function(_GetMoreNewsAndBlogs) then) =
      __$GetMoreNewsAndBlogsCopyWithImpl<$Res>;
}

class __$GetMoreNewsAndBlogsCopyWithImpl<$Res>
    extends _$NewsAndBlogsEventCopyWithImpl<$Res>
    implements _$GetMoreNewsAndBlogsCopyWith<$Res> {
  __$GetMoreNewsAndBlogsCopyWithImpl(
      _GetMoreNewsAndBlogs _value, $Res Function(_GetMoreNewsAndBlogs) _then)
      : super(_value, (v) => _then(v as _GetMoreNewsAndBlogs));

  @override
  _GetMoreNewsAndBlogs get _value => super._value as _GetMoreNewsAndBlogs;
}

class _$_GetMoreNewsAndBlogs
    with DiagnosticableTreeMixin
    implements _GetMoreNewsAndBlogs {
  const _$_GetMoreNewsAndBlogs();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewsAndBlogsEvent.getMoreNewsAndBlogs()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'NewsAndBlogsEvent.getMoreNewsAndBlogs'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetMoreNewsAndBlogs);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getAllNewsAndBlogs(),
    @required Result getFirstNewsAndBlogs(),
    @required Result getMoreNewsAndBlogs(),
    @required
        Result newsAndBlogsReceived(
            Either<NewsAndBlogsFailure, KtList<NewsAndBlogs>>
                failureOrNewsAndBlogs),
  }) {
    assert(getAllNewsAndBlogs != null);
    assert(getFirstNewsAndBlogs != null);
    assert(getMoreNewsAndBlogs != null);
    assert(newsAndBlogsReceived != null);
    return getMoreNewsAndBlogs();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getAllNewsAndBlogs(),
    Result getFirstNewsAndBlogs(),
    Result getMoreNewsAndBlogs(),
    Result newsAndBlogsReceived(
        Either<NewsAndBlogsFailure, KtList<NewsAndBlogs>>
            failureOrNewsAndBlogs),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getMoreNewsAndBlogs != null) {
      return getMoreNewsAndBlogs();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getAllNewsAndBlogs(_GetAllNewsAndBlogs value),
    @required Result getFirstNewsAndBlogs(_GetFirstNewsAndBlogs value),
    @required Result getMoreNewsAndBlogs(_GetMoreNewsAndBlogs value),
    @required Result newsAndBlogsReceived(_NewsANdBlogsReceived value),
  }) {
    assert(getAllNewsAndBlogs != null);
    assert(getFirstNewsAndBlogs != null);
    assert(getMoreNewsAndBlogs != null);
    assert(newsAndBlogsReceived != null);
    return getMoreNewsAndBlogs(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getAllNewsAndBlogs(_GetAllNewsAndBlogs value),
    Result getFirstNewsAndBlogs(_GetFirstNewsAndBlogs value),
    Result getMoreNewsAndBlogs(_GetMoreNewsAndBlogs value),
    Result newsAndBlogsReceived(_NewsANdBlogsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getMoreNewsAndBlogs != null) {
      return getMoreNewsAndBlogs(this);
    }
    return orElse();
  }
}

abstract class _GetMoreNewsAndBlogs implements NewsAndBlogsEvent {
  const factory _GetMoreNewsAndBlogs() = _$_GetMoreNewsAndBlogs;
}

abstract class _$NewsANdBlogsReceivedCopyWith<$Res> {
  factory _$NewsANdBlogsReceivedCopyWith(_NewsANdBlogsReceived value,
          $Res Function(_NewsANdBlogsReceived) then) =
      __$NewsANdBlogsReceivedCopyWithImpl<$Res>;
  $Res call(
      {Either<NewsAndBlogsFailure, KtList<NewsAndBlogs>>
          failureOrNewsAndBlogs});
}

class __$NewsANdBlogsReceivedCopyWithImpl<$Res>
    extends _$NewsAndBlogsEventCopyWithImpl<$Res>
    implements _$NewsANdBlogsReceivedCopyWith<$Res> {
  __$NewsANdBlogsReceivedCopyWithImpl(
      _NewsANdBlogsReceived _value, $Res Function(_NewsANdBlogsReceived) _then)
      : super(_value, (v) => _then(v as _NewsANdBlogsReceived));

  @override
  _NewsANdBlogsReceived get _value => super._value as _NewsANdBlogsReceived;

  @override
  $Res call({
    Object failureOrNewsAndBlogs = freezed,
  }) {
    return _then(_NewsANdBlogsReceived(
      failureOrNewsAndBlogs == freezed
          ? _value.failureOrNewsAndBlogs
          : failureOrNewsAndBlogs
              as Either<NewsAndBlogsFailure, KtList<NewsAndBlogs>>,
    ));
  }
}

class _$_NewsANdBlogsReceived
    with DiagnosticableTreeMixin
    implements _NewsANdBlogsReceived {
  const _$_NewsANdBlogsReceived(this.failureOrNewsAndBlogs)
      : assert(failureOrNewsAndBlogs != null);

  @override
  final Either<NewsAndBlogsFailure, KtList<NewsAndBlogs>> failureOrNewsAndBlogs;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewsAndBlogsEvent.newsAndBlogsReceived(failureOrNewsAndBlogs: $failureOrNewsAndBlogs)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'NewsAndBlogsEvent.newsAndBlogsReceived'))
      ..add(
          DiagnosticsProperty('failureOrNewsAndBlogs', failureOrNewsAndBlogs));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewsANdBlogsReceived &&
            (identical(other.failureOrNewsAndBlogs, failureOrNewsAndBlogs) ||
                const DeepCollectionEquality().equals(
                    other.failureOrNewsAndBlogs, failureOrNewsAndBlogs)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrNewsAndBlogs);

  @override
  _$NewsANdBlogsReceivedCopyWith<_NewsANdBlogsReceived> get copyWith =>
      __$NewsANdBlogsReceivedCopyWithImpl<_NewsANdBlogsReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getAllNewsAndBlogs(),
    @required Result getFirstNewsAndBlogs(),
    @required Result getMoreNewsAndBlogs(),
    @required
        Result newsAndBlogsReceived(
            Either<NewsAndBlogsFailure, KtList<NewsAndBlogs>>
                failureOrNewsAndBlogs),
  }) {
    assert(getAllNewsAndBlogs != null);
    assert(getFirstNewsAndBlogs != null);
    assert(getMoreNewsAndBlogs != null);
    assert(newsAndBlogsReceived != null);
    return newsAndBlogsReceived(failureOrNewsAndBlogs);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getAllNewsAndBlogs(),
    Result getFirstNewsAndBlogs(),
    Result getMoreNewsAndBlogs(),
    Result newsAndBlogsReceived(
        Either<NewsAndBlogsFailure, KtList<NewsAndBlogs>>
            failureOrNewsAndBlogs),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (newsAndBlogsReceived != null) {
      return newsAndBlogsReceived(failureOrNewsAndBlogs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getAllNewsAndBlogs(_GetAllNewsAndBlogs value),
    @required Result getFirstNewsAndBlogs(_GetFirstNewsAndBlogs value),
    @required Result getMoreNewsAndBlogs(_GetMoreNewsAndBlogs value),
    @required Result newsAndBlogsReceived(_NewsANdBlogsReceived value),
  }) {
    assert(getAllNewsAndBlogs != null);
    assert(getFirstNewsAndBlogs != null);
    assert(getMoreNewsAndBlogs != null);
    assert(newsAndBlogsReceived != null);
    return newsAndBlogsReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getAllNewsAndBlogs(_GetAllNewsAndBlogs value),
    Result getFirstNewsAndBlogs(_GetFirstNewsAndBlogs value),
    Result getMoreNewsAndBlogs(_GetMoreNewsAndBlogs value),
    Result newsAndBlogsReceived(_NewsANdBlogsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (newsAndBlogsReceived != null) {
      return newsAndBlogsReceived(this);
    }
    return orElse();
  }
}

abstract class _NewsANdBlogsReceived implements NewsAndBlogsEvent {
  const factory _NewsANdBlogsReceived(
      Either<NewsAndBlogsFailure, KtList<NewsAndBlogs>>
          failureOrNewsAndBlogs) = _$_NewsANdBlogsReceived;

  Either<NewsAndBlogsFailure, KtList<NewsAndBlogs>> get failureOrNewsAndBlogs;
  _$NewsANdBlogsReceivedCopyWith<_NewsANdBlogsReceived> get copyWith;
}

class _$NewsAndBlogsStateTearOff {
  const _$NewsAndBlogsStateTearOff();

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
const $NewsAndBlogsState = _$NewsAndBlogsStateTearOff();

mixin _$NewsAndBlogsState {
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

abstract class $NewsAndBlogsStateCopyWith<$Res> {
  factory $NewsAndBlogsStateCopyWith(
          NewsAndBlogsState value, $Res Function(NewsAndBlogsState) then) =
      _$NewsAndBlogsStateCopyWithImpl<$Res>;
}

class _$NewsAndBlogsStateCopyWithImpl<$Res>
    implements $NewsAndBlogsStateCopyWith<$Res> {
  _$NewsAndBlogsStateCopyWithImpl(this._value, this._then);

  final NewsAndBlogsState _value;
  // ignore: unused_field
  final $Res Function(NewsAndBlogsState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$NewsAndBlogsStateCopyWithImpl<$Res>
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
    return 'NewsAndBlogsState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'NewsAndBlogsState.initial'));
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

abstract class Initial implements NewsAndBlogsState {
  const factory Initial() = _$Initial;
}

abstract class $LoadingDataCopyWith<$Res> {
  factory $LoadingDataCopyWith(
          LoadingData value, $Res Function(LoadingData) then) =
      _$LoadingDataCopyWithImpl<$Res>;
}

class _$LoadingDataCopyWithImpl<$Res>
    extends _$NewsAndBlogsStateCopyWithImpl<$Res>
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
    return 'NewsAndBlogsState.loadingData()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NewsAndBlogsState.loadingData'));
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

abstract class LoadingData implements NewsAndBlogsState {
  const factory LoadingData() = _$LoadingData;
}

abstract class $LoadSuccessCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<NewsAndBlogs> newsAndBlogs});
}

class _$LoadSuccessCopyWithImpl<$Res>
    extends _$NewsAndBlogsStateCopyWithImpl<$Res>
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
    return 'NewsAndBlogsState.loadSuccess(newsAndBlogs: $newsAndBlogs)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NewsAndBlogsState.loadSuccess'))
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

abstract class LoadSuccess implements NewsAndBlogsState {
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
    extends _$NewsAndBlogsStateCopyWithImpl<$Res>
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
    return 'NewsAndBlogsState.loadFailure(newsAndBlogsFailure: $newsAndBlogsFailure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NewsAndBlogsState.loadFailure'))
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

abstract class LoadFailure implements NewsAndBlogsState {
  const factory LoadFailure(NewsAndBlogsFailure newsAndBlogsFailure) =
      _$LoadFailure;

  NewsAndBlogsFailure get newsAndBlogsFailure;
  $LoadFailureCopyWith<LoadFailure> get copyWith;
}
