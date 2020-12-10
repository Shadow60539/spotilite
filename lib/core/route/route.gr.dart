// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:music_app/presentation/pages/tracks_page.dart';
import 'package:music_app/presentation/pages/track_details_page.dart';

class Router {
  static const tracksPage = '/';
  static const trackDetailsPage = '/track-details-page';
  static final navigator = ExtendedNavigator();
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Router.tracksPage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => TracksPage(),
          settings: settings,
        );
      case Router.trackDetailsPage:
        if (hasInvalidArgs<TrackDetailsPageArguments>(args)) {
          return misTypedArgsRoute<TrackDetailsPageArguments>(args);
        }
        final typedArgs =
            args as TrackDetailsPageArguments ?? TrackDetailsPageArguments();
        return PageRouteBuilder<dynamic>(
          pageBuilder: (ctx, animation, secondaryAnimation) => TrackDetailsPage(
              key: typedArgs.key,
              trackTitle: typedArgs.trackTitle,
              trackId: typedArgs.trackId),
          settings: settings,
          transitionsBuilder: TransitionsBuilders.slideLeft,
          transitionDuration: Duration(milliseconds: 200),
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

//**************************************************************************
// Arguments holder classes
//***************************************************************************

//TrackDetailsPage arguments holder class
class TrackDetailsPageArguments {
  final Key key;
  final String trackTitle;
  final String trackId;
  TrackDetailsPageArguments({this.key, this.trackTitle, this.trackId});
}
