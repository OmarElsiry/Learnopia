import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class AppUtils {
  static String? getVideoIdFromUrl(String url) {
    if (url.contains('http')) {
      for (final exp in [
        RegExp(
            r'^https:\/\/(?:www\.|m\.)?youtube\.com\/watch\?v=([_\-a-zA-Z0-9]{11})'),
        RegExp(
            r'^https:\/\/(?:www\.|m\.)?youtube(?:-nocookie)?\.com\/embed\/([_\-a-zA-Z0-9]{11})'),
        RegExp(r'^https:\/\/youtu\.be\/([_\-a-zA-Z0-9]{11})')
      ]) {
        final Match? match = exp.firstMatch(url);
        if (match != null && match.groupCount >= 1) {
          return match.group(1);
        }
      }
    }
    return null;
  }
}

class VidsPageConatiners extends StatelessWidget {
  final List<String> videoUrls;

  const VidsPageConatiners({
    super.key,
    required this.videoUrls,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: videoUrls.length,
      itemBuilder: (context, index) {
        final videoId = AppUtils.getVideoIdFromUrl(videoUrls[index]);
        return GestureDetector(
          onTap: () {
            if (videoId != null) {
              // Navigate to VideoPlayerScreen
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VideoPlayerScreen(videoId: videoId),
                ),
              );
            } else {
              // Optional: Launch URL externally if videoId extraction fails
              _launchURL(videoUrls[index]); // Modify if needed
            }
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(8),
              image: videoId != null
                  ? DecorationImage(
                      image: NetworkImage(
                          'https://img.youtube.com/vi/$videoId/0.jpg'),
                      fit: BoxFit.cover,
                    )
                  : null,
            ),
          ),
        );
      },
    );
  }

  void _launchURL(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      // Note the change here
      await launchUrl(Uri.parse(url)); // And here
    } else {
      throw 'Could not launch $url';
    }
  }
}

class VideoPlayerScreen extends StatefulWidget {
  final String videoId;

  const VideoPlayerScreen({super.key, required this.videoId});

  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: widget.videoId,
      flags: const YoutubePlayerFlags(
        hideThumbnail: false, captionLanguage: 'ar',
        autoPlay: true, // Optional: Set autoplay to true
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Playing Video'),
      ),
      body: YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true, // Optional: Show progress bar
      ),
    );
  }
}
