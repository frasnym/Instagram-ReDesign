import 'package:flutter/material.dart';
import 'package:instagram_redesign/constants.dart';

class FeedProfileInfo extends StatelessWidget {
  const FeedProfileInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: kDefaultPaddin / 1.5,
      left: kDefaultPaddin / 1.5,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 50,
            padding: const EdgeInsets.all(2),
            margin: const EdgeInsets.only(
              right: kDefaultPaddin / 2,
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                width: 2,
                color: kWhiteColor,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network('https://i.ibb.co/dQKdPTK/1.jpg'),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'User Profile Name',
                style: TextStyle(
                  color: kWhiteColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 3),
              RichText(
                text: const TextSpan(
                  children: [
                    WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          right: kDefaultPaddin / 4,
                        ),
                        child: Icon(
                          Icons.location_on,
                          color: kWhiteColor,
                          size: 15,
                        ),
                      ),
                    ),
                    const TextSpan(
                      text: 'User Profile Location',
                      style: TextStyle(
                        fontSize: 11,
                        color: kWhiteColor,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
