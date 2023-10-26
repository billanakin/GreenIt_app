import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:greenit_version1/size_config.dart';

// =============== COLORS ===============
const kPrimaryActiveColor = Color(0xFF22A45D);
const kPrimaryDarkColor = Color(0xFF010F07);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryAccentColor = Color(0xFFEF9920);

const kBodyTextColor = Color(0xFF868686);
const kInputColor = Color(0xFFFBFBFB);
const kBackgroundColor = Colors.white;

// =============== TEXT STYLES ===============
final TextStyle kH1TextStyle = TextStyle(
  fontSize: getProportionateScreenWidth(34),
  fontWeight: FontWeight.w500,
  letterSpacing: 0.22,
);

final TextStyle kH2TextStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.w600,
  letterSpacing: 0.18,
);

final TextStyle kH3TextStyle = kH2TextStyle.copyWith(
  fontSize: getProportionateScreenWidth(20),
  letterSpacing: 0.14,
);

final TextStyle kHeadlineTextStyle = TextStyle(
  fontSize: getProportionateScreenWidth(25),
  fontWeight: FontWeight.bold,
);

final TextStyle kSubHeadTextStyle = TextStyle(
  fontSize: getProportionateScreenWidth(20),
  fontWeight: FontWeight.w500,
  color: kPrimaryDarkColor,
  letterSpacing: 0.44,
);

final TextStyle kBodyTextStyle = TextStyle(
  fontSize: getProportionateScreenWidth(16),
  color: kBodyTextColor,
  height: 1.5,
);

final TextStyle kSecondaryBodyTextStyle = TextStyle(
  fontSize: getProportionateScreenWidth(14),
  fontWeight: FontWeight.w500,
  color: kPrimaryDarkColor,
  fontFamily: 'Helvetica Neue', // TODO: For Debugging Purposes not final
);

final TextStyle kButtonTextStyle = TextStyle(
  color: Colors.white,
  fontSize: getProportionateScreenWidth(14),
  fontWeight: FontWeight.bold,
);

final TextStyle kCaptionTextStyle = TextStyle(
  color: kPrimaryDarkColor.withOpacity(0.64),
  fontSize: getProportionateScreenWidth(12),
  fontWeight: FontWeight.w600,
  fontFamily: 'Helvetica Neue',
  // TODO: For Debugging Purposes not final
);

const TextStyle kAppBarTitleTextStyle = TextStyle(
  fontSize: 20,
  color: Color(0xFF8B8B8B),
);

// =============== PADDINGS ===============
const double kDefaultPadding = 20.0;
final EdgeInsets kTextFieldPadding = EdgeInsets.symmetric(
  horizontal: getProportionateScreenWidth(kDefaultPadding),
  vertical: getProportionateScreenHeight(kDefaultPadding),
);

// =============== DURATION ===============
const Duration kDefaultDuration = Duration(milliseconds: 250);

// =============== TEXT FIELD DECORATION ===============
const kErrorBorderSide = BorderSide(color: Colors.red, width: 1);
const kErrorLabelText = TextStyle(color: Colors.red);

const OutlineInputBorder kDefaultOutlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(10)),
  borderSide: BorderSide(color: kBodyTextColor),
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

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(10)),
    borderSide: const BorderSide(color: kBodyTextColor),
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
