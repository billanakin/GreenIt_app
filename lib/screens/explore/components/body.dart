import 'package:flutter/material.dart';
import 'package:greenit_version1/components/appBar/explore_page_app_bar.dart';
import 'package:greenit_version1/components/posts/post_card/post_card.dart';
import 'package:greenit_version1/components/posts/section_header.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/data/post_data.dart';
import 'package:greenit_version1/data/profile_data.dart';
import 'package:greenit_version1/models/post.dart';
import 'package:greenit_version1/models/profile.dart';
import 'package:greenit_version1/size_config.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> with TickerProviderStateMixin {
  List<Map<String, dynamic>> tabPage = [
    {
      'title': 'Trending',
      'subtitle': "Explore what's hot and popular!",
      'data': DemoPostData.demoTrendingPostListData,
    },
    {
      'title': 'Near Me',
      'subtitle': "Explore local events just steps away!",
      'data': DemoPostData.demoNearMeListData,
    },
    {
      'title': 'Latest Now',
      'subtitle': "Explore ahead with the freshest events!",
      'data': DemoPostData.demoLatestNowPostData,
    },
    {
      'title': 'Recommended',
      'subtitle': "Explore our highly recommended events!",
      'data': DemoPostData.demoRecommendedPostListData,
    },
  ];

  late ScrollController _scrollController;

  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  void _autoScrollToTop() {
    _scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 250),
      curve: Curves.linear,
    );
  }

  Profile userProfile = DemoProfilesData.userProfile;

  @override
  Widget build(BuildContext context) {
    List<Post> currentPostData = tabPage[currentIndex]['data'];

    return SafeArea(
      child: CustomScrollView(
        controller: _scrollController,
        slivers: <Widget>[
          SliverAppBar(
            leading: const SizedBox.shrink(),
            floating: true,
            expandedHeight: 70.0,
            flexibleSpace: ExplorePageAppBar(
              userProfile: userProfile,
            ),
          ),
          SliverAppBar(
            primary: false,
            pinned: true,
            leading: const SizedBox.shrink(),
            scrolledUnderElevation: 0,
            backgroundColor: const Color(0x66868686).withOpacity(0.1),
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
                        ? EdgeInsets.only(left: kDefaultHorizontalPadding)
                        : EdgeInsets.zero,
                    width: getProportionateScreenWidth(150),
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
                          _autoScrollToTop();
                        });
                      },
                      child: Text(
                        tabPage[index]['title'].toString(),
                        style: kPrimaryBodyTextStyle.copyWith(
                          fontFamily: (currentIndex == index)
                              ? 'Helvetica'
                              : 'Helvetica Neue',
                          fontWeight: (currentIndex == index)
                              ? FontWeight.w700
                              : FontWeight.w300,
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
            padding: EdgeInsets.only(
              top: kDefaultHorizontalPadding,
              right: kSecondaryVerticalPadding,
              left: kSecondaryVerticalPadding,
            ),
            sliver: SliverToBoxAdapter(
              child: SectionHeader(
                currentIndex: currentIndex,
                title: tabPage[currentIndex]['title'].toString(),
                subtitle: tabPage[currentIndex]['subtitle'].toString(),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: currentPostData.length,
              (context, index) => PostCard(
                post: currentPostData[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
