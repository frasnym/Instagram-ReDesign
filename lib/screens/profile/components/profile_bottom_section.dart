import 'package:flutter/material.dart';
import 'package:instagram_redesign/constants.dart';
import 'package:instagram_redesign/screens/profile/components/profile_bottom_button.dart';

class ProfileBottomSection extends StatelessWidget {
  const ProfileBottomSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ProfileBottomButton(textButton: 'Contact'),
            ProfileBottomButton(textButton: 'Statistics'),
            ProfileBottomButton(textButton: 'Edit profile'),
          ],
        ),
        Container(
          height: 50,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Text(
                'Highlight           ',
                style: TextStyle(
                  color: kBlackColor,
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
