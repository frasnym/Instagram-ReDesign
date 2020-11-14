import 'package:flutter/material.dart';
import 'package:instagram_redesign/constants.dart';
import 'package:instagram_redesign/models/Story.dart';
import 'package:instagram_redesign/screens/story/components/story_header.dart';
import 'package:video_player/video_player.dart';

class StoryScreen extends StatefulWidget {
  static const routeName = '/story';

  @override
  _StoryScreenState createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen> {
  VideoPlayerController _controller;
  // Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    // Create and store the VideoPlayerController. The VideoPlayerController
    // offers several different constructors to play videos from assets, files,
    // or the internet.
    _controller = VideoPlayerController.network(
      'https://assets.mixkit.co/videos/preview/mixkit-womans-feet-splashing-in-the-pool-1261-large.mp4',
      // 'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
      // 'http://www.exit109.com/~dnn/clips/RW20seconds_2.mp4',
    );

    // Initialize the controller and store the Future for later use.
    // _initializeVideoPlayerFuture = _controller.initialize();

    // Use the controller to loop the video.
    _controller.setLooping(true);

    super.initState();
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final storyItems =
        ModalRoute.of(context).settings.arguments as ProfileStories;

    return Scaffold(
      body: Column(
        children: [
          StoryHeader(screenSize: screenSize, storyItems: storyItems),
          GestureDetector(
            // Pause/Play video onTap
            onTap: () {
              setState(() {
                // If the video is playing, pause it.
                if (_controller.value.isPlaying) {
                  _controller.pause();
                } else {
                  // If the video is paused, play it.
                  _controller.play();
                }
              });
            },
            child: Container(
              // height 100 used for Header
              height: screenSize.height - 100,
              // Take all width device
              width: screenSize.width,
              child: ClipRRect(
                // Make Border Radius on Video: topLeft & topRight
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(kDefaultSize),
                  topRight: Radius.circular(kDefaultSize),
                ),
                child: SizedBox.expand(
                  // Expand the video based on width & height given
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: SizedBox(
                      width: _controller.value.size?.width ?? 0,
                      height: _controller.value.size?.height ?? 0,
                      child: VideoPlayer(_controller),
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Container(
          //   margin: EdgeInsets.only(top: screenSize.height * 0.3),
          //   child: FutureBuilder(
          //     future: _initializeVideoPlayerFuture,
          //     builder: (context, snapshot) {
          //       if (snapshot.connectionState == ConnectionState.done) {
          //         // If the VideoPlayerController has finished initialization, use
          //         // the data it provides to limit the aspect ratio of the video.
          //         return AspectRatio(
          //           aspectRatio: _controller.value.aspectRatio,
          //           // Use the VideoPlayer widget to display the video.
          //           child: VideoPlayer(_controller),
          //         );
          //       } else {
          //         // If the VideoPlayerController is still initializing, show a
          //         // loading spinner.
          //         return Center(child: CircularProgressIndicator());
          //       }
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}
