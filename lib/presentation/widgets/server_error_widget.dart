import 'package:flutter/material.dart';
import 'package:music_app/core/colors/colors.dart';
import 'package:music_app/presentation/widgets/fade_animation.dart';

class ServerErrorWidget extends StatelessWidget {
  const ServerErrorWidget({
    Key key,
    this.onPressed,
  }) : super(key: key);
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FadeFromUpAnimation(
            begin: 0.0,
            end: 1.0,
            drop: 0.1,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  'asset/server_error.jpg',
                  height: 200,
                )),
          ),
          const SizedBox(
            height: 20,
          ),
          const FadeFromUpAnimation(
            begin: 0.0,
            end: 1.0,
            drop: 0.2,
            child: Text("Oh oh an unexpected error occured!!"),
          ),
          const SizedBox(
            height: 30,
          ),
          RaisedButton(
            color: kWhite,
            onPressed: () {
              onPressed();
            },
            child: const FadeFromUpAnimation(
              begin: 0.0,
              end: 1.0,
              drop: 0.2,
              child: Text(
                'Try again',
                style: TextStyle(color: kGrey),
              ),
            ),
          )
        ],
      ),
    );
  }
}
