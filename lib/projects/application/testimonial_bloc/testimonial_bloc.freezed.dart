// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'testimonial_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$TestimonialEventTearOff {
  const _$TestimonialEventTearOff();

  _GetAllTestimonials getAllTestimonials() {
    return const _GetAllTestimonials();
  }

  _TestimonialsReceived testimonialsReceived(
      Either<TestimonialFailure, KtList<Testimonial>> failureOrTestimonials) {
    return _TestimonialsReceived(
      failureOrTestimonials,
    );
  }
}

// ignore: unused_element
const $TestimonialEvent = _$TestimonialEventTearOff();

mixin _$TestimonialEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getAllTestimonials(),
    @required
        Result testimonialsReceived(
            Either<TestimonialFailure, KtList<Testimonial>>
                failureOrTestimonials),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getAllTestimonials(),
    Result testimonialsReceived(
        Either<TestimonialFailure, KtList<Testimonial>> failureOrTestimonials),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getAllTestimonials(_GetAllTestimonials value),
    @required Result testimonialsReceived(_TestimonialsReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getAllTestimonials(_GetAllTestimonials value),
    Result testimonialsReceived(_TestimonialsReceived value),
    @required Result orElse(),
  });
}

abstract class $TestimonialEventCopyWith<$Res> {
  factory $TestimonialEventCopyWith(
          TestimonialEvent value, $Res Function(TestimonialEvent) then) =
      _$TestimonialEventCopyWithImpl<$Res>;
}

class _$TestimonialEventCopyWithImpl<$Res>
    implements $TestimonialEventCopyWith<$Res> {
  _$TestimonialEventCopyWithImpl(this._value, this._then);

  final TestimonialEvent _value;
  // ignore: unused_field
  final $Res Function(TestimonialEvent) _then;
}

abstract class _$GetAllTestimonialsCopyWith<$Res> {
  factory _$GetAllTestimonialsCopyWith(
          _GetAllTestimonials value, $Res Function(_GetAllTestimonials) then) =
      __$GetAllTestimonialsCopyWithImpl<$Res>;
}

class __$GetAllTestimonialsCopyWithImpl<$Res>
    extends _$TestimonialEventCopyWithImpl<$Res>
    implements _$GetAllTestimonialsCopyWith<$Res> {
  __$GetAllTestimonialsCopyWithImpl(
      _GetAllTestimonials _value, $Res Function(_GetAllTestimonials) _then)
      : super(_value, (v) => _then(v as _GetAllTestimonials));

  @override
  _GetAllTestimonials get _value => super._value as _GetAllTestimonials;
}

class _$_GetAllTestimonials
    with DiagnosticableTreeMixin
    implements _GetAllTestimonials {
  const _$_GetAllTestimonials();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TestimonialEvent.getAllTestimonials()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TestimonialEvent.getAllTestimonials'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetAllTestimonials);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getAllTestimonials(),
    @required
        Result testimonialsReceived(
            Either<TestimonialFailure, KtList<Testimonial>>
                failureOrTestimonials),
  }) {
    assert(getAllTestimonials != null);
    assert(testimonialsReceived != null);
    return getAllTestimonials();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getAllTestimonials(),
    Result testimonialsReceived(
        Either<TestimonialFailure, KtList<Testimonial>> failureOrTestimonials),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getAllTestimonials != null) {
      return getAllTestimonials();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getAllTestimonials(_GetAllTestimonials value),
    @required Result testimonialsReceived(_TestimonialsReceived value),
  }) {
    assert(getAllTestimonials != null);
    assert(testimonialsReceived != null);
    return getAllTestimonials(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getAllTestimonials(_GetAllTestimonials value),
    Result testimonialsReceived(_TestimonialsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getAllTestimonials != null) {
      return getAllTestimonials(this);
    }
    return orElse();
  }
}

abstract class _GetAllTestimonials implements TestimonialEvent {
  const factory _GetAllTestimonials() = _$_GetAllTestimonials;
}

abstract class _$TestimonialsReceivedCopyWith<$Res> {
  factory _$TestimonialsReceivedCopyWith(_TestimonialsReceived value,
          $Res Function(_TestimonialsReceived) then) =
      __$TestimonialsReceivedCopyWithImpl<$Res>;
  $Res call(
      {Either<TestimonialFailure, KtList<Testimonial>> failureOrTestimonials});
}

class __$TestimonialsReceivedCopyWithImpl<$Res>
    extends _$TestimonialEventCopyWithImpl<$Res>
    implements _$TestimonialsReceivedCopyWith<$Res> {
  __$TestimonialsReceivedCopyWithImpl(
      _TestimonialsReceived _value, $Res Function(_TestimonialsReceived) _then)
      : super(_value, (v) => _then(v as _TestimonialsReceived));

  @override
  _TestimonialsReceived get _value => super._value as _TestimonialsReceived;

  @override
  $Res call({
    Object failureOrTestimonials = freezed,
  }) {
    return _then(_TestimonialsReceived(
      failureOrTestimonials == freezed
          ? _value.failureOrTestimonials
          : failureOrTestimonials
              as Either<TestimonialFailure, KtList<Testimonial>>,
    ));
  }
}

class _$_TestimonialsReceived
    with DiagnosticableTreeMixin
    implements _TestimonialsReceived {
  const _$_TestimonialsReceived(this.failureOrTestimonials)
      : assert(failureOrTestimonials != null);

  @override
  final Either<TestimonialFailure, KtList<Testimonial>> failureOrTestimonials;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TestimonialEvent.testimonialsReceived(failureOrTestimonials: $failureOrTestimonials)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'TestimonialEvent.testimonialsReceived'))
      ..add(
          DiagnosticsProperty('failureOrTestimonials', failureOrTestimonials));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TestimonialsReceived &&
            (identical(other.failureOrTestimonials, failureOrTestimonials) ||
                const DeepCollectionEquality().equals(
                    other.failureOrTestimonials, failureOrTestimonials)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrTestimonials);

  @override
  _$TestimonialsReceivedCopyWith<_TestimonialsReceived> get copyWith =>
      __$TestimonialsReceivedCopyWithImpl<_TestimonialsReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getAllTestimonials(),
    @required
        Result testimonialsReceived(
            Either<TestimonialFailure, KtList<Testimonial>>
                failureOrTestimonials),
  }) {
    assert(getAllTestimonials != null);
    assert(testimonialsReceived != null);
    return testimonialsReceived(failureOrTestimonials);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getAllTestimonials(),
    Result testimonialsReceived(
        Either<TestimonialFailure, KtList<Testimonial>> failureOrTestimonials),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (testimonialsReceived != null) {
      return testimonialsReceived(failureOrTestimonials);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getAllTestimonials(_GetAllTestimonials value),
    @required Result testimonialsReceived(_TestimonialsReceived value),
  }) {
    assert(getAllTestimonials != null);
    assert(testimonialsReceived != null);
    return testimonialsReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getAllTestimonials(_GetAllTestimonials value),
    Result testimonialsReceived(_TestimonialsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (testimonialsReceived != null) {
      return testimonialsReceived(this);
    }
    return orElse();
  }
}

abstract class _TestimonialsReceived implements TestimonialEvent {
  const factory _TestimonialsReceived(
      Either<TestimonialFailure, KtList<Testimonial>>
          failureOrTestimonials) = _$_TestimonialsReceived;

  Either<TestimonialFailure, KtList<Testimonial>> get failureOrTestimonials;
  _$TestimonialsReceivedCopyWith<_TestimonialsReceived> get copyWith;
}

class _$TestimonialStateTearOff {
  const _$TestimonialStateTearOff();

  Initial initial() {
    return const Initial();
  }

  LoadingData loadingData() {
    return const LoadingData();
  }

  LoadSuccess loadSuccess(KtList<Testimonial> testimonials) {
    return LoadSuccess(
      testimonials,
    );
  }

  LoadFailure loadFailure(TestimonialFailure testimonialFailure) {
    return LoadFailure(
      testimonialFailure,
    );
  }
}

// ignore: unused_element
const $TestimonialState = _$TestimonialStateTearOff();

mixin _$TestimonialState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadingData(),
    @required Result loadSuccess(KtList<Testimonial> testimonials),
    @required Result loadFailure(TestimonialFailure testimonialFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadingData(),
    Result loadSuccess(KtList<Testimonial> testimonials),
    Result loadFailure(TestimonialFailure testimonialFailure),
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

abstract class $TestimonialStateCopyWith<$Res> {
  factory $TestimonialStateCopyWith(
          TestimonialState value, $Res Function(TestimonialState) then) =
      _$TestimonialStateCopyWithImpl<$Res>;
}

class _$TestimonialStateCopyWithImpl<$Res>
    implements $TestimonialStateCopyWith<$Res> {
  _$TestimonialStateCopyWithImpl(this._value, this._then);

  final TestimonialState _value;
  // ignore: unused_field
  final $Res Function(TestimonialState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$TestimonialStateCopyWithImpl<$Res>
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
    return 'TestimonialState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'TestimonialState.initial'));
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
    @required Result loadSuccess(KtList<Testimonial> testimonials),
    @required Result loadFailure(TestimonialFailure testimonialFailure),
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
    Result loadSuccess(KtList<Testimonial> testimonials),
    Result loadFailure(TestimonialFailure testimonialFailure),
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

abstract class Initial implements TestimonialState {
  const factory Initial() = _$Initial;
}

abstract class $LoadingDataCopyWith<$Res> {
  factory $LoadingDataCopyWith(
          LoadingData value, $Res Function(LoadingData) then) =
      _$LoadingDataCopyWithImpl<$Res>;
}

class _$LoadingDataCopyWithImpl<$Res>
    extends _$TestimonialStateCopyWithImpl<$Res>
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
    return 'TestimonialState.loadingData()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TestimonialState.loadingData'));
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
    @required Result loadSuccess(KtList<Testimonial> testimonials),
    @required Result loadFailure(TestimonialFailure testimonialFailure),
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
    Result loadSuccess(KtList<Testimonial> testimonials),
    Result loadFailure(TestimonialFailure testimonialFailure),
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

abstract class LoadingData implements TestimonialState {
  const factory LoadingData() = _$LoadingData;
}

abstract class $LoadSuccessCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<Testimonial> testimonials});
}

class _$LoadSuccessCopyWithImpl<$Res>
    extends _$TestimonialStateCopyWithImpl<$Res>
    implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(
      LoadSuccess _value, $Res Function(LoadSuccess) _then)
      : super(_value, (v) => _then(v as LoadSuccess));

  @override
  LoadSuccess get _value => super._value as LoadSuccess;

  @override
  $Res call({
    Object testimonials = freezed,
  }) {
    return _then(LoadSuccess(
      testimonials == freezed
          ? _value.testimonials
          : testimonials as KtList<Testimonial>,
    ));
  }
}

class _$LoadSuccess with DiagnosticableTreeMixin implements LoadSuccess {
  const _$LoadSuccess(this.testimonials) : assert(testimonials != null);

  @override
  final KtList<Testimonial> testimonials;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TestimonialState.loadSuccess(testimonials: $testimonials)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TestimonialState.loadSuccess'))
      ..add(DiagnosticsProperty('testimonials', testimonials));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSuccess &&
            (identical(other.testimonials, testimonials) ||
                const DeepCollectionEquality()
                    .equals(other.testimonials, testimonials)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(testimonials);

  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadingData(),
    @required Result loadSuccess(KtList<Testimonial> testimonials),
    @required Result loadFailure(TestimonialFailure testimonialFailure),
  }) {
    assert(initial != null);
    assert(loadingData != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(testimonials);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadingData(),
    Result loadSuccess(KtList<Testimonial> testimonials),
    Result loadFailure(TestimonialFailure testimonialFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(testimonials);
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

abstract class LoadSuccess implements TestimonialState {
  const factory LoadSuccess(KtList<Testimonial> testimonials) = _$LoadSuccess;

  KtList<Testimonial> get testimonials;
  $LoadSuccessCopyWith<LoadSuccess> get copyWith;
}

abstract class $LoadFailureCopyWith<$Res> {
  factory $LoadFailureCopyWith(
          LoadFailure value, $Res Function(LoadFailure) then) =
      _$LoadFailureCopyWithImpl<$Res>;
  $Res call({TestimonialFailure testimonialFailure});

  $TestimonialFailureCopyWith<$Res> get testimonialFailure;
}

class _$LoadFailureCopyWithImpl<$Res>
    extends _$TestimonialStateCopyWithImpl<$Res>
    implements $LoadFailureCopyWith<$Res> {
  _$LoadFailureCopyWithImpl(
      LoadFailure _value, $Res Function(LoadFailure) _then)
      : super(_value, (v) => _then(v as LoadFailure));

  @override
  LoadFailure get _value => super._value as LoadFailure;

  @override
  $Res call({
    Object testimonialFailure = freezed,
  }) {
    return _then(LoadFailure(
      testimonialFailure == freezed
          ? _value.testimonialFailure
          : testimonialFailure as TestimonialFailure,
    ));
  }

  @override
  $TestimonialFailureCopyWith<$Res> get testimonialFailure {
    if (_value.testimonialFailure == null) {
      return null;
    }
    return $TestimonialFailureCopyWith<$Res>(_value.testimonialFailure,
        (value) {
      return _then(_value.copyWith(testimonialFailure: value));
    });
  }
}

class _$LoadFailure with DiagnosticableTreeMixin implements LoadFailure {
  const _$LoadFailure(this.testimonialFailure)
      : assert(testimonialFailure != null);

  @override
  final TestimonialFailure testimonialFailure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TestimonialState.loadFailure(testimonialFailure: $testimonialFailure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TestimonialState.loadFailure'))
      ..add(DiagnosticsProperty('testimonialFailure', testimonialFailure));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadFailure &&
            (identical(other.testimonialFailure, testimonialFailure) ||
                const DeepCollectionEquality()
                    .equals(other.testimonialFailure, testimonialFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(testimonialFailure);

  @override
  $LoadFailureCopyWith<LoadFailure> get copyWith =>
      _$LoadFailureCopyWithImpl<LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadingData(),
    @required Result loadSuccess(KtList<Testimonial> testimonials),
    @required Result loadFailure(TestimonialFailure testimonialFailure),
  }) {
    assert(initial != null);
    assert(loadingData != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(testimonialFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadingData(),
    Result loadSuccess(KtList<Testimonial> testimonials),
    Result loadFailure(TestimonialFailure testimonialFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(testimonialFailure);
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

abstract class LoadFailure implements TestimonialState {
  const factory LoadFailure(TestimonialFailure testimonialFailure) =
      _$LoadFailure;

  TestimonialFailure get testimonialFailure;
  $LoadFailureCopyWith<LoadFailure> get copyWith;
}
