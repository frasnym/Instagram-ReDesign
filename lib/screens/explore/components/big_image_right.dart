import 'package:flutter/material.dart';
import 'package:instagram_redesign/constants.dart';

class BigImageRight extends StatelessWidget {
  final Size screenSize;
  final List<String> imageList;

  const BigImageRight({
    Key key,
    this.screenSize,
    this.imageList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: kDefaultPaddin / 4),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Image.network(
                    imageList[1],
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: kDefaultPaddin / 4),
                Expanded(
                  child: Image.network(
                    imageList[2],
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: kDefaultPaddin / 4),
          Image.network(
            imageList[0],
            width: (screenSize.width - 40) * 0.66,
            height: (screenSize.width - 40) * 0.66,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
