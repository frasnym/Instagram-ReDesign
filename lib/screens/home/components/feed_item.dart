import 'package:flutter/material.dart';
import 'package:instagram_redesign/constants.dart';
import 'package:instagram_redesign/models/Feed.dart';
import 'package:instagram_redesign/screens/home/components/feed_additional_action.dart';
import 'package:instagram_redesign/screens/home/components/feed_bottom_action.dart';
import 'package:instagram_redesign/screens/home/components/feed_main_image.dart';
import 'package:instagram_redesign/screens/home/components/feed_profile_info.dart';

class FeedItem extends StatelessWidget {
  final Feed feedItem;

  const FeedItem({Key key, this.feedItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPaddin,
        vertical: kDefaultPaddin / 4,
      ),
      child: Stack(
        // Default centering all item inside stack, useful for bottom bar (FeedBottomAction)
        alignment: Alignment.center,
        children: [
          FeedMainImage(imageUrl: feedItem.imageUrl),
          FeedProfileInfo(
            name: feedItem.profileName,
            imageUrl: feedItem.profileImageUrl,
            locationUpload: feedItem.location,
          ),
          FeedAdditionalAction(),
          FeedBottomAction(
            comments: feedItem.comments,
            likes: feedItem.likes,
          )
        ],
      ),
    );
  }
}
