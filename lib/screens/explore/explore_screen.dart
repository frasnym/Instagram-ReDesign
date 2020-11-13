import "dart:math";

import 'package:flutter/material.dart';
import 'package:instagram_redesign/constants.dart';
import 'package:instagram_redesign/screens/explore/components/big_image_left.dart';
import 'package:instagram_redesign/screens/explore/components/big_image_right.dart';
import 'package:instagram_redesign/screens/explore/components/normal_image.dart';
import 'package:instagram_redesign/screens/explore/components/search_bar.dart';
import 'package:instagram_redesign/widgets/bottom_nav_bar.dart';

class ExploreScreen extends StatelessWidget {
  static const routeName = '/explore';

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    final List<String> imageList = [
      'https://cached.imagescaler.hbpl.co.uk/resize/scaleWidth/815/cached.offlinehbpl.hbpl.co.uk/news/SUC/color1-20191204062437970.jpg',
      'https://miro.medium.com/max/960/1*c94SpnDXD8imHLUW0fl-ng.jpeg',
      'https://htmlcolorcodes.com/assets/images/html-color-codes-color-palette-generators-thumb.jpg',
      'https://cdn.ragan.com/wp-content/uploads/2019/07/color_marketing_psychology.jpg',
      'https://img.freepik.com/free-photo/abstract-blur-green-color-background_7182-1948.jpg',
      'https://resize.hswstatic.com/w_796/gif/color-box.jpg',
      'https://usabilla.com/blog/wp-content/uploads/2015/11/2ppylfixhd8-saksham-gangwar.jpg',
      'https://www.capellapreschool.com/wp-content/uploads/2019/08/chameleon-in-leo-lionni-a-color-of-his-own-1024x767.jpg',
      'https://www.adobe.com/content/dam/cc/us/en/creativecloud/design/discover/is-black-a-color/desktop/is-black-a-color_P3_720x350.jpg',
      'https://smallbiztrends.com/wp-content/uploads/2016/12/color-psychology.png',
      'https://img.freepik.com/free-vector/green-orange-color-flow-background_7649-169.jpg',
      'https://wp-en.oberlo.com/wp-content/uploads/2019/08/toa-heftiba-0WAJhFK7Q9o-unsplash.jpg',
    ];
    // Generates a new Random object
    final _random = new Random();
    // Select random list
    // imageList[_random.nextInt(imageList.length)]

    // Used for image pattern
    // 1-0-0
    // 0-1-0
    // 0-0-1
    // 0-1-0
    // 1-0-0
    // 0-1-0
    // 0-0-1
    var normalCount = 0;
    var rightCount = 0;
    var leftCount = 1;

    return Scaffold(
      body: Stack(
        children: [
          // Build sticky categories button
          NestedScrollView(
            headerSliverBuilder: (
              BuildContext context,
              bool innerBoxIsScrolled,
            ) {
              return <Widget>[
                SliverOverlapAbsorber(
                  handle:
                      NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                  sliver: SliverAppBar(
                    elevation: 0,
                    backgroundColor: kWhiteColor,
                    // scrollable title SliverAppBar
                    title: SearchBar(),
                    floating: true,
                    snap: true,
                    // pinned/sticky bottom SliverAppBar
                    pinned: true,
                    forceElevated: innerBoxIsScrolled,
                    expandedHeight: 120,
                    // SliverAppBar buttom must be PreferredSizeWidget
                    bottom: PreferredSize(
                      preferredSize:
                          const Size(double.infinity, kToolbarHeight),
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                          vertical: kDefaultPaddin / 2,
                          horizontal: kDefaultPaddin,
                        ),
                        height: 36,
                        // Building ListView with horizontal scroll direction
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            buildOutlineButtonItem(Icons.videocam, 'IGTV'),
                            buildOutlineButtonItem(Icons.shopping_bag, 'SHOP'),
                            buildOutlineButtonItem(Icons.gamepad, 'GAME'),
                            buildOutlineButtonItem(Icons.place, 'TRAVEL'),
                            buildOutlineButtonItem(Icons.no_food, 'FOOD'),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ];
            },
            body: Builder(builder: (BuildContext context) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: kDefaultPaddin / 2,
                  horizontal: kDefaultPaddin,
                ),
                child: CustomScrollView(
                  // The "controller" and "primary" members should be left
                  // unset, so that the NestedScrollView can control this
                  // inner scroll view.
                  // If the "controller" property is set, then this scroll
                  // view will not be associated with the NestedScrollView.
                  slivers: <Widget>[
                    SliverOverlapInjector(
                      handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                          context),
                    ),
                    SliverFixedExtentList(
                      itemExtent: (screenSize.width - 40) * 0.66,
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                          // Show 6 images with normal size
                          if (normalCount == 1) {
                            // Check what to show next
                            if (rightCount == 1) {
                              // Show left big image next
                              leftCount = 1;
                              normalCount = 0;
                              rightCount = 0;
                            } else if (leftCount == 1) {
                              // Show right big image next
                              leftCount = 0;
                              normalCount = 0;
                              rightCount = 1;
                            }

                            return NormalImage(
                              screenSize: screenSize,
                              imageList: [
                                imageList[_random.nextInt(imageList.length)],
                                imageList[_random.nextInt(imageList.length)],
                                imageList[_random.nextInt(imageList.length)],
                                imageList[_random.nextInt(imageList.length)],
                                imageList[_random.nextInt(imageList.length)],
                                imageList[_random.nextInt(imageList.length)],
                              ],
                            );
                          }

                          // Show 3 images with big size on left
                          if (leftCount == 1) {
                            // leftCount = 0;
                            normalCount = 1;
                            rightCount = 0;
                            return BigImageLeft(
                              index: index,
                              screenSize: screenSize,
                              imageList: [
                                imageList[_random.nextInt(imageList.length)],
                                imageList[_random.nextInt(imageList.length)],
                                imageList[_random.nextInt(imageList.length)],
                              ],
                            );
                          }

                          // Show 3 images with big size on right
                          if (rightCount == 1) {
                            leftCount = 0;
                            // rightCount = 0;
                            normalCount = 1;
                            return BigImageRight(
                              screenSize: screenSize,
                              imageList: [
                                imageList[_random.nextInt(imageList.length)],
                                imageList[_random.nextInt(imageList.length)],
                                imageList[_random.nextInt(imageList.length)],
                              ],
                            );
                          }

                          // Default Return
                          return const SizedBox(height: kDefaultPaddin);
                        },
                        childCount: 10,
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
          // Bottom Navigation Bar
          BottomNavBar(pages: [false, true, false, false, false]),
        ],
      ),
    );
  }

  Padding buildOutlineButtonItem(IconData icon, String label) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: OutlineButton.icon(
        padding: EdgeInsets.zero,
        onPressed: () => {},
        icon: Icon(icon),
        label: Text(label),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kDefaultSize / 2),
        ),
      ),
    );
  }
}
