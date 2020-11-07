import 'package:flutter/material.dart';
import 'package:instagram_redesign/constants.dart';

class FeedProfileInfo extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String locationUpload;

  const FeedProfileInfo({
    Key key,
    this.name,
    this.imageUrl,
    this.locationUpload,
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
              child: Image.network(imageUrl),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  color: kWhiteColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 3),
              RichText(
                text: TextSpan(
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
                    TextSpan(
                      text: locationUpload,
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
