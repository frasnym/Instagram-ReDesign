import 'package:flutter/material.dart';
import 'package:instagram_redesign/constants.dart';

class FeedMainImage extends StatelessWidget {
  final String imageUrl;
  const FeedMainImage({
    Key key,
    this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: kDefaultPaddin),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 7,
            blurRadius: 10,
            offset: Offset(0.0, 10),
          ),
        ],
      ),
      child: ClipRRect(
        child: Container(
          height: 280,
          // Set width with all size container can take
          width: double.infinity,
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        borderRadius: BorderRadius.circular(30),
      ),
    );
  }
}
