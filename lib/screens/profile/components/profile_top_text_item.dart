import 'package:flutter/material.dart';
import 'package:instagram_redesign/constants.dart';

class ProfileTopTextItem extends StatelessWidget {
  final String textValue;
  final String textDescription;

  const ProfileTopTextItem({
    Key key,
    this.textValue,
    this.textDescription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          textValue,
          style: TextStyle(color: kBlackColor),
        ),
        Text(
          textDescription,
          style: TextStyle(
            color: kGreyColor,
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
