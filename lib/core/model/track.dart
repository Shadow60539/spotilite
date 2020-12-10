import 'dart:convert';

Track trackFromJson(String str) =>
    Track.fromJson(json.decode(str) as Map<String, dynamic>);

String trackToJson(Track data) => json.encode(data.toJson());

class Track {
  Track({
    this.trackId,
    this.trackName,
    this.trackNameTranslationList,
    this.trackRating,
    this.commontrackId,
    this.instrumental,
    this.explicit,
    this.hasLyrics,
    this.hasSubtitles,
    this.hasRichsync,
    this.numFavourite,
    this.albumId,
    this.albumName,
    this.artistId,
    this.artistName,
    this.trackShareUrl,
    this.trackEditUrl,
    this.restricted,
    this.updatedTime,
    this.primaryGenres,
  });

  int trackId;
  String trackName;
  List<dynamic> trackNameTranslationList;
  int trackRating;
  int commontrackId;
  int instrumental;
  int explicit;
  int hasLyrics;
  int hasSubtitles;
  int hasRichsync;
  int numFavourite;
  int albumId;
  String albumName;
  int artistId;
  String artistName;
  String trackShareUrl;
  String trackEditUrl;
  int restricted;
  DateTime updatedTime;
  PrimaryGenres primaryGenres;

  factory Track.fromJson(Map<String, dynamic> json) => Track(
        trackId: json["track_id"],
        trackName: json["track_name"],
        trackNameTranslationList: json["track_name_translation_list"] != null
            ? List<dynamic>.from(
                json["track_name_translation_list"].map((x) => x))
            : [],
        trackRating: json["track_rating"],
        commontrackId: json["commontrack_id"],
        instrumental: json["instrumental"],
        explicit: json["explicit"],
        hasLyrics: json["has_lyrics"],
        hasSubtitles: json["has_subtitles"],
        hasRichsync: json["has_richsync"],
        numFavourite: json["num_favourite"],
        albumId: json["album_id"],
        albumName: json["album_name"],
        artistId: json["artist_id"],
        artistName: json["artist_name"],
        trackShareUrl: json["track_share_url"],
        trackEditUrl: json["track_edit_url"],
        restricted: json["restricted"],
        updatedTime: json["updated_time"] != null
            ? DateTime.parse(json["updated_time"])
            : DateTime.now(),
        primaryGenres: PrimaryGenres.fromJson(json["primary_genres"]),
      );

  Map<String, dynamic> toJson() => {
        "track_id": trackId,
        "track_name": trackName,
        "track_name_translation_list":
            List<dynamic>.from(trackNameTranslationList.map((x) => x)),
        "track_rating": trackRating,
        "commontrack_id": commontrackId,
        "instrumental": instrumental,
        "explicit": explicit,
        "has_lyrics": hasLyrics,
        "has_subtitles": hasSubtitles,
        "has_richsync": hasRichsync,
        "num_favourite": numFavourite,
        "album_id": albumId,
        "album_name": albumName,
        "artist_id": artistId,
        "artist_name": artistName,
        "track_share_url": trackShareUrl,
        "track_edit_url": trackEditUrl,
        "restricted": restricted,
        "updated_time": updatedTime.toIso8601String(),
        "primary_genres": primaryGenres.toJson(),
      };
}

class PrimaryGenres {
  PrimaryGenres({
    this.musicGenreList,
  });

  List<MusicGenreList> musicGenreList;

  factory PrimaryGenres.fromJson(Map<String, dynamic> json) => PrimaryGenres(
        musicGenreList: json != null
            ? List<MusicGenreList>.from(
                json["music_genre_list"].map((x) => MusicGenreList.fromJson(x)))
            : [],
      );

  Map<String, dynamic> toJson() => {
        "music_genre_list":
            List<dynamic>.from(musicGenreList.map((x) => x.toJson())),
      };
}

class MusicGenreList {
  MusicGenreList({
    this.musicGenre,
  });

  MusicGenre musicGenre;

  factory MusicGenreList.fromJson(Map<String, dynamic> json) => MusicGenreList(
        musicGenre: MusicGenre.fromJson(json["music_genre"]),
      );

  Map<String, dynamic> toJson() => {
        "music_genre": musicGenre.toJson(),
      };
}

class MusicGenre {
  MusicGenre({
    this.musicGenreId,
    this.musicGenreParentId,
    this.musicGenreName,
    this.musicGenreNameExtended,
    this.musicGenreVanity,
  });

  int musicGenreId;
  int musicGenreParentId;
  String musicGenreName;
  String musicGenreNameExtended;
  String musicGenreVanity;

  factory MusicGenre.fromJson(Map<String, dynamic> json) => MusicGenre(
        musicGenreId: json["music_genre_id"],
        musicGenreParentId: json["music_genre_parent_id"],
        musicGenreName: json["music_genre_name"],
        musicGenreNameExtended: json["music_genre_name_extended"],
        musicGenreVanity: json["music_genre_vanity"],
      );

  Map<String, dynamic> toJson() => {
        "music_genre_id": musicGenreId,
        "music_genre_parent_id": musicGenreParentId,
        "music_genre_name": musicGenreName,
        "music_genre_name_extended": musicGenreNameExtended,
        "music_genre_vanity": musicGenreVanity,
      };
}
