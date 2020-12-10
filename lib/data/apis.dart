import 'package:music_app/core/strings.dart';

const kAllTracksApi =
    "https://api.musixmatch.com/ws/1.1/chart.tracks.get?apikey=$kApikey";

String kSingleTrackApi({String trackId}) =>
    "https://api.musixmatch.com/ws/1.1/track.get?track_id=$trackId&apikey=$kApikey";

String kSingleTrackLyricsApi({String trackId}) =>
    "https://api.musixmatch.com/ws/1.1/track.lyrics.get?track_id=$trackId&apikey=$kApikey";
