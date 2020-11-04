import 'package:flutter/foundation.dart';

class Story {
  final int id;
  final String videoUrl;

  Story({
    @required this.id,
    @required this.videoUrl,
  });
}

class ProfileStories {
  final int profileId;
  final String profileName, profileImageUrl;
  final List<Story> storyItem;

  ProfileStories({
    @required this.profileId,
    @required this.profileName,
    @required this.profileImageUrl,
    @required this.storyItem,
  });
}
