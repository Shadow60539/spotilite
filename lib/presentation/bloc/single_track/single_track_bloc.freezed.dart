// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'single_track_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SingleTrackEventTearOff {
  const _$SingleTrackEventTearOff();

// ignore: unused_element
  _GetSingleTrackEvent getSingleTrackAndLyrics({String trackId}) {
    return _GetSingleTrackEvent(
      trackId: trackId,
    );
  }

// ignore: unused_element
  _LikeSongEvent likeSong({String trackId}) {
    return _LikeSongEvent(
      trackId: trackId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SingleTrackEvent = _$SingleTrackEventTearOff();

/// @nodoc
mixin _$SingleTrackEvent {
  String get trackId;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getSingleTrackAndLyrics(String trackId),
    @required Result likeSong(String trackId),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getSingleTrackAndLyrics(String trackId),
    Result likeSong(String trackId),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getSingleTrackAndLyrics(_GetSingleTrackEvent value),
    @required Result likeSong(_LikeSongEvent value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getSingleTrackAndLyrics(_GetSingleTrackEvent value),
    Result likeSong(_LikeSongEvent value),
    @required Result orElse(),
  });

  $SingleTrackEventCopyWith<SingleTrackEvent> get copyWith;
}

/// @nodoc
abstract class $SingleTrackEventCopyWith<$Res> {
  factory $SingleTrackEventCopyWith(
          SingleTrackEvent value, $Res Function(SingleTrackEvent) then) =
      _$SingleTrackEventCopyWithImpl<$Res>;
  $Res call({String trackId});
}

/// @nodoc
class _$SingleTrackEventCopyWithImpl<$Res>
    implements $SingleTrackEventCopyWith<$Res> {
  _$SingleTrackEventCopyWithImpl(this._value, this._then);

  final SingleTrackEvent _value;
  // ignore: unused_field
  final $Res Function(SingleTrackEvent) _then;

  @override
  $Res call({
    Object trackId = freezed,
  }) {
    return _then(_value.copyWith(
      trackId: trackId == freezed ? _value.trackId : trackId as String,
    ));
  }
}

/// @nodoc
abstract class _$GetSingleTrackEventCopyWith<$Res>
    implements $SingleTrackEventCopyWith<$Res> {
  factory _$GetSingleTrackEventCopyWith(_GetSingleTrackEvent value,
          $Res Function(_GetSingleTrackEvent) then) =
      __$GetSingleTrackEventCopyWithImpl<$Res>;
  @override
  $Res call({String trackId});
}

/// @nodoc
class __$GetSingleTrackEventCopyWithImpl<$Res>
    extends _$SingleTrackEventCopyWithImpl<$Res>
    implements _$GetSingleTrackEventCopyWith<$Res> {
  __$GetSingleTrackEventCopyWithImpl(
      _GetSingleTrackEvent _value, $Res Function(_GetSingleTrackEvent) _then)
      : super(_value, (v) => _then(v as _GetSingleTrackEvent));

  @override
  _GetSingleTrackEvent get _value => super._value as _GetSingleTrackEvent;

  @override
  $Res call({
    Object trackId = freezed,
  }) {
    return _then(_GetSingleTrackEvent(
      trackId: trackId == freezed ? _value.trackId : trackId as String,
    ));
  }
}

/// @nodoc
class _$_GetSingleTrackEvent implements _GetSingleTrackEvent {
  const _$_GetSingleTrackEvent({this.trackId});

  @override
  final String trackId;

  @override
  String toString() {
    return 'SingleTrackEvent.getSingleTrackAndLyrics(trackId: $trackId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetSingleTrackEvent &&
            (identical(other.trackId, trackId) ||
                const DeepCollectionEquality().equals(other.trackId, trackId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(trackId);

  @override
  _$GetSingleTrackEventCopyWith<_GetSingleTrackEvent> get copyWith =>
      __$GetSingleTrackEventCopyWithImpl<_GetSingleTrackEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getSingleTrackAndLyrics(String trackId),
    @required Result likeSong(String trackId),
  }) {
    assert(getSingleTrackAndLyrics != null);
    assert(likeSong != null);
    return getSingleTrackAndLyrics(trackId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getSingleTrackAndLyrics(String trackId),
    Result likeSong(String trackId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getSingleTrackAndLyrics != null) {
      return getSingleTrackAndLyrics(trackId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getSingleTrackAndLyrics(_GetSingleTrackEvent value),
    @required Result likeSong(_LikeSongEvent value),
  }) {
    assert(getSingleTrackAndLyrics != null);
    assert(likeSong != null);
    return getSingleTrackAndLyrics(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getSingleTrackAndLyrics(_GetSingleTrackEvent value),
    Result likeSong(_LikeSongEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getSingleTrackAndLyrics != null) {
      return getSingleTrackAndLyrics(this);
    }
    return orElse();
  }
}

abstract class _GetSingleTrackEvent implements SingleTrackEvent {
  const factory _GetSingleTrackEvent({String trackId}) = _$_GetSingleTrackEvent;

  @override
  String get trackId;
  @override
  _$GetSingleTrackEventCopyWith<_GetSingleTrackEvent> get copyWith;
}

/// @nodoc
abstract class _$LikeSongEventCopyWith<$Res>
    implements $SingleTrackEventCopyWith<$Res> {
  factory _$LikeSongEventCopyWith(
          _LikeSongEvent value, $Res Function(_LikeSongEvent) then) =
      __$LikeSongEventCopyWithImpl<$Res>;
  @override
  $Res call({String trackId});
}

/// @nodoc
class __$LikeSongEventCopyWithImpl<$Res>
    extends _$SingleTrackEventCopyWithImpl<$Res>
    implements _$LikeSongEventCopyWith<$Res> {
  __$LikeSongEventCopyWithImpl(
      _LikeSongEvent _value, $Res Function(_LikeSongEvent) _then)
      : super(_value, (v) => _then(v as _LikeSongEvent));

  @override
  _LikeSongEvent get _value => super._value as _LikeSongEvent;

  @override
  $Res call({
    Object trackId = freezed,
  }) {
    return _then(_LikeSongEvent(
      trackId: trackId == freezed ? _value.trackId : trackId as String,
    ));
  }
}

/// @nodoc
class _$_LikeSongEvent implements _LikeSongEvent {
  const _$_LikeSongEvent({this.trackId});

  @override
  final String trackId;

  @override
  String toString() {
    return 'SingleTrackEvent.likeSong(trackId: $trackId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LikeSongEvent &&
            (identical(other.trackId, trackId) ||
                const DeepCollectionEquality().equals(other.trackId, trackId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(trackId);

  @override
  _$LikeSongEventCopyWith<_LikeSongEvent> get copyWith =>
      __$LikeSongEventCopyWithImpl<_LikeSongEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getSingleTrackAndLyrics(String trackId),
    @required Result likeSong(String trackId),
  }) {
    assert(getSingleTrackAndLyrics != null);
    assert(likeSong != null);
    return likeSong(trackId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getSingleTrackAndLyrics(String trackId),
    Result likeSong(String trackId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (likeSong != null) {
      return likeSong(trackId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getSingleTrackAndLyrics(_GetSingleTrackEvent value),
    @required Result likeSong(_LikeSongEvent value),
  }) {
    assert(getSingleTrackAndLyrics != null);
    assert(likeSong != null);
    return likeSong(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getSingleTrackAndLyrics(_GetSingleTrackEvent value),
    Result likeSong(_LikeSongEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (likeSong != null) {
      return likeSong(this);
    }
    return orElse();
  }
}

abstract class _LikeSongEvent implements SingleTrackEvent {
  const factory _LikeSongEvent({String trackId}) = _$_LikeSongEvent;

  @override
  String get trackId;
  @override
  _$LikeSongEventCopyWith<_LikeSongEvent> get copyWith;
}

/// @nodoc
class _$SingleTrackStateTearOff {
  const _$SingleTrackStateTearOff();

// ignore: unused_element
  _InitialState initial() {
    return const _InitialState();
  }

// ignore: unused_element
  _LoadingState loading() {
    return const _LoadingState();
  }

// ignore: unused_element
  _ErrorState error() {
    return const _ErrorState();
  }

// ignore: unused_element
  _LikeSong likeSong() {
    return const _LikeSong();
  }

// ignore: unused_element
  _SingleTrackState singleTrackAndLyrics({Track track, Lyrics lyrics}) {
    return _SingleTrackState(
      track: track,
      lyrics: lyrics,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SingleTrackState = _$SingleTrackStateTearOff();

/// @nodoc
mixin _$SingleTrackState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result error(),
    @required Result likeSong(),
    @required Result singleTrackAndLyrics(Track track, Lyrics lyrics),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result error(),
    Result likeSong(),
    Result singleTrackAndLyrics(Track track, Lyrics lyrics),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_InitialState value),
    @required Result loading(_LoadingState value),
    @required Result error(_ErrorState value),
    @required Result likeSong(_LikeSong value),
    @required Result singleTrackAndLyrics(_SingleTrackState value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_InitialState value),
    Result loading(_LoadingState value),
    Result error(_ErrorState value),
    Result likeSong(_LikeSong value),
    Result singleTrackAndLyrics(_SingleTrackState value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SingleTrackStateCopyWith<$Res> {
  factory $SingleTrackStateCopyWith(
          SingleTrackState value, $Res Function(SingleTrackState) then) =
      _$SingleTrackStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SingleTrackStateCopyWithImpl<$Res>
    implements $SingleTrackStateCopyWith<$Res> {
  _$SingleTrackStateCopyWithImpl(this._value, this._then);

  final SingleTrackState _value;
  // ignore: unused_field
  final $Res Function(SingleTrackState) _then;
}

/// @nodoc
abstract class _$InitialStateCopyWith<$Res> {
  factory _$InitialStateCopyWith(
          _InitialState value, $Res Function(_InitialState) then) =
      __$InitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialStateCopyWithImpl<$Res>
    extends _$SingleTrackStateCopyWithImpl<$Res>
    implements _$InitialStateCopyWith<$Res> {
  __$InitialStateCopyWithImpl(
      _InitialState _value, $Res Function(_InitialState) _then)
      : super(_value, (v) => _then(v as _InitialState));

  @override
  _InitialState get _value => super._value as _InitialState;
}

/// @nodoc
class _$_InitialState implements _InitialState {
  const _$_InitialState();

  @override
  String toString() {
    return 'SingleTrackState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result error(),
    @required Result likeSong(),
    @required Result singleTrackAndLyrics(Track track, Lyrics lyrics),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(likeSong != null);
    assert(singleTrackAndLyrics != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result error(),
    Result likeSong(),
    Result singleTrackAndLyrics(Track track, Lyrics lyrics),
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
    @required Result initial(_InitialState value),
    @required Result loading(_LoadingState value),
    @required Result error(_ErrorState value),
    @required Result likeSong(_LikeSong value),
    @required Result singleTrackAndLyrics(_SingleTrackState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(likeSong != null);
    assert(singleTrackAndLyrics != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_InitialState value),
    Result loading(_LoadingState value),
    Result error(_ErrorState value),
    Result likeSong(_LikeSong value),
    Result singleTrackAndLyrics(_SingleTrackState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements SingleTrackState {
  const factory _InitialState() = _$_InitialState;
}

/// @nodoc
abstract class _$LoadingStateCopyWith<$Res> {
  factory _$LoadingStateCopyWith(
          _LoadingState value, $Res Function(_LoadingState) then) =
      __$LoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingStateCopyWithImpl<$Res>
    extends _$SingleTrackStateCopyWithImpl<$Res>
    implements _$LoadingStateCopyWith<$Res> {
  __$LoadingStateCopyWithImpl(
      _LoadingState _value, $Res Function(_LoadingState) _then)
      : super(_value, (v) => _then(v as _LoadingState));

  @override
  _LoadingState get _value => super._value as _LoadingState;
}

/// @nodoc
class _$_LoadingState implements _LoadingState {
  const _$_LoadingState();

  @override
  String toString() {
    return 'SingleTrackState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result error(),
    @required Result likeSong(),
    @required Result singleTrackAndLyrics(Track track, Lyrics lyrics),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(likeSong != null);
    assert(singleTrackAndLyrics != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result error(),
    Result likeSong(),
    Result singleTrackAndLyrics(Track track, Lyrics lyrics),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_InitialState value),
    @required Result loading(_LoadingState value),
    @required Result error(_ErrorState value),
    @required Result likeSong(_LikeSong value),
    @required Result singleTrackAndLyrics(_SingleTrackState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(likeSong != null);
    assert(singleTrackAndLyrics != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_InitialState value),
    Result loading(_LoadingState value),
    Result error(_ErrorState value),
    Result likeSong(_LikeSong value),
    Result singleTrackAndLyrics(_SingleTrackState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements SingleTrackState {
  const factory _LoadingState() = _$_LoadingState;
}

/// @nodoc
abstract class _$ErrorStateCopyWith<$Res> {
  factory _$ErrorStateCopyWith(
          _ErrorState value, $Res Function(_ErrorState) then) =
      __$ErrorStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$ErrorStateCopyWithImpl<$Res>
    extends _$SingleTrackStateCopyWithImpl<$Res>
    implements _$ErrorStateCopyWith<$Res> {
  __$ErrorStateCopyWithImpl(
      _ErrorState _value, $Res Function(_ErrorState) _then)
      : super(_value, (v) => _then(v as _ErrorState));

  @override
  _ErrorState get _value => super._value as _ErrorState;
}

/// @nodoc
class _$_ErrorState implements _ErrorState {
  const _$_ErrorState();

  @override
  String toString() {
    return 'SingleTrackState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ErrorState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result error(),
    @required Result likeSong(),
    @required Result singleTrackAndLyrics(Track track, Lyrics lyrics),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(likeSong != null);
    assert(singleTrackAndLyrics != null);
    return error();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result error(),
    Result likeSong(),
    Result singleTrackAndLyrics(Track track, Lyrics lyrics),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_InitialState value),
    @required Result loading(_LoadingState value),
    @required Result error(_ErrorState value),
    @required Result likeSong(_LikeSong value),
    @required Result singleTrackAndLyrics(_SingleTrackState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(likeSong != null);
    assert(singleTrackAndLyrics != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_InitialState value),
    Result loading(_LoadingState value),
    Result error(_ErrorState value),
    Result likeSong(_LikeSong value),
    Result singleTrackAndLyrics(_SingleTrackState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorState implements SingleTrackState {
  const factory _ErrorState() = _$_ErrorState;
}

/// @nodoc
abstract class _$LikeSongCopyWith<$Res> {
  factory _$LikeSongCopyWith(_LikeSong value, $Res Function(_LikeSong) then) =
      __$LikeSongCopyWithImpl<$Res>;
}

/// @nodoc
class __$LikeSongCopyWithImpl<$Res> extends _$SingleTrackStateCopyWithImpl<$Res>
    implements _$LikeSongCopyWith<$Res> {
  __$LikeSongCopyWithImpl(_LikeSong _value, $Res Function(_LikeSong) _then)
      : super(_value, (v) => _then(v as _LikeSong));

  @override
  _LikeSong get _value => super._value as _LikeSong;
}

/// @nodoc
class _$_LikeSong implements _LikeSong {
  const _$_LikeSong();

  @override
  String toString() {
    return 'SingleTrackState.likeSong()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LikeSong);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result error(),
    @required Result likeSong(),
    @required Result singleTrackAndLyrics(Track track, Lyrics lyrics),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(likeSong != null);
    assert(singleTrackAndLyrics != null);
    return likeSong();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result error(),
    Result likeSong(),
    Result singleTrackAndLyrics(Track track, Lyrics lyrics),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (likeSong != null) {
      return likeSong();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_InitialState value),
    @required Result loading(_LoadingState value),
    @required Result error(_ErrorState value),
    @required Result likeSong(_LikeSong value),
    @required Result singleTrackAndLyrics(_SingleTrackState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(likeSong != null);
    assert(singleTrackAndLyrics != null);
    return likeSong(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_InitialState value),
    Result loading(_LoadingState value),
    Result error(_ErrorState value),
    Result likeSong(_LikeSong value),
    Result singleTrackAndLyrics(_SingleTrackState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (likeSong != null) {
      return likeSong(this);
    }
    return orElse();
  }
}

abstract class _LikeSong implements SingleTrackState {
  const factory _LikeSong() = _$_LikeSong;
}

/// @nodoc
abstract class _$SingleTrackStateCopyWith<$Res> {
  factory _$SingleTrackStateCopyWith(
          _SingleTrackState value, $Res Function(_SingleTrackState) then) =
      __$SingleTrackStateCopyWithImpl<$Res>;
  $Res call({Track track, Lyrics lyrics});
}

/// @nodoc
class __$SingleTrackStateCopyWithImpl<$Res>
    extends _$SingleTrackStateCopyWithImpl<$Res>
    implements _$SingleTrackStateCopyWith<$Res> {
  __$SingleTrackStateCopyWithImpl(
      _SingleTrackState _value, $Res Function(_SingleTrackState) _then)
      : super(_value, (v) => _then(v as _SingleTrackState));

  @override
  _SingleTrackState get _value => super._value as _SingleTrackState;

  @override
  $Res call({
    Object track = freezed,
    Object lyrics = freezed,
  }) {
    return _then(_SingleTrackState(
      track: track == freezed ? _value.track : track as Track,
      lyrics: lyrics == freezed ? _value.lyrics : lyrics as Lyrics,
    ));
  }
}

/// @nodoc
class _$_SingleTrackState implements _SingleTrackState {
  const _$_SingleTrackState({this.track, this.lyrics});

  @override
  final Track track;
  @override
  final Lyrics lyrics;

  @override
  String toString() {
    return 'SingleTrackState.singleTrackAndLyrics(track: $track, lyrics: $lyrics)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SingleTrackState &&
            (identical(other.track, track) ||
                const DeepCollectionEquality().equals(other.track, track)) &&
            (identical(other.lyrics, lyrics) ||
                const DeepCollectionEquality().equals(other.lyrics, lyrics)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(track) ^
      const DeepCollectionEquality().hash(lyrics);

  @override
  _$SingleTrackStateCopyWith<_SingleTrackState> get copyWith =>
      __$SingleTrackStateCopyWithImpl<_SingleTrackState>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result error(),
    @required Result likeSong(),
    @required Result singleTrackAndLyrics(Track track, Lyrics lyrics),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(likeSong != null);
    assert(singleTrackAndLyrics != null);
    return singleTrackAndLyrics(track, lyrics);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result error(),
    Result likeSong(),
    Result singleTrackAndLyrics(Track track, Lyrics lyrics),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (singleTrackAndLyrics != null) {
      return singleTrackAndLyrics(track, lyrics);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_InitialState value),
    @required Result loading(_LoadingState value),
    @required Result error(_ErrorState value),
    @required Result likeSong(_LikeSong value),
    @required Result singleTrackAndLyrics(_SingleTrackState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(likeSong != null);
    assert(singleTrackAndLyrics != null);
    return singleTrackAndLyrics(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_InitialState value),
    Result loading(_LoadingState value),
    Result error(_ErrorState value),
    Result likeSong(_LikeSong value),
    Result singleTrackAndLyrics(_SingleTrackState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (singleTrackAndLyrics != null) {
      return singleTrackAndLyrics(this);
    }
    return orElse();
  }
}

abstract class _SingleTrackState implements SingleTrackState {
  const factory _SingleTrackState({Track track, Lyrics lyrics}) =
      _$_SingleTrackState;

  Track get track;
  Lyrics get lyrics;
  _$SingleTrackStateCopyWith<_SingleTrackState> get copyWith;
}
