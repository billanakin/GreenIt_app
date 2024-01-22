import 'package:flutter/material.dart';
import 'package:greenit_app/components/buttons/primary_button.dart';
import 'package:greenit_app/constants.dart';
import 'package:greenit_app/screens/complete_profile/complete_profile_screen.dart';
import 'package:greenit_app/size_config.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({
    super.key,
  });

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();

  // ignore: unused_field
  String? _email, _password, _confirmPassword;

  FocusNode? _passwordNode, _confirmPasswordNode;

  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
    _passwordNode = FocusNode();
    _confirmPasswordNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    _passwordNode!.dispose();
    _confirmPasswordNode!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailField(),
          const VerticalSpacing(of: 25),
          buildPasswordField(),
          const VerticalSpacing(of: 25),
          buildConfirmPasswordField(),
          const VerticalSpacing(of: 30),
          PrimaryButton(
            text: 'Continue',
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CompleteProfileScreen(),
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildConfirmPasswordField() {
    return TextFormField(
      focusNode: _confirmPasswordNode,
      validator: (value) => matchValidator.validateMatch(value!, _password!),
      obscureText: _obscureText,
      onSaved: (value) => _confirmPassword = value,
      onChanged: (value) => _confirmPassword = value,
      textInputAction: TextInputAction.next,
      style: kPrimaryBodyTextStyle,
      cursorColor: kPrimaryActiveColor,
      decoration: InputDecoration(
        hintText: 'Re-enter your password',
        labelText: 'Confirm Password',
        contentPadding: kTextFieldPadding,
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
          child: _obscureText
              ? const Icon(Icons.visibility_off, color: kPrimaryIconColor)
              : const Icon(Icons.visibility, color: kPrimaryIconColor),
        ),
      ),
    );
  }

  TextFormField buildPasswordField() {
    return TextFormField(
      focusNode: _passwordNode,
      validator: passwordValidator.call,
      obscureText: _obscureText,
      onSaved: (value) => _password = value,
      onChanged: (value) => _password = value,
      textInputAction: TextInputAction.next,
      onEditingComplete: () => _confirmPasswordNode!.requestFocus(),
      style: kPrimaryBodyTextStyle,
      cursorColor: kPrimaryActiveColor,
      decoration: InputDecoration(
        hintText: 'Enter your password',
        labelText: 'Password',
        contentPadding: kTextFieldPadding,
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
          child: _obscureText
              ? const Icon(Icons.visibility_off, color: kPrimaryIconColor)
              : const Icon(Icons.visibility, color: kPrimaryIconColor),
        ),
      ),
    );
  }

  TextFormField buildEmailField() {
    return TextFormField(
      validator: emailValidator.call,
      onSaved: (value) => _email = value,
      textInputAction: TextInputAction.next,
      onEditingComplete: () => _passwordNode!.requestFocus(),
      style: kPrimaryBodyTextStyle,
      cursorColor: kPrimaryActiveColor,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'Enter your email',
        labelText: 'Email Address',
        contentPadding: kTextFieldPadding,
      ),
    );
  }
}
