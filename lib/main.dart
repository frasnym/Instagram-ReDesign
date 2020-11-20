import 'package:flutter/material.dart';
import 'package:instagram_redesign/constants.dart';
import 'package:instagram_redesign/screens/activity/activity_screen.dart';
import 'package:instagram_redesign/screens/explore/explore_screen.dart';
import 'package:instagram_redesign/screens/home/home_screen.dart';
import 'package:instagram_redesign/screens/profile/profile_screen.dart';
import 'package:instagram_redesign/screens/story/story_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram ReDesign',
      debugShowCheckedModeBanner: false,
      color: kWhiteColor,
      theme: ThemeData(
        fontFamily: 'Gilroy',
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
      routes: {
        HomeScreen.routeName: (ctx) => HomeScreen(),
        ExploreScreen.routeName: (ctx) => ExploreScreen(),
        StoryScreen.routeName: (ctx) => StoryScreen(),
        ActivityScreen.routeName: (ctx) => ActivityScreen(),
        ProfileScreen.routeName: (ctx) => ProfileScreen(),
        // TODO Sign In
      },
    );
  }
}
