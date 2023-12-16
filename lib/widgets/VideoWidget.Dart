import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoWidget extends StatelessWidget {
  final String? youtubeUrl;

  const VideoWidget({required this.youtubeUrl});

  @override
  Widget build(BuildContext context) {
    String? videoId;
    if (youtubeUrl != null && youtubeUrl!.isNotEmpty) {
      videoId = YoutubePlayer.convertUrlToId(youtubeUrl!);
    }
    
    // When no videoId provided, don't show the YoutubePlayer
    if (videoId == null || videoId.length < 5) {
      return const Text('Video not available');
    }

    return YoutubePlayer(
      controller: YoutubePlayerController(
        initialVideoId: videoId,
        flags: const YoutubePlayerFlags(
          autoPlay: false,
        ),
      ),
      showVideoProgressIndicator: true,
    );
  }
}