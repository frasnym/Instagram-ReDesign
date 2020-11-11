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
              icon: Icon(
                Icons.home,
                color: kWhiteColor,
              ),
              label: 'Home',
              padding: kDefaultPaddin / 4,
              isSelected: true,
            ),
            buildBottomNavigationBarItem(
              icon: Icon(
                Icons.search_outlined,
                color: kWhiteColor,
              ),
              label: 'Explore',
              padding: kDefaultPaddin / 4,
            ),
            buildBottomNavigationBarItem(
              icon: Icon(
                Icons.add,
                color: kWhiteColor,
              ),
              label: 'Add',
              padding: kDefaultPaddin / 2.5,
            ),
            buildBottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border,
                color: kWhiteColor,
              ),
              label: 'Activity',
              padding: kDefaultPaddin / 4,
              activity: 5,
            ),
            buildBottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
                color: kWhiteColor,
              ),
              label: 'User',
              padding: kDefaultPaddin / 4,
            )
          ],
        ),
      ),
    );
  }

  BottomNavigationBarItem buildBottomNavigationBarItem({
    Widget icon,
    String label,
    double padding,
    int activity = 0,
    bool isSelected = false,
  }) {
    return BottomNavigationBarItem(
      icon: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(padding),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isSelected
                  ? Colors.grey.withOpacity(0.1)
                  : Colors.transparent,
              border: label == 'Add'
                  ? Border.all(width: 1, color: kWhiteColor)
                  : Border.all(width: 0, color: Colors.transparent),
            ),
            child: icon,
          ),
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
      label: label,
    );
  }
}
