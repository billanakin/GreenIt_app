import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:greenit_app/size_config.dart';

// =============== FONTS ================
const kPrimaryFontFamily = 'Helvetica Neue'; // DEFAULT
const kSecondaryFontFamily = 'SF Pro Text';

// =============== COLORS ===============
const kPrimaryActiveColor = Color(0xFF22A45D);
const kPrimaryBorderColor = Color(0x66868686);

const kPrimaryBodyTextColor = Colors.black;
const kSecondaryBodyTextColor = Color(0xFF6C6C6C);

const kPrimaryIconColor = Color(0xFF6C6C6C);

const kTextFieldInputColor = Color(0xFFF6F8F6);
const kBackgroundColor = Colors.white;

// =============== TEXT STYLES ===============
final TextStyle kH1TextStyle = TextStyle(
  fontSize: getProportionateScreenHeight(34),
  fontWeight: FontWeight.w500,
  fontFamily: kSecondaryFontFamily,
  letterSpacing: 0.22,
);

final TextStyle kH2TextStyle = TextStyle(
  fontSize: getProportionateScreenHeight(28),
  fontWeight: FontWeight.w600,
  fontFamily: kSecondaryFontFamily,
  letterSpacing: 0.18,
);

final TextStyle kH3TextStyle = kH2TextStyle.copyWith(
  fontSize: getProportionateScreenHeight(20),
  fontFamily: kSecondaryFontFamily,
  letterSpacing: 0.14,
);

final TextStyle kHeadlineTextStyle = TextStyle(
  fontSize: getProportionateScreenHeight(25),
  fontFamily: kSecondaryFontFamily,
  fontWeight: FontWeight.bold,
);

final TextStyle kSubHeadTextStyle = TextStyle(
  fontSize: getProportionateScreenWidth(20),
  fontWeight: FontWeight.w500,
  fontFamily: kSecondaryFontFamily,
  color: kPrimaryBodyTextColor,
  letterSpacing: 0.44,
);

final TextStyle kPrimaryHeaderTextStyle = TextStyle(
  color: kPrimaryBodyTextColor,
  fontSize: getProportionateScreenHeight(18),
  fontFamily: 'Helvetica',
  fontWeight: FontWeight.w600,
  height: 1.5,
);

final TextStyle kPrimaryBodyTextStyle = TextStyle(
  color: kPrimaryBodyTextColor,
  fontSize: getProportionateScreenHeight(14),
  fontWeight: FontWeight.w400,
  height: 1.5,
);

final TextStyle kSecondaryBodyTextStyle = TextStyle(
  color: kSecondaryBodyTextColor,
  fontSize: getProportionateScreenHeight(12),
  fontWeight: FontWeight.w400,
  height: 1.5,
);

final TextStyle kPrimaryButtonTextStyle = TextStyle(
  color: Colors.white,
  fontFamily: kSecondaryFontFamily,
  fontWeight: FontWeight.bold,
  fontSize: getProportionateScreenHeight(14),
);

final TextStyle kTextButtonTextStyle = kSecondaryBodyTextStyle.copyWith(
  fontFamily: 'Helvetica',
  fontWeight: FontWeight.w500,
  letterSpacing: 0.24,
  color: kPrimaryActiveColor,
);

final TextStyle kAppBarTitleTextStyle = TextStyle(
  color: kPrimaryBodyTextColor,
  fontSize: getProportionateScreenHeight(14),
  fontWeight: FontWeight.w700,
);

// =============== HEIGHT =================
final kAppBarHeight = getProportionateScreenHeight(70);

// =============== PADDINGS ===============
final double kDefaultHorizontalPadding = getProportionateScreenWidth(20);
final double kDefaultVerticalPadding = getProportionateScreenHeight(10);
final double kSecondaryVerticalPadding = getProportionateScreenHeight(20);

final EdgeInsets kTextFieldPadding = EdgeInsets.symmetric(
  horizontal: getProportionateScreenWidth(20),
  vertical: getProportionateScreenHeight(20),
);

// =============== DURATION ===============
const Duration kDefaultDuration = Duration(milliseconds: 250);

// =============== TEXT FIELD DECORATION ===============
const kErrorBorderSide = BorderSide(color: Colors.red, width: 1);
const kErrorLabelText = TextStyle(color: Colors.red);

const OutlineInputBorder kDefaultOutlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(10)),
  borderSide: BorderSide(color: kPrimaryBorderColor),
  gapPadding: 10,
);

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
  counterText: '',
);

final kSearchBarBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(10),
  borderSide: BorderSide.none,
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(10)),
    borderSide: const BorderSide(color: kPrimaryBorderColor),
  );
}

// =============== FORM VALIDATOR ===============
final passwordValidator = MultiValidator([
  RequiredValidator(errorText: 'Password is required'),
  MinLengthValidator(8, errorText: 'Password must be at least 8 digits long'),
  PatternValidator(r'(?=.*?[#?!@$%^&*-/])',
      errorText: 'Passwords must have at least one special character'),
]);

final emailValidator = MultiValidator([
  RequiredValidator(errorText: 'Email is required'),
  EmailValidator(errorText: 'Enter a valid email address'),
]);

final requiredValidator =
    RequiredValidator(errorText: 'This field is required');

final matchValidator = MatchValidator(errorText: 'Passwords do not match');

final phoneNumberValidator = MultiValidator([
  MinLengthValidator(10,
      errorText: 'Phone Number must be at least 10 digits long'),
  RequiredValidator(errorText: 'This field is required'),
]);
