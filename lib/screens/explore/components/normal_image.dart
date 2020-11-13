import 'package:flutter/material.dart';
import 'package:instagram_redesign/constants.dart';

class NormalImage extends StatelessWidget {
  final Size screenSize;
  final List<String> imageList;

  const NormalImage({
    Key key,
    this.screenSize,
    this.imageList,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: kDefaultPaddin / 4),
      height: (screenSize.width - 40) * 0.66,
      child: Column(
        children: [
          Expanded(
            child: buildExplorerNormalThree(screenSize, [
              imageList[0],
              imageList[1],
              imageList[2],
            ]),
          ),
          const SizedBox(height: kDefaultPaddin / 4),
          Expanded(
            child: buildExplorerNormalThree(screenSize, [
              imageList[3],
              imageList[4],
              imageList[5],
            ]),
          ),
        ],
      ),
    );
  }

  Row buildExplorerNormalThree(Size screenSize, List<String> imageList) {
    return Row(
      children: [
        SizedBox(
          width: (screenSize.width - 40) * 0.66,
          child: Row(
            children: [
              Expanded(
                child: Image.network(
                  imageList[0],
                  height: (screenSize.width - 40 - 5) * 0.33,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: kDefaultPaddin / 4),
              Expanded(
                child: Image.network(
                  imageList[1],
                  height: (screenSize.width - 40 - 5) * 0.33,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: kDefaultPaddin / 4),
        Expanded(
          child: Image.network(
            imageList[2],
            fit: BoxFit.cover,
            height: (screenSize.width - 40 - 5) * 0.33,
          ),
        )
      ],
    );
  }
}
