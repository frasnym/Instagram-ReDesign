import 'package:flutter/material.dart';
import 'package:instagram_redesign/constants.dart';
import 'package:instagram_redesign/widgets/bottom_nav_bar.dart';

class ExploreScreen extends StatelessWidget {
  static const routeName = '/explore';

  @override
  Widget build(BuildContext context) {
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
                    title: buildSizedBoxSearch(),
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
              return CustomScrollView(
                // The "controller" and "primary" members should be left
                // unset, so that the NestedScrollView can control this
                // inner scroll view.
                // If the "controller" property is set, then this scroll
                // view will not be associated with the NestedScrollView.
                slivers: <Widget>[
                  SliverOverlapInjector(
                      handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                          context)),
                  SliverFixedExtentList(
                    itemExtent: 48.0,
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) =>
                          ListTile(title: Text('Item $index')),
                      childCount: 30,
                    ),
                  ),
                ],
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

  SizedBox buildSizedBoxSearch() {
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
