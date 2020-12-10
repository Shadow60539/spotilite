// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'track_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TrackEventTearOff {
  const _$TrackEventTearOff();

// ignore: unused_element
  _FetchAllTracksEvent fetchAllTracks() {
    return const _FetchAllTracksEvent();
  }
}

/// @nodoc
// ignore: unused_element
const $TrackEvent = _$TrackEventTearOff();

/// @nodoc
mixin _$TrackEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchAllTracks(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchAllTracks(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchAllTracks(_FetchAllTracksEvent value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchAllTracks(_FetchAllTracksEvent value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $TrackEventCopyWith<$Res> {
  factory $TrackEventCopyWith(
          TrackEvent value, $Res Function(TrackEvent) then) =
      _$TrackEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TrackEventCopyWithImpl<$Res> implements $TrackEventCopyWith<$Res> {
  _$TrackEventCopyWithImpl(this._value, this._then);

  final TrackEvent _value;
  // ignore: unused_field
  final $Res Function(TrackEvent) _then;
}

/// @nodoc
abstract class _$FetchAllTracksEventCopyWith<$Res> {
  factory _$FetchAllTracksEventCopyWith(_FetchAllTracksEvent value,
          $Res Function(_FetchAllTracksEvent) then) =
      __$FetchAllTracksEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchAllTracksEventCopyWithImpl<$Res>
    extends _$TrackEventCopyWithImpl<$Res>
    implements _$FetchAllTracksEventCopyWith<$Res> {
  __$FetchAllTracksEventCopyWithImpl(
      _FetchAllTracksEvent _value, $Res Function(_FetchAllTracksEvent) _then)
      : super(_value, (v) => _then(v as _FetchAllTracksEvent));

  @override
  _FetchAllTracksEvent get _value => super._value as _FetchAllTracksEvent;
}

/// @nodoc
class _$_FetchAllTracksEvent implements _FetchAllTracksEvent {
  const _$_FetchAllTracksEvent();

  @override
  String toString() {
    return 'TrackEvent.fetchAllTracks()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FetchAllTracksEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetchAllTracks(),
  }) {
    assert(fetchAllTracks != null);
    return fetchAllTracks();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetchAllTracks(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchAllTracks != null) {
      return fetchAllTracks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetchAllTracks(_FetchAllTracksEvent value),
  }) {
    assert(fetchAllTracks != null);
    return fetchAllTracks(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetchAllTracks(_FetchAllTracksEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchAllTracks != null) {
      return fetchAllTracks(this);
    }
    return orElse();
  }
}

abstract class _FetchAllTracksEvent implements TrackEvent {
  const factory _FetchAllTracksEvent() = _$_FetchAllTracksEvent;
}

/// @nodoc
class _$TrackStateTearOff {
  const _$TrackStateTearOff();

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
  _SingleTrackState singleTrackAndLyrics({Track track, Lyrics lyrics}) {
    return _SingleTrackState(
      track: track,
      lyrics: lyrics,
    );
  }

// ignore: unused_element
  _AllTracksState allTracks({List<Track> track}) {
    return _AllTracksState(
      track: track,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TrackState = _$TrackStateTearOff();

/// @nodoc
mixin _$TrackState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result error(),
    @required Result singleTrackAndLyrics(Track track, Lyrics lyrics),
    @required Result allTracks(List<Track> track),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result error(),
    Result singleTrackAndLyrics(Track track, Lyrics lyrics),
    Result allTracks(List<Track> track),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_InitialState value),
    @required Result loading(_LoadingState value),
    @required Result error(_ErrorState value),
    @required Result singleTrackAndLyrics(_SingleTrackState value),
    @required Result allTracks(_AllTracksState value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_InitialState value),
    Result loading(_LoadingState value),
    Result error(_ErrorState value),
    Result singleTrackAndLyrics(_SingleTrackState value),
    Result allTracks(_AllTracksState value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $TrackStateCopyWith<$Res> {
  factory $TrackStateCopyWith(
          TrackState value, $Res Function(TrackState) then) =
      _$TrackStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TrackStateCopyWithImpl<$Res> implements $TrackStateCopyWith<$Res> {
  _$TrackStateCopyWithImpl(this._value, this._then);

  final TrackState _value;
  // ignore: unused_field
  final $Res Function(TrackState) _then;
}

/// @nodoc
abstract class _$InitialStateCopyWith<$Res> {
  factory _$InitialStateCopyWith(
          _InitialState value, $Res Function(_InitialState) then) =
      __$InitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialStateCopyWithImpl<$Res> extends _$TrackStateCopyWithImpl<$Res>
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
    return 'TrackState.initial()';
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
    @required Result singleTrackAndLyrics(Track track, Lyrics lyrics),
    @required Result allTracks(List<Track> track),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(singleTrackAndLyrics != null);
    assert(allTracks != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result error(),
    Result singleTrackAndLyrics(Track track, Lyrics lyrics),
    Result allTracks(List<Track> track),
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
    @required Result singleTrackAndLyrics(_SingleTrackState value),
    @required Result allTracks(_AllTracksState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(singleTrackAndLyrics != null);
    assert(allTracks != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_InitialState value),
    Result loading(_LoadingState value),
    Result error(_ErrorState value),
    Result singleTrackAndLyrics(_SingleTrackState value),
    Result allTracks(_AllTracksState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements TrackState {
  const factory _InitialState() = _$_InitialState;
}

/// @nodoc
abstract class _$LoadingStateCopyWith<$Res> {
  factory _$LoadingStateCopyWith(
          _LoadingState value, $Res Function(_LoadingState) then) =
      __$LoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingStateCopyWithImpl<$Res> extends _$TrackStateCopyWithImpl<$Res>
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
    return 'TrackState.loading()';
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
    @required Result singleTrackAndLyrics(Track track, Lyrics lyrics),
    @required Result allTracks(List<Track> track),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(singleTrackAndLyrics != null);
    assert(allTracks != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result error(),
    Result singleTrackAndLyrics(Track track, Lyrics lyrics),
    Result allTracks(List<Track> track),
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
    @required Result singleTrackAndLyrics(_SingleTrackState value),
    @required Result allTracks(_AllTracksState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(singleTrackAndLyrics != null);
    assert(allTracks != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_InitialState value),
    Result loading(_LoadingState value),
    Result error(_ErrorState value),
    Result singleTrackAndLyrics(_SingleTrackState value),
    Result allTracks(_AllTracksState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements TrackState {
  const factory _LoadingState() = _$_LoadingState;
}

/// @nodoc
abstract class _$ErrorStateCopyWith<$Res> {
  factory _$ErrorStateCopyWith(
          _ErrorState value, $Res Function(_ErrorState) then) =
      __$ErrorStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$ErrorStateCopyWithImpl<$Res> extends _$TrackStateCopyWithImpl<$Res>
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
    return 'TrackState.error()';
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
    @required Result singleTrackAndLyrics(Track track, Lyrics lyrics),
    @required Result allTracks(List<Track> track),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(singleTrackAndLyrics != null);
    assert(allTracks != null);
    return error();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result error(),
    Result singleTrackAndLyrics(Track track, Lyrics lyrics),
    Result allTracks(List<Track> track),
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
    @required Result singleTrackAndLyrics(_SingleTrackState value),
    @required Result allTracks(_AllTracksState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(singleTrackAndLyrics != null);
    assert(allTracks != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_InitialState value),
    Result loading(_LoadingState value),
    Result error(_ErrorState value),
    Result singleTrackAndLyrics(_SingleTrackState value),
    Result allTracks(_AllTracksState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorState implements TrackState {
  const factory _ErrorState() = _$_ErrorState;
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
    extends _$TrackStateCopyWithImpl<$Res>
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
    return 'TrackState.singleTrackAndLyrics(track: $track, lyrics: $lyrics)';
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
    @required Result singleTrackAndLyrics(Track track, Lyrics lyrics),
    @required Result allTracks(List<Track> track),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(singleTrackAndLyrics != null);
    assert(allTracks != null);
    return singleTrackAndLyrics(track, lyrics);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result error(),
    Result singleTrackAndLyrics(Track track, Lyrics lyrics),
    Result allTracks(List<Track> track),
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
    @required Result singleTrackAndLyrics(_SingleTrackState value),
    @required Result allTracks(_AllTracksState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(singleTrackAndLyrics != null);
    assert(allTracks != null);
    return singleTrackAndLyrics(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_InitialState value),
    Result loading(_LoadingState value),
    Result error(_ErrorState value),
    Result singleTrackAndLyrics(_SingleTrackState value),
    Result allTracks(_AllTracksState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (singleTrackAndLyrics != null) {
      return singleTrackAndLyrics(this);
    }
    return orElse();
  }
}

abstract class _SingleTrackState implements TrackState {
  const factory _SingleTrackState({Track track, Lyrics lyrics}) =
      _$_SingleTrackState;

  Track get track;
  Lyrics get lyrics;
  _$SingleTrackStateCopyWith<_SingleTrackState> get copyWith;
}

/// @nodoc
abstract class _$AllTracksStateCopyWith<$Res> {
  factory _$AllTracksStateCopyWith(
          _AllTracksState value, $Res Function(_AllTracksState) then) =
      __$AllTracksStateCopyWithImpl<$Res>;
  $Res call({List<Track> track});
}

/// @nodoc
class __$AllTracksStateCopyWithImpl<$Res> extends _$TrackStateCopyWithImpl<$Res>
    implements _$AllTracksStateCopyWith<$Res> {
  __$AllTracksStateCopyWithImpl(
      _AllTracksState _value, $Res Function(_AllTracksState) _then)
      : super(_value, (v) => _then(v as _AllTracksState));

  @override
  _AllTracksState get _value => super._value as _AllTracksState;

  @override
  $Res call({
    Object track = freezed,
  }) {
    return _then(_AllTracksState(
      track: track == freezed ? _value.track : track as List<Track>,
    ));
  }
}

/// @nodoc
class _$_AllTracksState implements _AllTracksState {
  const _$_AllTracksState({this.track});

  @override
  final List<Track> track;

  @override
  String toString() {
    return 'TrackState.allTracks(track: $track)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AllTracksState &&
            (identical(other.track, track) ||
                const DeepCollectionEquality().equals(other.track, track)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(track);

  @override
  _$AllTracksStateCopyWith<_AllTracksState> get copyWith =>
      __$AllTracksStateCopyWithImpl<_AllTracksState>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result error(),
    @required Result singleTrackAndLyrics(Track track, Lyrics lyrics),
    @required Result allTracks(List<Track> track),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(singleTrackAndLyrics != null);
    assert(allTracks != null);
    return allTracks(track);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result error(),
    Result singleTrackAndLyrics(Track track, Lyrics lyrics),
    Result allTracks(List<Track> track),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (allTracks != null) {
      return allTracks(track);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_InitialState value),
    @required Result loading(_LoadingState value),
    @required Result error(_ErrorState value),
    @required Result singleTrackAndLyrics(_SingleTrackState value),
    @required Result allTracks(_AllTracksState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(singleTrackAndLyrics != null);
    assert(allTracks != null);
    return allTracks(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_InitialState value),
    Result loading(_LoadingState value),
    Result error(_ErrorState value),
    Result singleTrackAndLyrics(_SingleTrackState value),
    Result allTracks(_AllTracksState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (allTracks != null) {
      return allTracks(this);
    }
    return orElse();
  }
}

abstract class _AllTracksState implements TrackState {
  const factory _AllTracksState({List<Track> track}) = _$_AllTracksState;

  List<Track> get track;
  _$AllTracksStateCopyWith<_AllTracksState> get copyWith;
}
