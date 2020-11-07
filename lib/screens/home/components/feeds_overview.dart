import 'package:flutter/material.dart';
import 'package:instagram_redesign/constants.dart';

class FeedsOverview extends StatelessWidget {
  const FeedsOverview({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: kDefaultPaddin),
            child: ClipRRect(
              child: Container(
                height: 280,
                width: double.infinity,
                child: Image.network(
                  'https://i.ibb.co/rfqQ0w0/feed-1.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          Positioned(
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
                    Text(
                      'User Profile Name',
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
          ),
          Positioned(
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
          ),
          Positioned(
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
                  buildRichText(Icons.favorite, '7.2k', Colors.red),
                  buildRichText(Icons.comment_rounded, '241', Colors.grey),
                  buildRichText(Icons.send, '', Colors.grey),
                  buildRichText(Icons.archive, '', Colors.grey),
                ],
              ),
            ),
          )
        ],
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
