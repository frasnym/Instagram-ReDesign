import 'package:flutter/material.dart';
import 'package:instagram_redesign/constants.dart';
import 'package:instagram_redesign/screens/profile/components/highlight_item.dart';
import 'package:instagram_redesign/screens/profile/components/profile_bottom_button.dart';

class ProfileBottomSection extends StatelessWidget {
  const ProfileBottomSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<HighLightItem> highLightItemList = [
      HighLightItem(
        borderColor: kGreyColor,
        fillColor: Colors.transparent,
        icon: Icons.add,
        iconColor: kBlackColor,
        text: 'New',
      ),
      HighLightItem(
        borderColor: Colors.pink[400],
        fillColor: Colors.pink[400],
        icon: Icons.ac_unit,
        iconColor: kWhiteColor,
        text: 'Dribble',
      ),
      HighLightItem(
        borderColor: Colors.blue[900],
        fillColor: Colors.blue[900],
        icon: Icons.access_alarm,
        iconColor: kWhiteColor,
        text: 'Alarm',
      ),
      HighLightItem(
        borderColor: Colors.blue[900],
        fillColor: Colors.blue[900],
        icon: Icons.access_alarm,
        iconColor: kWhiteColor,
        text: 'Alarm',
      ),
      HighLightItem(
        borderColor: Colors.blue[900],
        fillColor: Colors.blue[900],
        icon: Icons.access_alarm,
        iconColor: kWhiteColor,
        text: 'Alarm',
      ),
      HighLightItem(
        borderColor: Colors.black,
        fillColor: Colors.black,
        icon: Icons.access_time,
        iconColor: kWhiteColor,
        text: 'Time',
      ),
      HighLightItem(
        borderColor: Colors.black,
        fillColor: Colors.black,
        icon: Icons.access_time,
        iconColor: kWhiteColor,
        text: 'Time',
      ),
    ];

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ProfileBottomButton(textButton: 'Contact'),
            ProfileBottomButton(textButton: 'Statistics'),
            ProfileBottomButton(textButton: 'Edit profile'),
          ],
        ),
        Container(
          height: 65,
          margin: const EdgeInsets.only(top: kDefaultPaddin / 2),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 7,
            itemBuilder: (context, index) {
              return highLightItemList[index];
            },
          ),
        )
      ],
    );
  }
}
