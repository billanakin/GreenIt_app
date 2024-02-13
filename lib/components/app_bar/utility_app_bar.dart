import 'package:flutter/material.dart';
import 'package:greenit_app/components/buttons/primary_button.dart';
import 'package:greenit_app/constants.dart';
import 'package:greenit_app/size_config.dart';

class UtilityAppBar extends StatelessWidget implements PreferredSizeWidget {
  const UtilityAppBar({
    super.key,
    this.height = 70.0001,
    this.discardValidate = false,
    required this.leadingText,
    required this.title,
    required this.actionButtonText,
    required this.actionButtonPress,
  });

  final double height;

  final bool discardValidate;

  final String leadingText;
  final String title;
  final String actionButtonText;
  final void Function() actionButtonPress;

  @override
  Size get preferredSize =>
      Size(double.maxFinite, getProportionateScreenHeight(height));

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: SafeArea(
        child: Container(
          height: getProportionateScreenHeight(70),
          padding: EdgeInsets.symmetric(
            horizontal: kDefaultHorizontalPadding,
            vertical: kDefaultVerticalPadding,
          ),
          decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(
              bottom: BorderSide(
                width: 1,
                color: kPrimaryBorderColor,
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  if (discardValidate) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      // For Debug Purposes only
                      const SnackBar(
                        content: Text('DISCARD VALIDATE: TRUE'),
                      ),
                    );
                    Navigator.pop(context);
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      // For Debug Purposes only
                      const SnackBar(
                        content: Text('DISCARD VALIDATE: FALSE'),
                      ),
                    );
                  }
                },
                child: Text(
                  leadingText,
                  style: kPrimaryBodyTextStyle,
                ),
              ),
              const HorizontalSpacing(of: 30),
              Expanded(
                child: Center(
                  child: Text(
                    title,
                    style: kPrimaryBodyTextStyle.copyWith(
                      fontFamily: 'Helvetica',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              PrimaryButton(
                text: actionButtonText,
                width: getProportionateScreenWidth(85),
                height: 40,
                press: actionButtonPress,
              )
            ],
          ),
        ),
      ),
    );
  }
}
