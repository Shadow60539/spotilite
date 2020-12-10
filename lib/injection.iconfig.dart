// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:music_app/core/utils/liked_provider.dart';
import 'package:music_app/presentation/bloc/liked/liked_bloc.dart';
import 'package:music_app/presentation/bloc/single_track/single_track_bloc.dart';
import 'package:music_app/presentation/bloc/track/track_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  g.registerLazySingleton<LikedProvider>(() => LikedProvider());
  g.registerFactory<LikedBloc>(() => LikedBloc(
        g<LikedProvider>(),
      ));
  g.registerFactory<SingleTrackBloc>(() => SingleTrackBloc());
  g.registerFactory<TrackBloc>(() => TrackBloc());
}
