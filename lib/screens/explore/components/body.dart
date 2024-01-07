import 'package:flutter/material.dart';
import 'package:greenit_version1/components/appBar/explore_page_app_bar.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/data/post_data.dart';
import 'package:greenit_version1/models/profile.dart';
import 'package:greenit_version1/size_config.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Map<String, dynamic>> tabPage = [
    {
      'title': 'Trending',
      'subtitle': "Explore what's hot and popular!",
      'data': DemoPostData.demoTrendingPostListData.toList(),
    },
    {
      'title': 'Near Me',
      'subtitle': "Explore local events just steps away!",
      'data': DemoPostData.demoNearMeListData.toList(),
    },
    {
      'title': 'Latest Now',
      'subtitle': "Explore ahead with the freshest events!",
      'data': DemoPostData.demoLatestNowPostData.toList(),
    },
    {
      'title': 'Recommended',
      'subtitle': "Explore our highly recommended events!",
      'data': DemoPostData.demoRecommendedPostListData.toList(),
    },
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: const SizedBox.shrink(),
            floating: true,
            expandedHeight: 70.0,
            flexibleSpace: ExplorePageAppBar(
              userProfile: Profile(
                id: 3,
                name: 'Lionel Messi',
                profileAvatar: 'assets/images/profile/user_profile.jpeg',
              ),
            ),
          ),
          SliverAppBar(
            primary: false,
            pinned: true,
            scrolledUnderElevation: 0,
            backgroundColor: Colors.transparent,
            expandedHeight: 70.0,
            collapsedHeight: 70.0,
            flexibleSpace: Container(
              height: 70,
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Container(
                    margin: (index == 0 || index == 4)
                        ? const EdgeInsets.only(left: kDefaultPadding)
                        : EdgeInsets.zero,
                    width: 150,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.white,
                        primary: kPrimaryBorderColor,
                        side: BorderSide(
                          width: 1,
                          color: (currentIndex == index)
                              ? kPrimaryActiveColor
                              : const Color(0xFF868686),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      child: Text(
                        tabPage[index]['title'].toString(),
                        style: kPrimaryBodyTextStyle.copyWith(
                          color: (currentIndex == index)
                              ? kPrimaryActiveColor
                              : Colors.black,
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) =>
                    const HorizontalSpacing(of: 5),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding,
              vertical: kDefaultPadding,
            ),
            sliver: SliverToBoxAdapter(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tabPage[currentIndex]['title'].toString(),
                    style: kPrimaryHeaderTextStyle,
                  ),
                  Text(
                    tabPage[currentIndex]['subtitle'].toString(),
                    style: kPrimaryBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: index % 2 == 0 ? Colors.green : Colors.greenAccent,
                    height: 80,
                    alignment: Alignment.center,
                    child: Text(
                      "Item $index",
                      style: const TextStyle(fontSize: 30),
                    ),
                  ),
                );
              },
              // 40 list items
              childCount: 40,
            ),
          ),
        ],
      ),
    );
  }
}
