
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/core/colors/colors.dart';

class OfflineWidget extends StatelessWidget {
  const OfflineWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'asset/dino.png',
              height: 150,
            ),
            Text('Ooops No Internet Connection Found !',
                textAlign: TextAlign.center,
                style:
                    GoogleFonts.nunito(fontSize: 14, color: kGrey)),
          ],
        ),
      ),
    );
  }
}
