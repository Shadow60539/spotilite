import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:music_app/core/model/track.dart';
import 'package:music_app/core/strings.dart';
import 'package:music_app/core/utils/liked_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'liked_event.dart';
part 'liked_state.dart';
part 'liked_bloc.freezed.dart';

@injectable
class LikedBloc extends Bloc<LikedEvent, LikedState> {
  LikedBloc(this.likedProvider) : super(const LikedState.initial());
  final LikedProvider likedProvider;

  @override
  Stream<LikedState> mapEventToState(
    LikedEvent event,
  ) async* {
    yield* event.map(
      fetchAllLikedSongs: (e) async* {
        final List<Track> _likedList = [];
        final SharedPreferences pref = await SharedPreferences.getInstance();
        final List<String> _likedSongsIds =
            pref.getStringList(kLikedTracksIds) ?? [];
        final List<String> _likedSongsNames =
            pref.getStringList(kLikedTracksName) ?? [];
        final List<String> _likedSongsArtists =
            pref.getStringList(kLikedTracksArtist) ?? [];

        if (_likedSongsIds.isNotEmpty) {
          for (int i = 0; i < _likedSongsIds.length; i++) {
            _likedList.add(
              Track(
                trackName: _likedSongsNames[i],
                artistName: _likedSongsArtists[i],
                trackId: int.parse(_likedSongsIds[i]),
              ),
            );
          }
        }
        likedProvider.updateLikedTracksList(newTrackList: _likedList);
      },
      likeSong: (e) async* {
        SharedPreferences.getInstance().then((pref) {
          final List<String> _likedSongsIds =
              pref.getStringList(kLikedTracksIds) ?? [];
          final List<String> _likedSongsNames =
              pref.getStringList(kLikedTracksName) ?? [];
          final List<String> _likedSongsArtists =
              pref.getStringList(kLikedTracksArtist) ?? [];

          if (_likedSongsNames.contains(e.trackName)) {
            _likedSongsIds.remove(e.trackId.toString());
            _likedSongsNames.remove(e.trackName);
            _likedSongsArtists.remove(e.artistName);
            likedProvider.removeLikedTracksList(
              track: Track(
                trackName: e.trackName,
                artistName: e.artistName,
                trackId: int.parse(e.trackId),
              ),
            );
          } else {
            _likedSongsIds.add(e.trackId.toString());
            _likedSongsNames.add(e.trackName);
            _likedSongsArtists.add(e.artistName);
            likedProvider.addLikedTracksList(
              track: Track(
                trackName: e.trackName,
                artistName: e.artistName,
                trackId: int.parse(e.trackId),
              ),
            );
          }

          pref.setStringList(kLikedTracksIds, _likedSongsIds);
          pref.setStringList(kLikedTracksName, _likedSongsNames);
          pref.setStringList(kLikedTracksArtist, _likedSongsArtists);
        });
      },
    );
  }
}
