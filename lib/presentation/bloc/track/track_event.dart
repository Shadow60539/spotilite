part of 'track_bloc.dart';

@freezed
abstract class TrackEvent with _$TrackEvent {
  const factory TrackEvent.fetchAllTracks() = _FetchAllTracksEvent;
}
