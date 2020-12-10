import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:music_app/core/model/lyrics.dart';
import 'package:music_app/core/model/track.dart';
import 'package:music_app/data/track_data.dart';

part 'single_track_event.dart';
part 'single_track_state.dart';
part 'single_track_bloc.freezed.dart';

@injectable
class SingleTrackBloc extends Bloc<SingleTrackEvent, SingleTrackState> {
  SingleTrackBloc() : super(const SingleTrackState.initial());

  @override
  Stream<SingleTrackState> mapEventToState(
    SingleTrackEvent event,
  ) async* {
    yield* event.map(
      getSingleTrackAndLyrics: (e) async* {
        yield const SingleTrackState.loading();
        final Either<String, Track> _stringOrTrack =
            await TrackData.getSingleTrack(trackId: e.trackId);
        final Lyrics _lyrics =
            await TrackData.getSingleTrackLyrics(trackId: e.trackId);
        yield _stringOrTrack.fold((l) {
          return const SingleTrackState.error();
        }, (r) {
          return SingleTrackState.singleTrackAndLyrics(
              track: r, lyrics: _lyrics);
        });
      },
      likeSong: (e) async* {
        yield const SingleTrackState.likeSong();
        await Future.delayed(const Duration(
          milliseconds: 2000,
        ));
        final Either<String, Track> _stringOrTrack =
            await TrackData.getSingleTrack(trackId: e.trackId);
        final Lyrics _lyrics =
            await TrackData.getSingleTrackLyrics(trackId: e.trackId);
        yield _stringOrTrack.fold((l) {
          return const SingleTrackState.error();
        }, (r) {
          return SingleTrackState.singleTrackAndLyrics(
              track: r, lyrics: _lyrics);
        });
      },
    );
  }
}
