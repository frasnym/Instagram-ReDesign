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
  final String profileImageUrl;
  final List<Story> storyItem;

  ProfileStories({
    @required this.profileId,
    @required this.profileImageUrl,
    @required this.storyItem,
  });
}

List<ProfileStories> stories = [
  ProfileStories(
    profileId: 1,
    profileImageUrl:
        'https://knightscollege.edu.au/wp-content/uploads/wp-user-manager-uploads/2020/08/johnkick2.png',
    storyItem: [
      Story(
        id: 1,
        videoUrl: 'https://media.giphy.com/media/p4w0AMZJa2EtG/giphy.gif',
      )
    ],
  )
];
