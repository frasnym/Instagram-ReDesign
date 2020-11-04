import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_redesign/constants.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kWhiteColor,
        title: Text(
          'Instagram',
          style: TextStyle(
            fontFamily: 'Billabong',
            fontSize: 30,
            color: kBlackColor,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.camera_alt),
            onPressed: () {
              // TODO Open Camera
            },
            color: kBlackColor,
          ),
          IconButton(
            icon: SvgPicture.asset(
              'assets/icons/direct.svg',
              width: 20,
            ),
            onPressed: () {
              // TODO Open Message Screen
            },
            color: kBlackColor,
          )
        ],
      ),
    );
  }
}
