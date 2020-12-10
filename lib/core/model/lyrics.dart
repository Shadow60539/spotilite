import 'dart:convert';

Lyrics lyricsFromJson(String str) => Lyrics.fromJson(json.decode(str));

String lyricsToJson(Lyrics data) => json.encode(data.toJson());

class Lyrics {
  Lyrics({
    this.lyricsId,
    this.explicit,
    this.lyricsBody,
    this.scriptTrackingUrl,
    this.pixelTrackingUrl,
    this.lyricsCopyright,
    this.updatedTime,
  });

  int lyricsId;
  int explicit;
  String lyricsBody;
  String scriptTrackingUrl;
  String pixelTrackingUrl;
  String lyricsCopyright;
  DateTime updatedTime;

  factory Lyrics.fromJson(Map<String, dynamic> json) => Lyrics(
        lyricsId: json["lyrics_id"],
        explicit: json["explicit"],
        lyricsBody: json["lyrics_body"],
        scriptTrackingUrl: json["script_tracking_url"],
        pixelTrackingUrl: json["pixel_tracking_url"],
        lyricsCopyright: json["lyrics_copyright"],
        updatedTime: DateTime.parse(json["updated_time"]),
      );

  Map<String, dynamic> toJson() => {
        "lyrics_id": lyricsId,
        "explicit": explicit,
        "lyrics_body": lyricsBody,
        "script_tracking_url": scriptTrackingUrl,
        "pixel_tracking_url": pixelTrackingUrl,
        "lyrics_copyright": lyricsCopyright,
        "updated_time": updatedTime.toIso8601String(),
      };
}
