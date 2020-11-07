import 'package:flutter/foundation.dart';

class Feed {
  final int id, profileId;
  final String profileName,
      profileImageUrl,
      location,
      comments,
      likes,
      imageUrl;

  Feed({
    @required this.id,
    @required this.profileId,
    @required this.profileName,
    @required this.profileImageUrl,
    @required this.location,
    @required this.imageUrl,
    @required this.comments,
    @required this.likes,
  });
}
