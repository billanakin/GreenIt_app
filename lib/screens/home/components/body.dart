import 'package:flutter/material.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/data/profile_data.dart';
import 'package:greenit_version1/models/profile.dart';

import '../../../components/sheets/map_display_modal_bottom_sheet.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Stack(
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
        Positioned(
          top: 80,
          child: Padding(
            padding: EdgeInsets.only(right: kDefaultHorizontalPadding / 1.3),
            child: SizedBox(
              height: 110,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // TODO: ADD INK WELL
                  InkWell(
                    onTap: () {
                      mapDisplayModalBottomSheet(context);
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(
                        Icons.map_outlined,
                        color: kPrimaryIconColor,
                      ),
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
                      color: kPrimaryIconColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
