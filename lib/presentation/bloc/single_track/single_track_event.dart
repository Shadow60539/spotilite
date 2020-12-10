part of 'single_track_bloc.dart';

@freezed
abstract class SingleTrackEvent with _$SingleTrackEvent {
  const factory SingleTrackEvent.getSingleTrackAndLyrics({String trackId}) =
      _GetSingleTrackEvent;
  const factory SingleTrackEvent.likeSong({String trackId}) =
      _LikeSongEvent;
}
