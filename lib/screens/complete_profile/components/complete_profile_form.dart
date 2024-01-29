import 'package:flutter/material.dart';
import 'package:greenit_app/apis/api_response.dart';
import 'package:greenit_app/components/buttons/primary_button.dart';
import 'package:greenit_app/constants.dart';
import 'package:greenit_app/screens/sign_in/sign_in_screen.dart';
import 'package:greenit_app/size_config.dart';

import 'package:greenit_app/models/forms/signup_form.dart' as model;
import 'package:greenit_app/apis/signup_api.dart';

class CompleteProfileForm extends StatefulWidget {
  final model.SignupForm signupForm;

  const CompleteProfileForm({
    super.key,
    required this.signupForm,
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

  Future<ApiResponse> _doSignUp() async {
    var signupForm = widget.signupForm;
    signupForm.firstName = _firstName;
    signupForm.lastName = _lastName;

    var apiResponse = await SignupApi().call(signupForm);

    return apiResponse;
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
          const VerticalSpacing(of: 30),
          PrimaryButton(
            text: 'Register Account',
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                _doSignUp().then((apiResponse) {
                  // TODO: What if there is a:
                  //       - validation error
                  //       - server error
                  //       - client error, e.g. no internet
                  if (apiResponse.success) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        // TODO: Show sign up success
                        //       and let user sign in automatically after sign up
                        builder: (context) => const SignInScreen(),
                      ),
                    );
                  }
                });
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildLastNameField() {
    return TextFormField(
      focusNode: _lastNameNode,
      validator: requiredValidator.call,
      onChanged: (value) => _lastName = value,
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
      onChanged: (value) => _firstName = value,
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
