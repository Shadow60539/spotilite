import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart';
import 'package:music_app/core/model/lyrics.dart';
import 'package:music_app/core/model/track.dart';
import 'package:music_app/data/apis.dart';

class TrackData {
  static Future<Either<String, List<Track>>> getAllTracks() async {
    final List<Track> _trackList = <Track>[];
    final Response response = await get(kAllTracksApi);
    if (jsonDecode(response.body)["message"]["header"]["status_code"] != 401) {
      final data = jsonDecode(response.body)["message"]["body"]["track_list"];
      data.forEach((track) {
        _trackList.add(Track.fromJson(track['track'] as Map<String, dynamic>));
      });
      return right(_trackList);
    } else {
      return left('Error');
    }
  }

  static Future<Either<String, Track>> getSingleTrack({String trackId}) async {
    final Response response = await get(kSingleTrackApi(trackId: trackId));

    if (jsonDecode(response.body)["message"]["header"]["status_code"] == 401) {
      return left('Error');
    } else {
      final data = jsonDecode(response.body)["message"]["body"]["track"];
      return right(Track.fromJson(data as Map<String, dynamic>));
    }
  }

  static Future<Lyrics> getSingleTrackLyrics({String trackId}) async {
    final Response response =
        await get(kSingleTrackLyricsApi(trackId: trackId));
    final data = jsonDecode(response.body)["message"]["body"]["lyrics"];

    return Lyrics.fromJson(data as Map<String, dynamic>);
  }
}
