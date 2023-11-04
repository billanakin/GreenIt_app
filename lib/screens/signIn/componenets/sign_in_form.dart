import 'package:flutter/material.dart';
import 'package:greenit_version1/components/buttons/primary_button.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/screens/forgotPassword/forgot_password_screen.dart';
import 'package:greenit_version1/screens/successLogin/success_login_screen.dart';
import 'package:greenit_version1/size_config.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({
    super.key,
  });

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();

  // ignore: unused_field
  String? _email, _password;

  FocusNode? _passwordNode;

  bool _obscureText = true;
  bool _rememberMe = false;

  @override
  void initState() {
    super.initState();
    _passwordNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    _passwordNode!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailField(),
          const VerticalSpacing(of: 30),
          buildPasswordField(),
          const VerticalSpacing(of: 30),
          Row(
            children: [
              Checkbox(
                value: _rememberMe,
                onChanged: (value) {
                  setState(() {
                    _rememberMe = value!;
                  });
                },
                activeColor: kPrimaryActiveColor,
              ),
              const Text('Remember Me'),
              const Spacer(),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ForgotPasswordScreen(),
                  ),
                ),
                child: const Text(
                  'Forgot Password',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
          const VerticalSpacing(of: 10),
          PrimaryButton(
            text: 'Sign In',
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SuccessLoginScreen(),
                  ),
                );
              }
            },
          ),
        ],
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
      style: kSecondaryBodyTextStyle.copyWith(
        fontSize: getProportionateScreenWidth(15),
        height: 1.5,
      ),
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
              ? const Icon(Icons.visibility_off, color: kBodyTextColor)
              : const Icon(Icons.visibility, color: kBodyTextColor),
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
      style: kSecondaryBodyTextStyle.copyWith(
        fontSize: getProportionateScreenWidth(15),
        height: 1.5,
      ),
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
