import 'package:flutter/material.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/size_config.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          // =============== PLACE GOOGLE MAP INTERFACE HERE===============
          Placeholder(
            color: Colors.black,
            child: Container(
              color: Colors.green.shade200,
              // color: Colors.white,
            ),
          ),
          // ==============================================================
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding / 2,
              vertical: kDefaultPadding / 4,
            ),
            height: getProportionateScreenHeight(60),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              // color: Colors.green,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 50,
                  child: AspectRatio(
                    aspectRatio: 1 / 2,
                    child: Image.asset('assets/images/Greenit_logo_inline.png'),
                  ),
                ),
                const HorizontalSpacing(of: 15),
                Expanded(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                    child: Container(
                      height: getProportionateScreenHeight(45),
                      decoration: BoxDecoration(
                        color: kInputColor.withOpacity(0.1),
                      ),
                      child: TextField(
                        onChanged: (value) => print(value),
                        style: kSecondaryBodyTextStyle.copyWith(
                          color: Colors.black.withOpacity(0.8),
                        ),
                        cursorColor: kPrimaryActiveColor,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: getProportionateScreenWidth(20),
                              vertical: getProportionateScreenWidth(11)),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          hintText: "Search Maps",
                          prefixIcon: const Icon(Icons.search, size: 20),
                        ),
                      ),
                    ),
                  ),
                ),
                const HorizontalSpacing(of: 15),
                const CircleAvatar(
                  radius: 25,
                  backgroundImage:
                      AssetImage('assets/images/user_profile.jpeg'),
                ),
              ],
            ),
          ),
          Positioned(
            top: 70,
            child: Padding(
              padding: const EdgeInsets.only(right: kDefaultPadding / 2),
              child: SizedBox(
                height: 110,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // TODO: ADD INK WELL
                    Container(
                      height: 50,
                      width: 50,
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: const Icon(
                        Icons.map_outlined,
                        color: kBodyTextColor,
                      ),
                    ),
                    // TODO: ADD INK WELL
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: const Icon(
                        Icons.near_me_outlined,
                        color: kBodyTextColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
