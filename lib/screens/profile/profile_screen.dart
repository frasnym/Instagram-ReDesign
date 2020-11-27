import 'package:flutter/material.dart';
import 'package:instagram_redesign/constants.dart';
import 'package:instagram_redesign/screens/profile/components/colapsed_appbar.dart';
import 'package:instagram_redesign/widgets/bottom_nav_bar.dart';

class ProfileScreen extends StatefulWidget {
  static const routeName = '/profile';

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with SingleTickerProviderStateMixin {
  ScrollController _scrollViewController;
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _scrollViewController = new ScrollController();
    _tabController = new TabController(vsync: this, length: 5);
  }

  @override
  void dispose() {
    _scrollViewController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Stack(
        children: [
          NestedScrollView(
            controller: _scrollViewController,
            headerSliverBuilder: (
              BuildContext context,
              bool innerBoxIsScrolled,
            ) {
              return <Widget>[
                SliverAppBar(
                  toolbarHeight: 260,
                  backgroundColor: kWhiteColor,
                  title: ColapsedAppBar(),
                  pinned: true, //<-- pinned to true
                  floating: true, //<-- floating to true
                  forceElevated:
                      innerBoxIsScrolled, //<-- forceElevated to innerBoxIsScrolled
                  bottom: TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: const UnderlineTabIndicator(
                      borderSide: const BorderSide(
                        color: kBlackColor,
                        width: 5.0,
                      ),
                      insets: const EdgeInsets.fromLTRB(40.0, 0.0, 40.0, 40.0),
                    ),
                    tabs: <Tab>[
                      Tab(
                        icon: Icon(
                          Icons.pivot_table_chart,
                          color: kBlackColor,
                        ),
                      ),
                      Tab(
                        icon: Icon(
                          Icons.show_chart,
                          color: kBlackColor,
                        ),
                      ),
                      Tab(
                        icon: Icon(
                          Icons.play_circle_fill,
                          color: kBlackColor,
                        ),
                      ),
                      Tab(
                        icon: Icon(
                          Icons.group,
                          color: kBlackColor,
                        ),
                      ),
                      Tab(
                        icon: Icon(
                          Icons.archive,
                          color: kBlackColor,
                        ),
                      ),
                    ],
                    controller: _tabController,
                  ),
                ),
              ];
            },
            body: new TabBarView(
              children: <Widget>[
                Text('pivot_table_chart'),
                Text('show_chart'),
                Text('play_circle_fill'),
                Text('group'),
                Text('archive'),
              ],
              controller: _tabController,
            ),
          ), // Bottom Navigation Bar
          BottomNavBar(pages: [false, false, false, false, true]),
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kWhiteColor,
      elevation: 0,
      title: Row(
        children: [
          const Text(
            'Profile Full Name',
            style: const TextStyle(
              color: kBlackColor,
              fontSize: 15,
            ),
          ),
          IconButton(
            icon: const Icon(
              Icons.arrow_circle_down,
              color: kBlackColor,
              size: 20,
            ),
            onPressed: () {},
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.settings,
            color: kBlackColor,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
