import 'package:flutter/material.dart';
import 'package:instagram_redesign/constants.dart';
import 'package:instagram_redesign/screens/profile/components/profile_bottom_section.dart';
import 'package:instagram_redesign/screens/profile/components/profile_top_section.dart';

class ColapsedAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProfileTopSection(),
        const SizedBox(height: kDefaultPaddin / 2),
        ProfileBottomSection(),
      ],
    );
  }
}
