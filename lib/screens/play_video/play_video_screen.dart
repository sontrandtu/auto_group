import 'package:auto_group/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PlayVideoScreen extends StatefulWidget {
  final String? linkVideo;

  const PlayVideoScreen({
    Key? key,
    this.linkVideo,
  }) : super(key: key);

  @override
  _PlayVideoScreenState createState() => _PlayVideoScreenState();
}

class _PlayVideoScreenState extends State<PlayVideoScreen> {
  YoutubePlayerController? _youtubePlayer;

  @override
  void initState() {
    super.initState();
    _youtubePlayer = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(widget.linkVideo!)!,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        enableCaption: false,
        isLive: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: _youtubePlayer!,
      ),
      builder: (context, player) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              "Video",
              style: TextStyle(
                fontFamily: 'SVN-Arial3',
                color: kSecondaryColor,
                fontSize: 20,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
            ),
            centerTitle: true,
            leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back_ios_new_outlined),
            ),
            backgroundColor: kPrimaryColor,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30),
              ),
            ),
            toolbarHeight: 102,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              player,
            ],
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _youtubePlayer!.dispose();
  }
}
