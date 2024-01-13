import 'package:flutter/material.dart';
import 'package:greenit_version1/components/profile/profile_avatar.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/models/profile.dart';
import 'package:greenit_version1/size_config.dart';

class Body extends StatefulWidget {
  const Body({super.key, required this.profile});

  final Profile profile;

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: getProportionateScreenHeight(400),
            collapsedHeight: getProportionateScreenHeight(70),
            title: Text(widget.profile.name),
            leading: IconButton.filledTonal(
              style: IconButton.styleFrom(
                  backgroundColor: const Color(0x33868686)),
              color: Colors.white,
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back_rounded),
            ),
            flexibleSpace: Container(
              height: getProportionateScreenHeight(400),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.profile.profileAvatar),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  SingleChildScrollView(
                    child: Container(
                      width: double.infinity,
                      height: getProportionateScreenHeight(140),
                      padding: EdgeInsets.symmetric(
                        horizontal: kDefaultHorizontalPadding,
                        vertical: kSecondaryVerticalPadding,
                      ),
                      decoration: const BoxDecoration(
                        color: Color(0x33868686),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: "Hi! I'm\n",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: getProportionateScreenHeight(16),
                                fontWeight: FontWeight.w400,
                                height: 1.5,
                              ),
                              children: [
                                TextSpan(
                                  text: widget.profile.name,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: getProportionateScreenHeight(26),
                                    fontFamily: 'Helvetica',
                                    fontWeight: FontWeight.w700,
                                    height: 1.5,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const VerticalSpacing(of: 17),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Stack(
                                children: [
                                  ...List.generate(2, (index) => Placeholder())
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
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
// onTap: () => Navigator.pop(context),
//                 child: const Icon(Icons.arrow_back_rounded),
