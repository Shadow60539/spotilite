part of 'track_bloc.dart';

@freezed
abstract class TrackState with _$TrackState {
  const factory TrackState.initial() = _InitialState;
  const factory TrackState.loading() = _LoadingState;
  const factory TrackState.error() = _ErrorState;
  const factory TrackState.singleTrackAndLyrics({Track track,Lyrics lyrics}) = _SingleTrackState;
  const factory TrackState.allTracks({List<Track> track}) = _AllTracksState;
}
