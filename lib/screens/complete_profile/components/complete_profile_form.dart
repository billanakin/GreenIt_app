import 'package:flutter/material.dart';
import 'package:greenit_app/components/buttons/primary_button.dart';
import 'package:greenit_app/constants.dart';
import 'package:greenit_app/screens/otp_verification/otp_screen.dart';
import 'package:greenit_app/size_config.dart';

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({
    super.key,
  });

  @override
  State<CompleteProfileForm> createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();

  // ignore: unused_field
  String? _firstName, _lastName, _phoneNumber, _address;

  FocusNode? _lastNameNode, _phoneNumberNode, _addressNode;

  @override
  void initState() {
    super.initState();
    _lastNameNode = FocusNode();
    _phoneNumberNode = FocusNode();
    _addressNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    _lastNameNode!.dispose();
    _phoneNumberNode!.dispose();
    _addressNode!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildFirstNameField(),
          const VerticalSpacing(of: 25),
          buildLastNameField(),
          const VerticalSpacing(of: 25),
          buildPhoneNumberField(),
          const VerticalSpacing(of: 25),
          buildAddressField(),
          const VerticalSpacing(of: 30),
          PrimaryButton(
            text: 'Register Account',
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OtpVerficationScreen(),
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildAddressField() {
    return TextFormField(
      focusNode: _addressNode,
      validator: requiredValidator.call,
      onSaved: (value) => _address = value,
      textInputAction: TextInputAction.done,
      onEditingComplete: () => _addressNode!.unfocus(),
      style: kPrimaryBodyTextStyle,
      cursorColor: kPrimaryActiveColor,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        hintText: 'Enter your address',
        labelText: 'Address',
        contentPadding: kTextFieldPadding,
      ),
    );
  }

  TextFormField buildPhoneNumberField() {
    return TextFormField(
      focusNode: _phoneNumberNode,
      validator: phoneNumberValidator.call,
      onSaved: (value) => _phoneNumber = value,
      textInputAction: TextInputAction.next,
      onEditingComplete: () => _addressNode!.requestFocus(),
      style: kPrimaryBodyTextStyle,
      cursorColor: kPrimaryActiveColor,
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        hintText: 'Enter your phone number',
        labelText: 'Phone Number',
        contentPadding: kTextFieldPadding,
      ),
    );
  }

  TextFormField buildLastNameField() {
    return TextFormField(
      focusNode: _lastNameNode,
      validator: requiredValidator.call,
      onSaved: (value) => _lastName = value,
      textInputAction: TextInputAction.next,
      onEditingComplete: () => _phoneNumberNode!.requestFocus(),
      style: kPrimaryBodyTextStyle,
      cursorColor: kPrimaryActiveColor,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        hintText: 'Enter your last name',
        labelText: 'Last Name',
        contentPadding: kTextFieldPadding,
      ),
    );
  }

  TextFormField buildFirstNameField() {
    return TextFormField(
      validator: requiredValidator.call,
      onSaved: (value) => _firstName = value,
      textInputAction: TextInputAction.next,
      onEditingComplete: () => _lastNameNode!.requestFocus(),
      style: kPrimaryBodyTextStyle,
      cursorColor: kPrimaryActiveColor,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        hintText: 'Enter your first name',
        labelText: 'First Name',
        contentPadding: kTextFieldPadding,
      ),
    );
  }
}
