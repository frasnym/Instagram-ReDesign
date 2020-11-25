import 'package:flutter/material.dart';
import 'package:instagram_redesign/constants.dart';

class ProfileBottomButton extends StatelessWidget {
  final String textButton;

  const ProfileBottomButton({Key key, this.textButton}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(kDefaultSize / 1.5),
        side: BorderSide(color: kGreyColor),
      ),
      onPressed: () {},
      child: Text(textButton),
    );
  }
}
