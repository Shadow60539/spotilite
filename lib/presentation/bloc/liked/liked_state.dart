part of 'liked_bloc.dart';

@freezed
abstract class LikedState with _$LikedState {
  const factory LikedState.initial() = _InitialState;
  const factory LikedState.loading() = _LoadingState;
  const factory LikedState.likedSongs({List<Track> tracksList}) =
      _LikedTrackState;
}
