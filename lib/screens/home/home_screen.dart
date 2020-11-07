import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_redesign/constants.dart';
import 'package:instagram_redesign/screens/home/components/feed_item.dart';
import 'package:instagram_redesign/screens/home/components/stories_overview.dart';
import 'package:instagram_redesign/DUMMY_DATA.dart' as dummy;

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: ListView.builder(
        // Make +1 because we adding Stories Widget
        itemCount: dummy.feeds.length + 1,
        itemBuilder: (context, index) {
          // Make first item always show Stories Widget
          if (index == 0) {
            return StoriesOverview();
          }
          return FeedItem(feedItem: dummy.feeds[index - 1]);
        },
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: kWhiteColor,
      title: const Text(
        'Instagram',
        style: TextStyle(
          fontFamily: 'Billabong',
          fontSize: 30,
          color: kBlackColor,
        ),
      ),
      actions: [
        IconButton(
          // Load icon from SVG
          icon: SvgPicture.asset(
            'assets/icons/camera.svg',
            width: kDefaultSize,
          ),
          onPressed: () {
            // TODO Open Camera
          },
          color: kBlackColor,
        ),
        IconButton(
          // Load icon from SVG
          icon: SvgPicture.asset(
            'assets/icons/direct.svg',
            width: kDefaultSize,
          ),
          onPressed: () {
            // TODO Open Message Screen
          },
          color: kBlackColor,
        )
      ],
    );
  }
}
