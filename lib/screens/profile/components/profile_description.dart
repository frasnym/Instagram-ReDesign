import 'package:flutter/material.dart';
import 'package:instagram_redesign/constants.dart';

class ProfileDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: Theme.of(context).textTheme.headline6.copyWith(
              fontSize: 15,
            ),
        children: [
          const TextSpan(
            text: 'Profile Name',
            style: const TextStyle(
              fontWeight: FontWeight.w900,
            ),
          ),
          const TextSpan(
            text: '  |  ',
            style: const TextStyle(
              color: kGreyColor,
            ),
          ),
          const TextSpan(
            text: 'Occupation',
            style: const TextStyle(
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
    );
  }
}
