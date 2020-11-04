import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_redesign/constants.dart';
import 'package:instagram_redesign/models/Story.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';

  final List<ProfileStories> stories = [
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 60,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) => Container(
                padding: const EdgeInsets.all(2.5),
                margin: const EdgeInsets.all(5),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment(1.0, 0.0),
                    colors: [
                      const Color(0xffFBA549),
                      const Color(0xffCF2C6B),
                      const Color(0xff5F5CC4),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Container(
                  padding: const EdgeInsets.all(2.0),
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.network(stories[0].profileImageUrl),
                  ),
                ),
              ),
            ),
          )
        ],
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
