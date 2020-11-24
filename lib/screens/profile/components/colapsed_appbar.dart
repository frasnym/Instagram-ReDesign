import 'package:flutter/material.dart';
import 'package:instagram_redesign/constants.dart';

class ColapsedAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => {
                // TODO Story Page
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(2.5),
                    height: kDefaultSize * 3,
                    margin: const EdgeInsets.symmetric(
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment(1.0, 0.0),
                        colors: [
                          const Color(0xffFBA549),
                          const Color(0xffCF2C6B),
                          const Color(0xff5F5CC4),
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
                        child: Image.network('https://i.ibb.co/q951535/2.jpg'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            buildColumnTextItem('23', 'Posts'),
            buildColumnTextItem('24.6k', 'Followers'),
            buildColumnTextItem('62', 'Following'),
          ],
        ),
        RichText(
          text: TextSpan(
            style: Theme.of(context).textTheme.headline6.copyWith(
                  fontSize: 15,
                ),
            children: [
              buildTextSpanItem('Profile Name'),
              const TextSpan(
                text: '  |  ',
                style: const TextStyle(
                  color: kGreyColor,
                ),
              ),
              buildTextSpanItem('Occupation'),
            ],
          ),
        ),
        const SizedBox(height: kDefaultPaddin / 4),
        const Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
          style: const TextStyle(
            color: kGreyColor,
            fontSize: 12,
          ),
        )
      ],
    );
  }

  TextSpan buildTextSpanItem(String string) {
    return TextSpan(
      text: string,
      style: const TextStyle(
        fontWeight: FontWeight.w900,
      ),
    );
  }

  Column buildColumnTextItem(String value, String type) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(color: kBlackColor),
        ),
        Text(
          type,
          style: TextStyle(
            color: kGreyColor,
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
