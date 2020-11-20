import 'package:flutter/material.dart';
import 'package:instagram_redesign/constants.dart';
import 'package:instagram_redesign/widgets/bottom_nav_bar.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = '/profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Stack(
        children: [
          // Bottom Navigation Bar
          BottomNavBar(pages: [false, false, false, false, true]),
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kWhiteColor,
      elevation: 0,
      title: Row(
        children: [
          const Text(
            'Profile Full Name',
            style: const TextStyle(
              color: kBlackColor,
              fontSize: 15,
            ),
          ),
          IconButton(
            icon: const Icon(
              Icons.arrow_circle_down,
              color: kBlackColor,
              size: 20,
            ),
            onPressed: () {},
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.settings,
            color: kBlackColor,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
