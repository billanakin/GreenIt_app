import 'package:flutter/material.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/screens/explore/explore_screen.dart';
import 'package:greenit_version1/screens/home/home_screen.dart';
import 'package:greenit_version1/screens/notifications/notifications.dart';
import 'package:greenit_version1/screens/social/social_screen.dart';
import 'package:greenit_version1/size_config.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({
    super.key,
    this.overrideScreenIndex = 0,
  });

  final int overrideScreenIndex;

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation>
    with TickerProviderStateMixin {
  late int _currentIndex = widget.overrideScreenIndex;

  // // ignore: unused_field
  final List<Map<String, dynamic>> _navItems = [
    {
      'selected_icon':
          const Icon(Icons.place, size: 30, color: kPrimaryActiveColor),
      'unSelected_icon':
          const Icon(Icons.place_outlined, size: 30, color: kPrimaryIconColor),
      'label': 'Home'
    },
    {
      'selected_icon':
          const Icon(Icons.people, size: 30, color: kPrimaryActiveColor),
      'unSelected_icon':
          const Icon(Icons.people_outlined, size: 30, color: kPrimaryIconColor),
      'label': 'Social'
    },
    {
      'selected_icon':
          const Icon(Icons.explore, size: 30, color: kPrimaryActiveColor),
      'unSelected_icon': const Icon(Icons.explore_outlined,
          size: 30, color: kPrimaryIconColor),
      'label': 'Explore'
    },
    {
      'selected_icon':
          const Icon(Icons.notifications, size: 30, color: kPrimaryActiveColor),
      'unSelected_icon': const Icon(Icons.notifications_outlined,
          size: 30, color: kPrimaryIconColor),
      'label': 'Notifications'
    },
  ];

  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _navItems.length, vsync: this)
      ..animation?.addListener(() {
        int indexChange = _tabController.offset.round();
        int index = _tabController.index + indexChange;

        if (index != _currentIndex) {
          setState(() => _currentIndex = index);
        }
      });
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return PopScope(
      onPopInvoked: (bool popped) async => false,
      child: Scaffold(
        body: TabBarView(
          controller: _tabController,
          children: const <Widget>[
            HomeScreen(),
            SocialScreen(),
            ExploreScreen(),
            NotificationsScreen(),
          ],
        ),
        bottomNavigationBar: SafeArea(
          child: Container(
            padding: EdgeInsets.zero,
            height: getProportionateScreenHeight(55),
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(
                  color: kPrimaryBorderColor,
                  width: 1,
                ),
              ),
            ),
            child: TabBar(
              padding: EdgeInsets.zero,
              controller: _tabController,
              dividerColor: Colors.transparent,
              indicatorPadding: EdgeInsets.zero,
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: UnderlineTabIndicator(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                borderSide:
                    const BorderSide(width: 1.5, color: kPrimaryActiveColor),
                insets:
                    EdgeInsets.only(bottom: getProportionateScreenHeight(53)),
              ),
              labelStyle: kSecondaryBodyTextStyle.copyWith(
                fontSize: getProportionateScreenHeight(10),
              ),
              labelPadding: EdgeInsets.zero,
              labelColor: kPrimaryActiveColor,
              unselectedLabelStyle: kSecondaryBodyTextStyle.copyWith(
                fontSize: getProportionateScreenHeight(10),
              ),
              onTap: (value) {
                setState(() {
                  _currentIndex = value;
                });
              },
              tabs: [
                Tab(
                  icon: _currentIndex == 0
                      ? _navItems[0]['selected_icon']
                      : _navItems[0]['unSelected_icon'],
                  text: _navItems[0]['label'],
                  iconMargin: const EdgeInsets.only(bottom: 2),
                ),
                Tab(
                  icon: _currentIndex == 1
                      ? _navItems[1]['selected_icon']
                      : _navItems[1]['unSelected_icon'],
                  text: _navItems[1]['label'],
                  iconMargin: const EdgeInsets.only(bottom: 2),
                ),
                Tab(
                  icon: _currentIndex == 2
                      ? _navItems[2]['selected_icon']
                      : _navItems[2]['unSelected_icon'],
                  text: _navItems[2]['label'],
                  iconMargin: const EdgeInsets.only(bottom: 2),
                ),
                Tab(
                  icon: _currentIndex == 3
                      ? _navItems[3]['selected_icon']
                      : _navItems[3]['unSelected_icon'],
                  text: _navItems[3]['label'],
                  iconMargin: const EdgeInsets.only(bottom: 2),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
