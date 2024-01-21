import 'package:flutter/material.dart';
import 'package:greenit_version1/components/cards/warning_info_card.dart';
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
    return Expanded(
      child: Stack(
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
          buildInterfaceInfoCard(),
        ],
      ),
    );
  }

  Align buildInterfaceInfoCard() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: getProportionateScreenHeight(100),
        padding: EdgeInsets.symmetric(
          horizontal: kDefaultHorizontalPadding,
          vertical: kSecondaryVerticalPadding,
        ),
        decoration: const ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          shadows: [
            BoxShadow(
              color: Color(0x21000000),
              blurRadius: 6,
              offset: Offset(0, 0),
              spreadRadius: 0,
            )
          ],
        ),
        child: const Center(
          child: WarningInfoCard(
            info:
                "Move the marker on the map to the location where your event took place.",
          ),
        ),
      ),
    );
  }
}
