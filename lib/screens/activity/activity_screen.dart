import 'package:flutter/material.dart';
import 'package:instagram_redesign/constants.dart';
import 'package:instagram_redesign/screens/activity/components/friend_activity.dart';
import 'package:instagram_redesign/screens/activity/components/friend_suggestion.dart';
import 'package:instagram_redesign/widgets/bottom_nav_bar.dart';

class ActivityScreen extends StatelessWidget {
  static const routeName = '/activity';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(
              right: kDefaultPaddin,
              left: kDefaultPaddin,
              bottom: kDefaultPaddin * 4,
            ),
            child: ListView.builder(
              // Make +1 because we adding Stories Widget
              itemCount: 10,
              itemBuilder: (context, index) {
                // Make first item always show Suggestion
                if (index == 0) {
                  return FriendSuggestion();
                }
                return FriendActivity();
              },
            ),
          ),
          // Bottom Navigation Bar
          BottomNavBar(pages: [false, false, false, true, false]),
        ],
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kWhiteColor,
      elevation: 0,
      title: Text(
        'Activity',
        style: Theme.of(context)
            .textTheme
            .headline6
            .copyWith(fontWeight: FontWeight.bold),
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.group,
            color: kBlackColor,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
