import 'package:flutter/material.dart';
import 'package:instagram_redesign/constants.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextField(
        decoration: InputDecoration(
          // Fill color of textfield
          filled: true,
          fillColor: kGreyColorLight,
          contentPadding: const EdgeInsets.symmetric(vertical: 0),
          suffixIcon: Container(
            // Separator didn't reach top & bottom
            margin: const EdgeInsets.symmetric(vertical: 5),
            // Make separator on left
            decoration: const BoxDecoration(
              border: const Border(
                left: const BorderSide(
                  width: 1,
                  color: kGreyColor,
                ),
              ),
            ),
            child: const Icon(
              Icons.qr_code,
              color: kGreyColor,
            ),
          ),
          // Prefix icon
          prefixIcon: const Icon(
            Icons.search,
            color: kGreyColor,
          ),
          hintText: "Search...",
          hintStyle: const TextStyle(color: kGreyColor),
          border: const OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              const Radius.circular(kDefaultPaddin / 2),
            ),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
