import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:music_app/core/model/lyrics.dart';
import 'package:music_app/core/model/track.dart';
import 'package:music_app/data/track_data.dart';

part 'track_event.dart';
part 'track_state.dart';
part 'track_bloc.freezed.dart';

@injectable
class TrackBloc extends Bloc<TrackEvent, TrackState> {
  TrackBloc() : super(const TrackState.initial());

  @override
  Stream<TrackState> mapEventToState(
    TrackEvent event,
  ) async* {
    yield* event.map(fetchAllTracks: (e) async* {
      yield const TrackState.loading();
      final Either<String, List<Track>> _stringOrTracks =
          await TrackData.getAllTracks();

     yield _stringOrTracks.fold((l) {
        return const TrackState.error();
      }, (tracks) {
        return TrackState.allTracks(track: tracks);
      });
    });
  }
}
