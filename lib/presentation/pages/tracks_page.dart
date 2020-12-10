import 'package:cached_network_image/cached_network_image.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:music_app/core/colors/colors.dart';
import 'package:music_app/core/model/track.dart';
import 'package:music_app/core/route/route.gr.dart';
import 'package:music_app/core/services/internet_connectivity.dart';
import 'package:music_app/core/utils/liked_provider.dart';
import 'package:music_app/presentation/bloc/liked/liked_bloc.dart';
import 'package:music_app/presentation/bloc/single_track/single_track_bloc.dart';
import 'package:music_app/presentation/bloc/track/track_bloc.dart';
import 'package:music_app/presentation/widgets/fade_animation.dart';
import 'package:music_app/presentation/widgets/offline_widget.dart';
import 'package:music_app/presentation/widgets/server_error_widget.dart';
import 'package:provider/provider.dart';

class TracksPage extends StatefulWidget {
  @override
  _TracksPageState createState() => _TracksPageState();
}

class _TracksPageState extends State<TracksPage> {
  final GlobalKey<AnimatedListState> _trendinsListKey =
      GlobalKey<AnimatedListState>();
  final GlobalKey<AnimatedListState> _likedListKey =
      GlobalKey<AnimatedListState>();

  final List<Track> _tracksList = <Track>[];

  @override
  void initState() {
    BlocProvider.of<LikedBloc>(context)
        .add(const LikedEvent.fetchAllLikedSongs());
    super.initState();
  }

  void _onTrackTapped({@required Track track}) {
    BlocProvider.of<SingleTrackBloc>(context).add(
        SingleTrackEvent.getSingleTrackAndLyrics(
            trackId: track.trackId.toString()));
    Navigator.pushNamed(context, Router.trackDetailsPage,
        arguments: TrackDetailsPageArguments(trackTitle: track.trackName));
  }

  String _welcomeText() {
    final int _currentHour = DateTime.now().hour;
    if (_currentHour >= 12 && _currentHour < 18) {
      return "Afternoon";
    } else if (_currentHour >= 18 && _currentHour < 6) {
      return "Evening";
    } else {
      return "Morning";
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: kGreen,
          centerTitle: true,
          title: Text('Spotilite',
              style: GoogleFonts.nunito(
                  color: kBlack, fontWeight: FontWeight.bold)),
        ),
        backgroundColor: kBlack,
        body: StreamBuilder<ConnectivityResult>(
          stream: Connectivity().onConnectivityChanged,
          initialData: ConnectivityResult.mobile,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.data == ConnectivityResult.none) {
              return const OfflineWidget();
            } else {
              return BlocConsumer<TrackBloc, TrackState>(
                listener: (context, state) {
                  state.maybeMap(
                    orElse: () {},
                    allTracks: (state) {
                      SchedulerBinding.instance
                          .addPostFrameCallback((timeStamp) {
                        Future f = Future(() {});
                        state.track.forEach((element) {
                          f = f.then((value) => Future.delayed(
                                  const Duration(milliseconds: 200), () {
                                _tracksList.add(element);
                                _trendinsListKey.currentState
                                    .insertItem(_tracksList.length - 1);
                              }));
                        });
                      });
                    },
                  );
                },
                builder: (context, state) {
                  return state.maybeMap(
                    orElse: () {
                      return const Text('');
                    },
                    error: (state) {
                      return ServerErrorWidget(
                        onPressed: () {
                          BlocProvider.of<TrackBloc>(context)
                              .add(const TrackEvent.fetchAllTracks());
                        },
                      );
                    },
                    allTracks: (state) {
                      return Consumer<LikedProvider>(
                        builder: (context, value, child) {
                          final List<Track> _likedList = value.likedTracksList;
                          return AnimatedList(
                            key: _trendinsListKey,
                            padding: const EdgeInsets.only(bottom: 10, top: 50),
                            shrinkWrap: true,
                            itemBuilder: (context, index, animation) {
                              if (index == 2) {
                                return const FadeFromUpAnimation(
                                  begin: 0.0,
                                  end: 1.0,
                                  drop: 0.5,
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 20, bottom: 30),
                                    child: Text(
                                      "Trending",
                                      style: TextStyle(fontSize: 30),
                                    ),
                                  ),
                                );
                              } else if (index == 0) {
                                return Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, bottom: 50),
                                  child: Text(
                                    'Good ${_welcomeText()}',
                                    style: GoogleFonts.nunito(
                                      fontSize: 35,
                                    ),
                                  ),
                                );
                              } else if (index == 1) {
                                return ListView.builder(
                                  shrinkWrap: true,
                                  key: _likedListKey,
                                  physics: const ClampingScrollPhysics(),
                                  itemCount: _likedList.length + 1,
                                  itemBuilder: (context, index) {
                                    if (index == 0) {
                                      return FadeFromUpAnimation(
                                        begin: 0.0,
                                        end: 1.0,
                                        drop: 0.5,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20, bottom: 30, right: 20),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              const Text(
                                                "Liked Songs",
                                                style: TextStyle(
                                                    fontSize: 30,
                                                    color: kGreen),
                                              ),
                                              if (_likedList.isEmpty)
                                                const Text('Empty')
                                              else
                                                Row(
                                                  children: [
                                                    Text(_likedList.length
                                                        .toString()),
                                                    Lottie.asset(
                                                        'asset/heart.json',
                                                        height: 30,
                                                        width: 30,
                                                        frameRate:
                                                            FrameRate.max)
                                                  ],
                                                ),
                                            ],
                                          ),
                                        ),
                                      );
                                    } else {
                                      final Track _track =
                                          _likedList[index - 1];

                                      return FadeFromUpAnimation(
                                        begin: 0.0,
                                        end: 1.0,
                                        drop: 0.5,
                                        child: InkWell(
                                          onTap: () {
                                            _onTrackTapped(track: _track);
                                          },
                                          child: FadeTransition(
                                            opacity: animation,
                                            child: SlideTransition(
                                              position: animation.drive(Tween(
                                                  begin: const Offset(0, -0.1),
                                                  end: Offset.zero)),
                                              child: ListTile(
                                                leading: const Icon(
                                                    Icons.music_note),
                                                title: Text(
                                                  _track?.trackName
                                                          .toString() ??
                                                      index.toString(),
                                                ),
                                                isThreeLine: true,
                                                subtitle: Text(
                                                  _track?.artistName
                                                          .toString() ??
                                                      index.toString(),
                                                  style: GoogleFonts.nunito(
                                                      color: kGrey),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                  },
                                );
                              } else {
                                final Track _track = _tracksList[index - 2];
                                final bool _isLiked = _likedList.any(
                                    (element) =>
                                        element.trackName == _track.trackName);
                                return FadeFromUpAnimation(
                                  begin: 0.0,
                                  end: 1.0,
                                  drop: 0.5,
                                  child: InkWell(
                                    onTap: () {
                                      _onTrackTapped(track: _track);
                                    },
                                    child: FadeTransition(
                                      opacity: animation,
                                      child: SlideTransition(
                                        position: animation.drive(Tween(
                                            begin: const Offset(0, -0.1),
                                            end: Offset.zero)),
                                        child: ListTile(
                                          leading: const Icon(Icons.music_note),
                                          trailing: _isLiked
                                              ? Lottie.asset('asset/heart.json',
                                                  height: 30,
                                                  width: 30,
                                                  frameRate: FrameRate.max)
                                              : null,
                                          title: Text(
                                            _track?.trackName.toString() ??
                                                index.toString(),
                                          ),
                                          isThreeLine: true,
                                          subtitle: Text(
                                            _track.artistName.toString(),
                                            style: GoogleFonts.nunito(
                                                color: kGrey),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }
                            },
                            initialItemCount: _tracksList.length + 2,
                          );
                        },
                      );
                    },
                    loading: (_) {
                      return const Center(
                        child: FadeFromUpAnimation(
                          begin: 0.0,
                          end: 1.0,
                          drop: 0.5,
                          child: Text(
                            'Fetching tracks',
                            style: TextStyle(color: kWhite, fontSize: 18),
                          ),
                        ),
                      );
                    },
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}
