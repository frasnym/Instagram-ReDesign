import 'package:instagram_redesign/models/Story.dart';

final List<ProfileStories> stories = [
  ProfileStories(
    profileId: 1,
    profileName: 'My Story',
    profileImageUrl: 'https://i.ibb.co/dQKdPTK/1.jpg',
    storyItem: [],
  ),
  ProfileStories(
    profileId: 2,
    profileName: 'Jane',
    profileImageUrl: 'https://i.ibb.co/q951535/2.jpg',
    storyItem: [
      Story(
        id: 2,
        videoUrl: 'https://media.giphy.com/media/p4w0AMZJa2EtG/giphy.gif',
      )
    ],
  ),
  ProfileStories(
    profileId: 3,
    profileName: 'Budy',
    profileImageUrl: 'https://i.ibb.co/z2TYMjD/3.jpg',
    storyItem: [
      Story(
        id: 2,
        videoUrl: 'https://media.giphy.com/media/p4w0AMZJa2EtG/giphy.gif',
      )
    ],
  ),
  ProfileStories(
    profileId: 4,
    profileName: 'Extra',
    profileImageUrl: 'https://i.ibb.co/j3hbCRH/4.jpg',
    storyItem: [
      Story(
        id: 2,
        videoUrl: 'https://media.giphy.com/media/p4w0AMZJa2EtG/giphy.gif',
      )
    ],
  ),
  ProfileStories(
    profileId: 5,
    profileName: 'Antony',
    profileImageUrl: 'https://i.ibb.co/nQ2Kmd8/5.jpg',
    storyItem: [
      Story(
        id: 2,
        videoUrl: 'https://media.giphy.com/media/p4w0AMZJa2EtG/giphy.gif',
      )
    ],
  )
];
