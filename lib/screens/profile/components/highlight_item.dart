import 'package:flutter/material.dart';
import 'package:instagram_redesign/constants.dart';

class HighLightItem extends StatelessWidget {
  final Color borderColor;
  final Color fillColor;
  final IconData icon;
  final Color iconColor;
  final String text;

  HighLightItem({
    Key key,
    this.borderColor,
    this.fillColor,
    this.icon,
    this.iconColor,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: kDefaultPaddin),
      child: Column(
        children: [
          Container(
            height: 40,
            width: 40,
            margin: const EdgeInsets.only(bottom: kDefaultPaddin / 2),
            decoration: BoxDecoration(
              border: Border.all(
                color: borderColor,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
              color: fillColor,
            ),
            child: Icon(
              icon,
              color: iconColor,
            ),
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w300,
              color: kBlackColor,
            ),
          )
        ],
      ),
    );
  }
}
