import 'package:flutter/material.dart';
import 'package:instagram_redesign/constants.dart';

class FeedAdditionalAction extends StatelessWidget {
  const FeedAdditionalAction({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: kDefaultPaddin * 1.3,
      right: kDefaultPaddin * 1.3,
      child: DecoratedBox(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            width: 0.5,
            color: kWhiteColor,
          ),
        ),
        child: const Icon(
          Icons.more_horiz,
          color: kWhiteColor,
        ),
      ),
    );
  }
}
