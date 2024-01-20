import 'package:flutter/material.dart';
import 'package:greenit_version1/components/posts/section_header.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/size_config.dart';

Future mapDisplayModalBottomSheet(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    builder: (context) => SafeArea(
      child: Container(
        height: getProportionateScreenHeight(250),
        width: SizeConfig.screenWidth,
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionHeader(
              title: 'Choose Map',
              subtitle: 'Personalize your map visuals',
            ),
            const VerticalSpacing(of: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: getProportionateScreenWidth(170),
                  height: getProportionateScreenHeight(140),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        width: 1,
                        color: kPrimaryBorderColor,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Stack(
                    clipBehavior: Clip.antiAlias,
                    children: [
                      Container(color: Colors.green),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ),
  );
}
