import 'package:flutter/material.dart';
import 'package:instagram_redesign/constants.dart';

class FeedBottomAction extends StatelessWidget {
  final String comments;
  final String likes;

  const FeedBottomAction({
    Key key,
    this.comments,
    this.likes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Positioned(
      bottom: 0,
      child: Container(
        width: screenSize.width * 0.7,
        padding: const EdgeInsets.symmetric(
          vertical: kDefaultPaddin / 2,
          horizontal: kDefaultPaddin,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: kWhiteColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0.5,
              blurRadius: 5,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildRichText(Icons.favorite, likes, Colors.red),
            buildRichText(Icons.comment_rounded, comments, Colors.grey),
            buildRichText(Icons.send, '', Colors.grey),
            buildRichText(Icons.archive, '', Colors.grey),
          ],
        ),
      ),
    );
  }

  RichText buildRichText(IconData icon, String text, Color iconColor) {
    return RichText(
      text: TextSpan(
        children: [
          WidgetSpan(
            child: Padding(
              padding: const EdgeInsets.only(
                right: kDefaultPaddin / 4,
              ),
              child: Icon(
                icon,
                color: iconColor,
                size: 17,
              ),
            ),
          ),
          TextSpan(
            text: text,
            style: TextStyle(
              fontSize: 13,
              color: kBlackColor,
              fontFamily: 'Gilroy',
            ),
          ),
        ],
      ),
    );
  }
}
