import 'package:flutter/material.dart';
import 'package:instagram_redesign/constants.dart';

class FeedMainImage extends StatelessWidget {
  const FeedMainImage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: kDefaultPaddin),
      child: ClipRRect(
        child: Container(
          height: 280,
          // Set width with all size container can take
          width: double.infinity,
          child: Image.network(
            'https://i.ibb.co/rfqQ0w0/feed-1.jpg',
            fit: BoxFit.cover,
          ),
        ),
        borderRadius: BorderRadius.circular(30),
      ),
    );
  }
}
