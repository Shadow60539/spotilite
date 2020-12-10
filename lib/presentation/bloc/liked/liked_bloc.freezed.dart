// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'liked_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LikedEventTearOff {
  const _$LikedEventTearOff();

// ignore: unused_element
  _LikeSongEvent likeSong(
      {String trackId, String trackName, String artistName}) {
    return _LikeSongEvent(
      trackId: trackId,
      trackName: trackName,
      artistName: artistName,
    );
  }

// ignore: unused_element
  _AllLikeSongEvent fetchAllLikedSongs() {
    return const _AllLikeSongEvent();
  }
}

/// @nodoc
// ignore: unused_element
const $LikedEvent = _$LikedEventTearOff();

/// @nodoc
mixin _$LikedEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result likeSong(String trackId, String trackName, String artistName),
    @required Result fetchAllLikedSongs(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result likeSong(String trackId, String trackName, String artistName),
    Result fetchAllLikedSongs(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result likeSong(_LikeSongEvent value),
    @required Result fetchAllLikedSongs(_AllLikeSongEvent value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result likeSong(_LikeSongEvent value),
    Result fetchAllLikedSongs(_AllLikeSongEvent value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $LikedEventCopyWith<$Res> {
  factory $LikedEventCopyWith(
          LikedEvent value, $Res Function(LikedEvent) then) =
      _$LikedEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LikedEventCopyWithImpl<$Res> implements $LikedEventCopyWith<$Res> {
  _$LikedEventCopyWithImpl(this._value, this._then);

  final LikedEvent _value;
  // ignore: unused_field
  final $Res Function(LikedEvent) _then;
}

/// @nodoc
abstract class _$LikeSongEventCopyWith<$Res> {
  factory _$LikeSongEventCopyWith(
          _LikeSongEvent value, $Res Function(_LikeSongEvent) then) =
      __$LikeSongEventCopyWithImpl<$Res>;
  $Res call({String trackId, String trackName, String artistName});
}

/// @nodoc
class __$LikeSongEventCopyWithImpl<$Res> extends _$LikedEventCopyWithImpl<$Res>
    implements _$LikeSongEventCopyWith<$Res> {
  __$LikeSongEventCopyWithImpl(
      _LikeSongEvent _value, $Res Function(_LikeSongEvent) _then)
      : super(_value, (v) => _then(v as _LikeSongEvent));

  @override
  _LikeSongEvent get _value => super._value as _LikeSongEvent;

  @override
  $Res call({
    Object trackId = freezed,
    Object trackName = freezed,
    Object artistName = freezed,
  }) {
    return _then(_LikeSongEvent(
      trackId: trackId == freezed ? _value.trackId : trackId as String,
      trackName: trackName == freezed ? _value.trackName : trackName as String,
      artistName:
          artistName == freezed ? _value.artistName : artistName as String,
    ));
  }
}

/// @nodoc
class _$_LikeSongEvent implements _LikeSongEvent {
  const _$_LikeSongEvent({this.trackId, this.trackName, this.artistName});

  @override
  final String trackId;
  @override
  final String trackName;
  @override
  final String artistName;

  @override
  String toString() {
    return 'LikedEvent.likeSong(trackId: $trackId, trackName: $trackName, artistName: $artistName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LikeSongEvent &&
            (identical(other.trackId, trackId) ||
                const DeepCollectionEquality()
                    .equals(other.trackId, trackId)) &&
            (identical(other.trackName, trackName) ||
                const DeepCollectionEquality()
                    .equals(other.trackName, trackName)) &&
            (identical(other.artistName, artistName) ||
                const DeepCollectionEquality()
                    .equals(other.artistName, artistName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(trackId) ^
      const DeepCollectionEquality().hash(trackName) ^
      const DeepCollectionEquality().hash(artistName);

  @override
  _$LikeSongEventCopyWith<_LikeSongEvent> get copyWith =>
      __$LikeSongEventCopyWithImpl<_LikeSongEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result likeSong(String trackId, String trackName, String artistName),
    @required Result fetchAllLikedSongs(),
  }) {
    assert(likeSong != null);
    assert(fetchAllLikedSongs != null);
    return likeSong(trackId, trackName, artistName);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result likeSong(String trackId, String trackName, String artistName),
    Result fetchAllLikedSongs(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (likeSong != null) {
      return likeSong(trackId, trackName, artistName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result likeSong(_LikeSongEvent value),
    @required Result fetchAllLikedSongs(_AllLikeSongEvent value),
  }) {
    assert(likeSong != null);
    assert(fetchAllLikedSongs != null);
    return likeSong(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result likeSong(_LikeSongEvent value),
    Result fetchAllLikedSongs(_AllLikeSongEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (likeSong != null) {
      return likeSong(this);
    }
    return orElse();
  }
}

abstract class _LikeSongEvent implements LikedEvent {
  const factory _LikeSongEvent(
      {String trackId, String trackName, String artistName}) = _$_LikeSongEvent;

  String get trackId;
  String get trackName;
  String get artistName;
  _$LikeSongEventCopyWith<_LikeSongEvent> get copyWith;
}

/// @nodoc
abstract class _$AllLikeSongEventCopyWith<$Res> {
  factory _$AllLikeSongEventCopyWith(
          _AllLikeSongEvent value, $Res Function(_AllLikeSongEvent) then) =
      __$AllLikeSongEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$AllLikeSongEventCopyWithImpl<$Res>
    extends _$LikedEventCopyWithImpl<$Res>
    implements _$AllLikeSongEventCopyWith<$Res> {
  __$AllLikeSongEventCopyWithImpl(
      _AllLikeSongEvent _value, $Res Function(_AllLikeSongEvent) _then)
      : super(_value, (v) => _then(v as _AllLikeSongEvent));

  @override
  _AllLikeSongEvent get _value => super._value as _AllLikeSongEvent;
}

/// @nodoc
class _$_AllLikeSongEvent implements _AllLikeSongEvent {
  const _$_AllLikeSongEvent();

  @override
  String toString() {
    return 'LikedEvent.fetchAllLikedSongs()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AllLikeSongEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result likeSong(String trackId, String trackName, String artistName),
    @required Result fetchAllLikedSongs(),
  }) {
    assert(likeSong != null);
    assert(fetchAllLikedSongs != null);
    return fetchAllLikedSongs();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result likeSong(String trackId, String trackName, String artistName),
    Result fetchAllLikedSongs(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchAllLikedSongs != null) {
      return fetchAllLikedSongs();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result likeSong(_LikeSongEvent value),
    @required Result fetchAllLikedSongs(_AllLikeSongEvent value),
  }) {
    assert(likeSong != null);
    assert(fetchAllLikedSongs != null);
    return fetchAllLikedSongs(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result likeSong(_LikeSongEvent value),
    Result fetchAllLikedSongs(_AllLikeSongEvent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchAllLikedSongs != null) {
      return fetchAllLikedSongs(this);
    }
    return orElse();
  }
}

abstract class _AllLikeSongEvent implements LikedEvent {
  const factory _AllLikeSongEvent() = _$_AllLikeSongEvent;
}

/// @nodoc
class _$LikedStateTearOff {
  const _$LikedStateTearOff();

// ignore: unused_element
  _InitialState initial() {
    return const _InitialState();
  }

// ignore: unused_element
  _LoadingState loading() {
    return const _LoadingState();
  }

// ignore: unused_element
  _LikedTrackState likedSongs({List<Track> tracksList}) {
    return _LikedTrackState(
      tracksList: tracksList,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LikedState = _$LikedStateTearOff();

/// @nodoc
mixin _$LikedState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result likedSongs(List<Track> tracksList),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result likedSongs(List<Track> tracksList),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_InitialState value),
    @required Result loading(_LoadingState value),
    @required Result likedSongs(_LikedTrackState value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_InitialState value),
    Result loading(_LoadingState value),
    Result likedSongs(_LikedTrackState value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $LikedStateCopyWith<$Res> {
  factory $LikedStateCopyWith(
          LikedState value, $Res Function(LikedState) then) =
      _$LikedStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LikedStateCopyWithImpl<$Res> implements $LikedStateCopyWith<$Res> {
  _$LikedStateCopyWithImpl(this._value, this._then);

  final LikedState _value;
  // ignore: unused_field
  final $Res Function(LikedState) _then;
}

/// @nodoc
abstract class _$InitialStateCopyWith<$Res> {
  factory _$InitialStateCopyWith(
          _InitialState value, $Res Function(_InitialState) then) =
      __$InitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialStateCopyWithImpl<$Res> extends _$LikedStateCopyWithImpl<$Res>
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
    return 'LikedState.initial()';
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
    @required Result likedSongs(List<Track> tracksList),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(likedSongs != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result likedSongs(List<Track> tracksList),
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
    @required Result likedSongs(_LikedTrackState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(likedSongs != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_InitialState value),
    Result loading(_LoadingState value),
    Result likedSongs(_LikedTrackState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements LikedState {
  const factory _InitialState() = _$_InitialState;
}

/// @nodoc
abstract class _$LoadingStateCopyWith<$Res> {
  factory _$LoadingStateCopyWith(
          _LoadingState value, $Res Function(_LoadingState) then) =
      __$LoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingStateCopyWithImpl<$Res> extends _$LikedStateCopyWithImpl<$Res>
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
    return 'LikedState.loading()';
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
    @required Result likedSongs(List<Track> tracksList),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(likedSongs != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result likedSongs(List<Track> tracksList),
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
    @required Result likedSongs(_LikedTrackState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(likedSongs != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_InitialState value),
    Result loading(_LoadingState value),
    Result likedSongs(_LikedTrackState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements LikedState {
  const factory _LoadingState() = _$_LoadingState;
}

/// @nodoc
abstract class _$LikedTrackStateCopyWith<$Res> {
  factory _$LikedTrackStateCopyWith(
          _LikedTrackState value, $Res Function(_LikedTrackState) then) =
      __$LikedTrackStateCopyWithImpl<$Res>;
  $Res call({List<Track> tracksList});
}

/// @nodoc
class __$LikedTrackStateCopyWithImpl<$Res>
    extends _$LikedStateCopyWithImpl<$Res>
    implements _$LikedTrackStateCopyWith<$Res> {
  __$LikedTrackStateCopyWithImpl(
      _LikedTrackState _value, $Res Function(_LikedTrackState) _then)
      : super(_value, (v) => _then(v as _LikedTrackState));

  @override
  _LikedTrackState get _value => super._value as _LikedTrackState;

  @override
  $Res call({
    Object tracksList = freezed,
  }) {
    return _then(_LikedTrackState(
      tracksList:
          tracksList == freezed ? _value.tracksList : tracksList as List<Track>,
    ));
  }
}

/// @nodoc
class _$_LikedTrackState implements _LikedTrackState {
  const _$_LikedTrackState({this.tracksList});

  @override
  final List<Track> tracksList;

  @override
  String toString() {
    return 'LikedState.likedSongs(tracksList: $tracksList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LikedTrackState &&
            (identical(other.tracksList, tracksList) ||
                const DeepCollectionEquality()
                    .equals(other.tracksList, tracksList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tracksList);

  @override
  _$LikedTrackStateCopyWith<_LikedTrackState> get copyWith =>
      __$LikedTrackStateCopyWithImpl<_LikedTrackState>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result likedSongs(List<Track> tracksList),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(likedSongs != null);
    return likedSongs(tracksList);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result likedSongs(List<Track> tracksList),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (likedSongs != null) {
      return likedSongs(tracksList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_InitialState value),
    @required Result loading(_LoadingState value),
    @required Result likedSongs(_LikedTrackState value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(likedSongs != null);
    return likedSongs(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_InitialState value),
    Result loading(_LoadingState value),
    Result likedSongs(_LikedTrackState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (likedSongs != null) {
      return likedSongs(this);
    }
    return orElse();
  }
}

abstract class _LikedTrackState implements LikedState {
  const factory _LikedTrackState({List<Track> tracksList}) = _$_LikedTrackState;

  List<Track> get tracksList;
  _$LikedTrackStateCopyWith<_LikedTrackState> get copyWith;
}
