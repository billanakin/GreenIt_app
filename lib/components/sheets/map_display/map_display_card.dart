import 'package:flutter/material.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/size_config.dart';

class MapDisplayCard extends StatelessWidget {
  const MapDisplayCard({
    super.key,
    required this.image,
    required this.text,
    required this.press,
  });

  final String image;
  final String text;
  final void Function() press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        width: getProportionateScreenWidth(180),
        height: getProportionateScreenHeight(145),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              width: 1,
              color: kPrimaryBorderColor,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: getProportionateScreenHeight(100),
                width: double.maxFinite,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(image),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: getProportionateScreenHeight(10),
                  left: getProportionateScreenWidth(15),
                  right: getProportionateScreenWidth(10),
                  bottom: getProportionateScreenHeight(10),
                ),
                child: Text(
                  text,
                  style: kPrimaryBodyTextStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
