import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:greenit_app/components/buttons/view_post_button.dart';
import 'package:greenit_app/components/forms/header_description.dart';
import 'package:greenit_app/components/posts/post_card/post_card.dart';
import 'package:greenit_app/components/posts/section_header.dart';
import 'package:greenit_app/constants.dart';
import 'package:greenit_app/dummy_data/post_data.dart';
import 'package:greenit_app/models/post.dart';
import 'package:greenit_app/screens/home/components/map_display_button.dart';
import 'package:greenit_app/screens/home/components/user_location_focus_button.dart';
import 'package:greenit_app/size_config.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(9.901566, 123.586010);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  bool isLoaded = true; // Debug Only: set to true
  String? output;

  @override
  void initState() {
    super.initState();
  }

  List<Post> demoLatestNowPost = DemoPostData.demoLatestNowPostData;
  List<Post> demoNearMePost = DemoPostData.demoNearMeListData;
  List<Post> demoBrowsePost = DemoPostData.demoPostListData;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: isLoaded
          // ? Text(
          //     output as String,
          //     textAlign: TextAlign.center,
          //   )
          ? xxbuild(context)
          : const CircularProgressIndicator(),
    );
  }

  Widget xxbuild(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        // =============== PLACE GOOGLE MAP INTERFACE HERE===============
        // Placeholder(
        //   color: Colors.black,
        //   child: Container(
        //     color: Colors.green.shade200,
        //     // color: Colors.white,
        //   ),
        // ),
        GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 14.0,
          ),
        ),
        // ==============================================================
        buildMapOptionsButtons(),
        Align(
          alignment: Alignment.bottomCenter,
          child: DraggableScrollableSheet(
            initialChildSize: 0.13,
            minChildSize: 0.13,
            maxChildSize: 1,
            snap: true,
            expand: false,
            snapSizes: const [0.6, 1],
            snapAnimationDuration: kDefaultDuration,
            builder: (context, scrollController) => ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x21000000),
                      blurRadius: 6,
                      offset: Offset(0, 0),
                      spreadRadius: 0,
                    )
                  ],
                ),
                width: SizeConfig.screenWidth,
                child: ListView(
                  padding: EdgeInsets.zero,
                  controller: scrollController,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: IgnorePointer(
                        child: Container(
                          margin: EdgeInsets.only(
                            top: getProportionateScreenHeight(10),
                            bottom: getProportionateScreenHeight(10),
                          ),
                          height: getProportionateScreenHeight(5),
                          width: getProportionateScreenWidth(50),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: kPrimaryBorderColor,
                          ),
                        ),
                      ),
                    ),
                    const VerticalSpacing(of: 10),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: kDefaultHorizontalPadding,
                      ),
                      child: const SectionHeader(
                        title: 'Latest Now',
                        subtitle: 'Checkout recent happenings worldwide!',
                      ),
                    ),
                    Column(
                      children: [
                        ...List.generate(
                          demoLatestNowPost.length,
                          (index) => PostCard(post: demoLatestNowPost[index]),
                        )
                      ],
                    ),
                    const VerticalSpacing(of: 20),
                    PrimaryTextButton(
                      press: () {},
                      text: 'View more latest',
                    ),
                    const VerticalSpacing(of: 20),
                    const Divider(),
                    const VerticalSpacing(of: 20),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: kDefaultHorizontalPadding,
                      ),
                      child: const SectionHeader(
                        title: 'Near Me',
                        subtitle: "Explore what's close!",
                      ),
                    ),
                    Column(
                      children: [
                        ...List.generate(
                          demoNearMePost.length,
                          (index) => PostCard(post: demoNearMePost[index]),
                        )
                      ],
                    ),
                    const VerticalSpacing(of: 20),
                    PrimaryTextButton(
                      press: () {},
                      text: 'View more near me',
                    ),
                    const VerticalSpacing(of: 20),
                    const Divider(),
                    const VerticalSpacing(of: 20),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: kDefaultHorizontalPadding,
                      ),
                      child: const SectionHeader(
                        title: 'Browse',
                        subtitle: "Discover diverse events!",
                      ),
                    ),
                    Column(
                      children: [
                        ...List.generate(
                          demoBrowsePost.length,
                          (index) => PostCard(post: demoBrowsePost[index]),
                        )
                      ],
                    ),
                    const VerticalSpacing(of: 20),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Align buildMapOptionsButtons() {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: EdgeInsets.only(
          right: kDefaultHorizontalPadding / 1.3,
          top: getProportionateScreenHeight(80),
        ),
        child: const SizedBox(
          height: 110,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MapDisplayButton(),
              UserLocationFocusButton(),
            ],
          ),
        ),
      ),
    );
  }
}
