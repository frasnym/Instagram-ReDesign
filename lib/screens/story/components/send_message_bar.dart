import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_redesign/constants.dart';

class SendMessageBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              // Fill color of textfield
              filled: true,
              contentPadding: const EdgeInsets.all(kDefaultPaddin),
              suffixIcon: IconButton(
                // Load icon from SVG
                icon: SvgPicture.asset(
                  'assets/icons/direct.svg',
                  width: kDefaultSize,
                  color: kGreyColorLight,
                ),
                onPressed: () {
                  // TODO Send Message
                },
                color: kBlackColor,
              ),
              hintText: "Send Message",
              hintStyle: const TextStyle(color: kGreyColorLight),
              border: const OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                  const Radius.circular(kDefaultPaddin / 2),
                ),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        Container(
          width: 50,
          height: 50,
          padding: const EdgeInsets.only(
            left: kDefaultPaddin,
          ),
          child: SvgPicture.asset(
            'assets/icons/love-reaction.svg',
            fit: BoxFit.contain,
          ),
        )
      ],
    );
  }
}
