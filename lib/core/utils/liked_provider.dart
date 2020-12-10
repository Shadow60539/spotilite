import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:music_app/core/model/track.dart';

@lazySingleton
class LikedProvider extends ChangeNotifier {
  List<Track> _likedTracksList = [];
  List<Track> get likedTracksList => _likedTracksList;

  void updateLikedTracksList({List<Track> newTrackList}) {
    _likedTracksList = newTrackList;
    notifyListeners();
  }

  void addLikedTracksList({Track track}) {
    _likedTracksList.add(track);
    notifyListeners();
  }

  void removeLikedTracksList({Track track}) {
    _likedTracksList
        .removeWhere((element) => element.trackName == track.trackName);
    notifyListeners();
  }
}
