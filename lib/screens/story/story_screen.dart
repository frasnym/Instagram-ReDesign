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
  Future<void> _initializeVideoPlayerFuture;
  double _videoProgress = 0.0;
  double _videoDuration = 0.0;

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

    // Listener to create video progress
    _controller.addListener(() {
      double seconds = _controller.value.position.inSeconds.toDouble();

      // check if video duration not set
      if (_videoDuration == seconds) {
        _videoDuration = _controller.value.duration.inSeconds.toDouble();
      }

      setState(() {
        _videoProgress = seconds / _videoDuration;
      });
    });

    // Initialize the controller and store the Future for later use.
    _initializeVideoPlayerFuture = _controller.initialize();

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
          Padding(
            padding: const EdgeInsets.only(
              bottom: 15,
              left: kDefaultPaddin / 2,
              right: kDefaultPaddin / 2,
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: LinearProgressIndicator(
                backgroundColor: kGreyColorLight,
                valueColor: const AlwaysStoppedAnimation<Color>(kGreyColor),
                value: _videoProgress,
                minHeight: 5,
              ),
            ),
          ),
          FutureBuilder(
            future: _initializeVideoPlayerFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                // If the VideoPlayerController has finished initialization, use
                // the data it provides to limit the aspect ratio of the video.

                return GestureDetector(
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
                  child: buildContainerExpand(
                    screenSize,
                    _controller.value.size?.width ?? 0,
                    _controller.value.size?.height ?? 0,
                    VideoPlayer(_controller),
                  ),
                );
              } else {
                // If the VideoPlayerController is still initializing, show a
                // loading spinner.
                return buildContainerExpand(
                  screenSize,
                  screenSize.width,
                  screenSize.height,
                  Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }

  Container buildContainerExpand(
    Size screenSize,
    double width,
    double height,
    Widget content,
  ) {
    return Container(
      // height 100 used for Header
      height: screenSize.height - 120,
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
              width: width,
              height: height,
              child: Container(
                decoration: BoxDecoration(
                  color: kGreyColor,
                ),
                child: content,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
