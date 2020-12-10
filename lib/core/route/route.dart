import 'package:auto_route/auto_route.dart';
import 'package:auto_route/auto_route_annotations.dart';
import 'package:music_app/presentation/pages/track_details_page.dart';
import 'package:music_app/presentation/pages/tracks_page.dart';

@MaterialAutoRouter()
class $Router {
  @initial
  TracksPage tracksPage;
  @CustomRoute(
      durationInMilliseconds: 200,
      transitionsBuilder: TransitionsBuilders.slideLeft)
  TrackDetailsPage trackDetailsPage;
}
