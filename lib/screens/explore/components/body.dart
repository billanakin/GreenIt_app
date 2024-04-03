import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:greenit_app/apis/post_api.dart';
import 'package:greenit_app/components/app_bar/explore_page_app_bar.dart';
import 'package:greenit_app/components/empty_state/empty_state.dart';
import 'package:greenit_app/components/error_state/error_state.dart';
import 'package:greenit_app/components/posts/post_card/post_card.dart';
import 'package:greenit_app/components/posts/section_header.dart';
import 'package:greenit_app/constants.dart';
import 'package:greenit_app/models/current.dart';
import 'package:greenit_app/models/post.dart';
import 'package:greenit_app/models/profile.dart';
import 'package:greenit_app/screens/explore/loading/explore_screen_loading.dart';
import 'package:greenit_app/services/determine_position_service.dart';
import 'package:greenit_app/size_config.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> with TickerProviderStateMixin {
  List<Map<String, dynamic>> tabPageInfos = [
    {
      'title': 'Trending',
      'subtitle': "Explore what's hot and popular!",
      'loadDataFunc': _loadTrending,
    },
    {
      'title': 'Near Me',
      'subtitle': "Explore local events just steps away!",
      'loadDataFunc': _loadNearMe,
    },
    {
      'title': 'Latest Now',
      'subtitle': "Explore ahead with the freshest events!",
      'loadDataFunc': _loadLatest,
    },
    {
      'title': 'Recommended',
      'subtitle': "Explore our highly recommended events!",
      'loadDataFunc': _loadRecommended,
    },
  ];

  late ScrollController _scrollController;

  int currentIndex = 0;

  static Future<List<Post>> _loadTrending() async {
    var apiResponse = await PostApi().trending();
    if (apiResponse.success) {
      return apiResponse.data!.list;
    } else {
      return <Post>[];
    }
  }

  static Future<List<Post>> _loadNearMe() async {
    Position position = await getCurrentPositionService();
    var apiResponse =
        await PostApi().nearMe(position.latitude, position.longitude);
    if (apiResponse.success) {
      return apiResponse.data!.list;
    } else {
      return <Post>[];
    }
  }

  static Future<List<Post>> _loadLatest() async {
    var apiResponse = await PostApi().latest();
    if (apiResponse.success) {
      return apiResponse.data!.list;
    } else {
      return <Post>[];
    }
  }

  static Future<List<Post>> _loadRecommended() async {
    var apiResponse = await PostApi().recommended();
    if (apiResponse.success) {
      return apiResponse.data!.list;
    } else {
      return <Post>[];
    }
  }

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

  Future<List<Post>> _loadData() async {
    var loadDataFunc = tabPageInfos[currentIndex]['loadDataFunc'] as Function;
    var posts = await loadDataFunc();
    return posts;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: FutureBuilder<List<Post>>(
        future: _loadData(),
        builder: (BuildContext context, AsyncSnapshot<List<Post>> snapshot) {
          if (snapshot.hasData) {
            return buildWidgets(context, snapshot.data!);

            // This is for demo purposes only
            // return ErrorState(
            //   appBar: ExplorePageAppBar(
            //     userProfile: Profile.fromUser(Current.user!),
            //   ),
            // );
          } else {
            return const ExploreScreenLoading();
          }

          // Error Condition
          // return ErrorState(
          //   appBar: ExplorePageAppBar(
          //     userProfile: Profile.fromUser(Current.user!),
          //   ),
          // );
        },
      ),
    );
  }

  Widget buildWidgets(BuildContext context, List<Post> data) {
    return CustomScrollView(
      controller: _scrollController,
      slivers: <Widget>[
        SliverAppBar(
          leading: const SizedBox.shrink(),
          floating: true,
          expandedHeight: getProportionateScreenHeight(70),
          flexibleSpace: ExplorePageAppBar(
            userProfile: Profile.fromUser(Current.user!),
          ),
        ),
        SliverAppBar(
          primary: false,
          pinned: true,
          leading: const SizedBox.shrink(),
          scrolledUnderElevation: 0,
          backgroundColor: const Color(0x66868686).withOpacity(0.1),
          expandedHeight: getProportionateScreenHeight(70),
          collapsedHeight: getProportionateScreenHeight(70),
          flexibleSpace: Container(
            height: getProportionateScreenHeight(70),
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: tabPageInfos.length,
              itemBuilder: (context, index) {
                var tabPageInfo = tabPageInfos[index];

                return Container(
                  margin: (index == 0 || index == 4)
                      ? EdgeInsets.only(left: kDefaultHorizontalPadding)
                      : EdgeInsets.zero,
                  width: getProportionateScreenWidth(150),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      foregroundColor: kPrimaryBorderColor,
                      backgroundColor: Colors.white,
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
                      tabPageInfo['title'].toString(),
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
        if (data.isNotEmpty) ...[
          SliverPadding(
            padding: EdgeInsets.only(
              top: kDefaultHorizontalPadding,
              right: kSecondaryVerticalPadding,
              left: kSecondaryVerticalPadding,
            ),
            sliver: SliverToBoxAdapter(
              child: SectionHeader(
                currentIndex: currentIndex,
                title: tabPageInfos[currentIndex]['title'].toString(),
                subtitle: tabPageInfos[currentIndex]['subtitle'].toString(),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: data.length,
              (context, index) => PostCard(
                post: data[index],
              ),
            ),
          ),
        ],
        if (data.isEmpty) // Empty Condition
          const SliverToBoxAdapter(
            child: EmptyState(),
          ),
      ],
    );
  }
}
