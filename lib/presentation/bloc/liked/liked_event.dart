part of 'liked_bloc.dart';

@freezed
abstract class LikedEvent with _$LikedEvent {
  const factory LikedEvent.likeSong({
    String trackId,
    String trackName,
    String artistName,
  }) = _LikeSongEvent;

  const factory LikedEvent.fetchAllLikedSongs() = _AllLikeSongEvent;
}
