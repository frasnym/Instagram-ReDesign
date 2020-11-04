import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_redesign/constants.dart';
import 'package:instagram_redesign/DUMMY_DATA.dart' as dummy;

class StoriesOverview extends StatelessWidget {
  const StoriesOverview({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kDefaultSize * 5,
      margin: const EdgeInsets.only(left: kDefaultPaddin / 2),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: dummy.stories.length,
        itemBuilder: (context, index) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(2.5),
              height: kDefaultSize * 3,
              margin: const EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 7,
              ),
              decoration: BoxDecoration(
                gradient:
                    index == 0 && dummy.stories[index].storyItem.length == 0
                        ? null
                        : const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment(1.0, 0.0),
                            colors: [
                              Color(0xffFBA549),
                              Color(0xffCF2C6B),
                              Color(0xff5F5CC4),
                            ],
                          ),
                borderRadius: BorderRadius.circular(kDefaultSize / 1),
              ),
              child: Container(
                padding: const EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.circular(kDefaultSize / 1.1),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(kDefaultSize / 1.2),
                  child:
                      index == 0 && dummy.stories[index].storyItem.length == 0
                          ? SvgPicture.asset(
                              'assets/icons/plus.svg',
                              width: 50,
                            )
                          : Image.network(dummy.stories[index].profileImageUrl),
                ),
              ),
            ),
            FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(
                '${dummy.stories[index].profileName}',
                style: const TextStyle(
                  fontSize: 11.0,
                  color: kBlackColor,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
