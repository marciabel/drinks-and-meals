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
    
if (videoId == null || videoId.length < 5) {
  return Padding(
    padding: EdgeInsets.only(top: 50.0), 
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          Icons.sentiment_dissatisfied, 
          size: 50.0,
          color: Color.fromARGB(255, 238, 187, 195),
        ),
        Text(
          'Video not available',
          style: TextStyle(
            color: Color.fromARGB(255, 238, 187, 195),
          ),
        ),
      ],
    ),
  );
}

    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: YoutubePlayer(
      controller: YoutubePlayerController(
        initialVideoId: videoId,
        flags: const YoutubePlayerFlags(
          autoPlay: false,
        ),
      ),
      showVideoProgressIndicator: true,
    ),
    );
  }
}