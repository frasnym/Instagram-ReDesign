import 'package:flutter/material.dart';
import 'package:instagram_redesign/constants.dart';
import 'package:instagram_redesign/screens/activity/activity_screen.dart';
import 'package:instagram_redesign/screens/explore/explore_screen.dart';
import 'package:instagram_redesign/screens/home/home_screen.dart';
import 'package:instagram_redesign/screens/profile/profile_screen.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
    this.pages,
  }) : super(key: key);

  final List<bool> pages;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        // Border Radius on TopLeft & TopRight
        topRight: Radius.circular(kDefaultSize),
        topLeft: Radius.circular(kDefaultSize),
      ),
      child: BottomNavigationBar(
        type: BottomNavigationBarType
            .fixed, // To use BottomNavigationBar with more than 3 items
        backgroundColor: kWhiteColor,
        showSelectedLabels: false, // To use BottomNavigationBar without label
        showUnselectedLabels: false, // To use BottomNavigationBar without label
        items: [
          buildBottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: kBlackColor,
            ),
            label: 'Home',
            padding: kDefaultPaddin / 4,
            isSelected: pages[0],
            press: () => Navigator.of(context).pushReplacementNamed(
              HomeScreen.routeName,
            ),
          ),
          buildBottomNavigationBarItem(
            icon: Icon(
              Icons.search_outlined,
              color: kBlackColor,
            ),
            label: 'Explore',
            padding: kDefaultPaddin / 4,
            isSelected: pages[1],
            press: () => Navigator.of(context).pushReplacementNamed(
              ExploreScreen.routeName,
            ),
          ),
          buildBottomNavigationBarItem(
            icon: Icon(
              Icons.add,
              color: kBlackColor,
            ),
            label: 'Add',
            padding: kDefaultPaddin / 2.5,
            isSelected: pages[2],
            press: () => {},
          ),
          buildBottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border,
              color: kBlackColor,
            ),
            label: 'Activity',
            padding: kDefaultPaddin / 4,
            activity: 5,
            isSelected: pages[3],
            press: () => Navigator.of(context).pushReplacementNamed(
              ActivityScreen.routeName,
            ),
          ),
          buildBottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              color: kBlackColor,
            ),
            label: 'User',
            padding: kDefaultPaddin / 4,
            isSelected: pages[4],
            press: () => Navigator.of(context).pushReplacementNamed(
              ProfileScreen.routeName,
            ),
          ),
        ],
      ),
    );
  }

  BottomNavigationBarItem buildBottomNavigationBarItem({
    Widget icon,
    String label,
    double padding,
    int activity = 0,
    bool isSelected = false,
    Function press,
  }) {
    return BottomNavigationBarItem(
      icon: GestureDetector(
        onTap: press,
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.all(padding),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                // To add background color on icon selected
                color: isSelected
                    ? Colors.grey.withOpacity(0.1)
                    : Colors.transparent,
                // To add border color on add icon
                border: label == 'Add'
                    ? Border.all(width: 1, color: kBlackColor)
                    : Border.all(width: 0, color: Colors.transparent),
              ),
              child: icon,
            ),
            // To add badge on BottomRight, especially used for activity icon
            activity > 0
                ? Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      padding: const EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        color: Colors.red.withOpacity(0.2),
                        shape: BoxShape.circle,
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(2.5),
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  )
                : SizedBox(width: 0),
          ],
        ),
      ),
      label: label,
    );
  }
}
