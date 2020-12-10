import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/core/colors/colors.dart';
import 'package:music_app/core/route/route.gr.dart';
import 'package:music_app/core/utils/liked_provider.dart';
import 'package:music_app/injection.dart';

import 'package:music_app/presentation/bloc/liked/liked_bloc.dart';
import 'package:music_app/presentation/bloc/single_track/single_track_bloc.dart';
import 'package:music_app/presentation/bloc/track/track_bloc.dart';
import 'package:provider/provider.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => getIt<LikedProvider>()),
          BlocProvider(
            create: (context) =>
                getIt<TrackBloc>()..add(const TrackEvent.fetchAllTracks()),
          ),
          BlocProvider(
            create: (context) =>
                getIt<LikedBloc>()..add(const LikedEvent.fetchAllLikedSongs()),
          ),
          BlocProvider(create: (context) => getIt<SingleTrackBloc>()),
        ],
        child: MaterialApp(
          title: 'Spotilite',
          theme: ThemeData.dark().copyWith(
            textTheme: GoogleFonts.nunitoTextTheme().apply(
              bodyColor: kWhite,
            ),
            primaryColor: kWhite,
          ),
          debugShowCheckedModeBanner: false,
          onGenerateRoute: Router.onGenerateRoute,
          initialRoute: Router.tracksPage,
          navigatorKey: Router.navigator.key,
        ));
  }
}
