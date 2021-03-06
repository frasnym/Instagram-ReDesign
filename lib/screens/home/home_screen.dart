import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_redesign/constants.dart';
import 'package:instagram_redesign/screens/home/components/feed_item.dart';
import 'package:instagram_redesign/screens/home/components/stories_overview.dart';
import 'package:instagram_redesign/DUMMY_DATA.dart' as dummy;
import 'package:instagram_redesign/widgets/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';

  sendOrder() async {
    String url = 'https://wa.me/6281999200585?text=';
    String order =
        'Hello, I got information from Instagram ReDesign Application. I want to hire you';

    order = Uri.encodeComponent(order);

    if (await canLaunch(url + order)) {
      await launch(url + order);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(sendOrder),
      body: ListView.builder(
        itemCount:
            dummy.feeds.length + 1, // Make +1 because we adding Stories Widget
        itemBuilder: (context, index) {
          if (index == 0) {
            // Make first item always show Stories Widget
            return StoriesOverview();
          }
          return FeedItem(feedItem: dummy.feeds[index - 1]);
        },
      ),
      bottomNavigationBar:
          BottomNavBar(pages: [true, false, false, false, false]),
    );
  }

  AppBar buildAppBar(Function press) {
    return AppBar(
      elevation: 0,
      backgroundColor: kWhiteColor,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: press,
            child: const Text(
              'Instagram',
              style: TextStyle(
                fontFamily: 'Billabong',
                fontSize: 30,
                color: kBlackColor,
              ),
            ),
          ),
          const FittedBox(
            child: const Text(
              'Hire me. Click Instagram Text',
              style: const TextStyle(
                color: kBlackColor,
              ),
            ),
          ),
        ],
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
