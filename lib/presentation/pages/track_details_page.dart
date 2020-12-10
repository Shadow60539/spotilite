import 'package:cached_network_image/cached_network_image.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:music_app/core/colors/colors.dart';
import 'package:music_app/core/model/lyrics.dart';
import 'package:music_app/core/model/track.dart';
import 'package:music_app/core/services/internet_connectivity.dart';
import 'package:music_app/core/utils/liked_provider.dart';
import 'package:music_app/presentation/bloc/liked/liked_bloc.dart';
import 'package:music_app/presentation/bloc/single_track/single_track_bloc.dart';
import 'package:music_app/presentation/widgets/fade_animation.dart';
import 'package:music_app/presentation/widgets/offline_widget.dart';
import 'package:music_app/presentation/widgets/server_error_widget.dart';
import 'package:provider/provider.dart';

class TrackDetailsPage extends StatefulWidget {
  final String trackTitle;
  final String trackId;

  const TrackDetailsPage({Key key, this.trackTitle, this.trackId})
      : super(key: key);

  @override
  _TrackDetailsPageState createState() => _TrackDetailsPageState();
}

class _TrackDetailsPageState extends State<TrackDetailsPage> {
  bool _showLyrics = false;
  bool _pause = false;
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _key,
        backgroundColor: kBlack,
        body: StreamBuilder<ConnectivityResult>(
          stream: Connectivity().onConnectivityChanged,
          initialData: ConnectivityResult.mobile,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.data == ConnectivityResult.none) {
              return const OfflineWidget();
            } else {
              return BlocConsumer<SingleTrackBloc, SingleTrackState>(
                listener: (context, state) {},
                builder: (context, state) {
                  return state.maybeMap(
                    orElse: () {
                      return Text(state.toString());
                    },
                    error: (state) {
                      return ServerErrorWidget(
                        onPressed: () {
                          BlocProvider.of<SingleTrackBloc>(context).add(
                              SingleTrackEvent.getSingleTrackAndLyrics(
                                  trackId: widget.trackId));
                        },
                      );
                    },
                    loading: (_) {
                      return Center(
                        child: FadeFromUpAnimation(
                          begin: 0.0,
                          end: 1.0,
                          drop: 0.5,
                          child: Text(
                            'Fetching ${widget.trackTitle}',
                            style: const TextStyle(color: kWhite, fontSize: 18),
                          ),
                        ),
                      );
                    },
                    likeSong: (_) {
                      return Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Lottie.asset('asset/heart.json',
                                  height: 50, width: 50),
                              const SizedBox(
                                height: 10,
                              ),
                              FadeFromUpAnimation(
                                begin: 0.0,
                                end: 1.0,
                                drop: 0.5,
                                child: Text(
                                  '${widget.trackTitle} added to Liked Songs',
                                  style: const TextStyle(
                                      color: kWhite, fontSize: 18),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    singleTrackAndLyrics: (state) {
                      final Track _track = state.track;
                      final Lyrics _lyrics = state.lyrics;
                      return Consumer<LikedProvider>(
                        builder: (context, provider, child) {
                          final bool _isLiked = provider.likedTracksList.any(
                              (element) =>
                                  element.trackName == _track.trackName);
                          return PageView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            controller: _pageController,
                            itemBuilder: (context, index) {
                              return CustomScrollView(
                                physics: const BouncingScrollPhysics(),
                                slivers: [
                                  SliverAppBar(
                                    elevation: 1,
                                    backgroundColor: kBlack,
                                    automaticallyImplyLeading: false,
                                    stretch: true,
                                    expandedHeight: 60,
                                    flexibleSpace: FlexibleSpaceBar(
                                      centerTitle: true,
                                      title: Text(
                                        _track.trackName,
                                        style: GoogleFonts.nunito(fontSize: 14),
                                      ),
                                      background: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          IconButton(
                                            icon: const Icon(
                                              Icons.arrow_back_ios,
                                              size: 14,
                                            ),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                          ),
                                          IconButton(
                                            icon: FaIcon(
                                              _isLiked
                                                  ? FontAwesomeIcons.solidHeart
                                                  : FontAwesomeIcons.heart,
                                              size: 14,
                                              color: _isLiked
                                                  ? Colors.green
                                                  : kWhite,
                                            ),
                                            onPressed: () {
                                              BlocProvider.of<LikedBloc>(
                                                      context)
                                                  .add(LikedEvent.likeSong(
                                                      artistName:
                                                          _track.artistName,
                                                      trackId: _track.trackId
                                                          .toString(),
                                                      trackName:
                                                          _track.trackName));
                                              _key.currentState.showSnackBar(
                                                  SnackBar(
                                                      duration: const Duration(
                                                          seconds: 2),
                                                      content: Row(
                                                        children: [
                                                          Lottie.asset(
                                                              'asset/heart.json',
                                                              height: 30,
                                                              width: 30),
                                                          const SizedBox(
                                                            width: 10,
                                                          ),
                                                          Text(_isLiked
                                                              ? 'Removed from liked songs'
                                                              : 'Added to liked songs'),
                                                        ],
                                                      )));
                                            },
                                          ),
                                        ],
                                      ),
                                      stretchModes: [
                                        StretchMode.zoomBackground,
                                        StretchMode.blurBackground
                                      ],
                                    ),
                                  ),
                                  SliverList(
                                    delegate: SliverChildListDelegate([
                                      Column(children: [
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        FadeFromUpAnimation(
                                          begin: 0.0,
                                          end: 0.5,
                                          drop: 0.2,
                                          child: Card(
                                            elevation: 2,
                                            shadowColor: kWhite,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(100)),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                              child: CachedNetworkImage(
                                                imageUrl:
                                                    "https://image.freepik.com/free-vector/neon-glowing-music-track-sound-wave-modern-styled-musical-template-video-cover-poster-any-music-themed-usage_148087-138.jpg",
                                                height: 200,
                                                width: 200,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        FadeFromUpAnimation(
                                          begin: 0.5,
                                          end: 1.0,
                                          drop: 0.5,
                                          child: Text(
                                            _track.trackName,
                                            style: GoogleFonts.nunito(
                                                fontSize: 20),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        FadeFromUpAnimation(
                                          begin: 0.5,
                                          end: 1.0,
                                          drop: 0.5,
                                          child: Text(
                                            _track.artistName,
                                            style: GoogleFonts.nunito(
                                                fontSize: 14, color: kGrey),
                                          ),
                                        ),
                                        FadeFromUpAnimation(
                                          begin: 0.5,
                                          end: 1.0,
                                          drop: 0.5,
                                          child: SliderTheme(
                                            data: SliderThemeData(
                                                activeTickMarkColor: kWhite,
                                                activeTrackColor: kWhite,
                                                trackHeight: 2,
                                                thumbColor: kWhite,
                                                thumbShape: SliderComponentShape
                                                    .noOverlay),
                                            child: Slider.adaptive(
                                              value: 0.75,
                                              onChanged: (v) {},
                                            ),
                                          ),
                                        ),
                                        FadeFromUpAnimation(
                                          begin: 0.5,
                                          end: 1.0,
                                          drop: 0.5,
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 22),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  '2.18',
                                                  style: GoogleFonts.nunito(
                                                      fontSize: 12,
                                                      color: kGrey),
                                                ),
                                                Text(
                                                  '3.35',
                                                  style: GoogleFonts.nunito(
                                                      fontSize: 12,
                                                      color: kGrey),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        FadeFromUpAnimation(
                                          begin: 0.5,
                                          end: 1.0,
                                          drop: 0.5,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              IconButton(
                                                icon: const Icon(
                                                    Icons.skip_previous),
                                                iconSize: 30,
                                                onPressed: () {
                                                  _pageController.previousPage(
                                                      duration: const Duration(
                                                          milliseconds: 200),
                                                      curve: Curves.ease);
                                                },
                                              ),
                                              IconButton(
                                                icon: _pause
                                                    ? const Icon(Icons
                                                        .pause_circle_filled)
                                                    : const Icon(Icons
                                                        .play_circle_filled),
                                                onPressed: () {
                                                  setState(() {
                                                    _pause = !_pause;
                                                  });
                                                },
                                                iconSize: 50,
                                              ),
                                              IconButton(
                                                icon:
                                                    const Icon(Icons.skip_next),
                                                onPressed: () {
                                                  _pageController.nextPage(
                                                      duration: const Duration(
                                                          milliseconds: 200),
                                                      curve: Curves.ease);
                                                },
                                                iconSize: 30,
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        AnimatedCrossFade(
                                          firstChild: OutlineButton(
                                            highlightColor: kBlack,
                                            hoverColor: kWhite,
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10),
                                            borderSide:
                                                const BorderSide(color: kWhite),
                                            onPressed: () {
                                              setState(() {
                                                _showLyrics = true;
                                              });
                                            },
                                            child: const Text('Show Lyrics'),
                                          ),
                                          secondChild: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20),
                                            child: Text(_lyrics.lyricsBody),
                                          ),
                                          crossFadeState: _showLyrics
                                              ? CrossFadeState.showSecond
                                              : CrossFadeState.showFirst,
                                          duration: const Duration(
                                            milliseconds: 200,
                                          ),
                                        )
                                      ])
                                    ]),
                                  )
                                ],
                              );
                            },
                          );
                        },
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
