import 'package:flutter/material.dart';
import 'package:instagram_redesign/constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(kDefaultSize),
          topLeft: Radius.circular(kDefaultSize),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: kBlackColor,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            buildBottomNavigationBarItem(
              Icon(
                Icons.home,
                color: kWhiteColor,
              ),
              'Home',
              true,
              kDefaultPaddin / 4,
            ),
            buildBottomNavigationBarItem(
              Icon(
                Icons.search_outlined,
                color: kWhiteColor,
              ),
              'Explore',
              false,
              kDefaultPaddin / 4,
            ),
            buildBottomNavigationBarItem(
              Icon(
                Icons.add,
                color: kWhiteColor,
              ),
              'Add',
              false,
              kDefaultPaddin / 2.5,
            ),
            buildBottomNavigationBarItem(
              Icon(
                Icons.favorite_border,
                color: kWhiteColor,
              ),
              'Activity',
              false,
              kDefaultPaddin / 4,
            ),
            buildBottomNavigationBarItem(
              Icon(
                Icons.person_outline,
                color: kWhiteColor,
              ),
              'User',
              false,
              kDefaultPaddin / 4,
            )
          ],
        ),
      ),
    );
  }

  BottomNavigationBarItem buildBottomNavigationBarItem(
    Widget icon,
    String label,
    bool isSelected,
    double padding,
  ) {
    return BottomNavigationBarItem(
      icon: Container(
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? Colors.grey.withOpacity(0.1) : Colors.transparent,
          border: label == 'Add'
              ? Border.all(width: 1, color: kWhiteColor)
              : Border.all(width: 0, color: Colors.transparent),
        ),
        child: icon,
      ),
      label: label,
    );
  }
}
