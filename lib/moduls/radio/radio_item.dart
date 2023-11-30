import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/moduls/radio/radio_response.dart';

class RadioItem extends StatelessWidget {
  Radios radios;
  AudioPlayer audioPlayer;

  RadioItem(this.radios, this.audioPlayer);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(40),
            child: Text(
              radios.name ?? '',
              style: theme.textTheme.bodyMedium,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () async {
                    await audioPlayer.play(UrlSource(radios.url!));
                  },
                  icon: Icon(
                    Icons.play_arrow_rounded,
                    size: 50,
                    color: theme.primaryColor,
                  )),
              SizedBox(
                width: 40,
              ),
              IconButton(
                  onPressed: () {
                    audioPlayer.stop();
                  },
                  icon: Icon(
                    Icons.stop,
                    size: 50,
                    color: theme.primaryColor,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
