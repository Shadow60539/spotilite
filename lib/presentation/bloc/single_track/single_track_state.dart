part of 'single_track_bloc.dart';

@freezed
abstract class SingleTrackState with _$SingleTrackState {
  const factory SingleTrackState.initial() = _InitialState;
  const factory SingleTrackState.loading() = _LoadingState;
  const factory SingleTrackState.error() = _ErrorState;
  const factory SingleTrackState.likeSong() = _LikeSong;
  const factory SingleTrackState.singleTrackAndLyrics(
      {Track track, Lyrics lyrics}) = _SingleTrackState;
}
