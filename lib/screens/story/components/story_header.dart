import 'package:flutter/material.dart';
import 'package:instagram_redesign/constants.dart';
import 'package:instagram_redesign/models/Story.dart';

class StoryHeader extends StatelessWidget {
  const StoryHeader({
    Key key,
    @required this.screenSize,
    @required this.storyItems,
  }) : super(key: key);

  final Size screenSize;
  final ProfileStories storyItems;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenSize.width,
      height: 80,
      margin: const EdgeInsets.only(
        top: kDefaultPaddin,
        left: kDefaultPaddin,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 50,
            margin: const EdgeInsets.only(
              right: kDefaultPaddin / 2,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(storyItems.profileImageUrl),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: kDefaultPaddin),
                Text(
                  storyItems.profileName,
                  style: const TextStyle(
                    color: kBlackColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: kDefaultSize / 2),
                RichText(
                  text: TextSpan(
                    children: [
                      WidgetSpan(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            right: kDefaultPaddin / 4,
                          ),
                          child: const Icon(
                            Icons.location_on,
                            color: kBlackColor,
                            size: 15,
                          ),
                        ),
                      ),
                      TextSpan(
                        text: storyItems.profileName,
                        style: const TextStyle(
                          fontSize: 11,
                          color: kBlackColor,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: kDefaultPaddin),
            width: 25,
            height: 25,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                width: 1,
                color: kGreyColor,
              ),
            ),
            child: const Icon(
              Icons.more_horiz,
              color: kGreyColor,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: kDefaultPaddin),
            width: 25,
            height: 25,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: kGreyColor,
              ),
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            child: const Icon(
              Icons.close,
              color: kGreyColor,
            ),
          )
        ],
      ),
    );
  }
}
