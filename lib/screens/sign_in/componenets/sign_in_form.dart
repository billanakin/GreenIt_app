import 'package:flutter/material.dart';
import 'package:greenit_app/apis/api_response.dart';
import 'package:greenit_app/apis/session_api.dart';
import 'package:greenit_app/components/buttons/primary_button.dart';
import 'package:greenit_app/constants.dart';
import 'package:greenit_app/models/forms/login_form.dart';
import 'package:greenit_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:greenit_app/screens/sign_in_success/sign_in_success_screen.dart';
import 'package:greenit_app/size_config.dart';

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

  Future<ApiResponse> _doSignin() async {
    var loginForm = LoginForm(email: _email, password: _password);
    var apiResponse = await SessionApi().login(loginForm);
    return apiResponse;
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
                child: Text(
                  'Forgot Password',
                  style: kPrimaryBodyTextStyle.copyWith(
                    decoration: TextDecoration.underline,
                  ),
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
                _doSignin().then((apiResponse) {
                  // TODO: What if no success?
                  if (apiResponse.success) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const SignInSuccessScreen(),
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

  TextFormField buildPasswordField() {
    return TextFormField(
      focusNode: _passwordNode,
      validator: passwordValidator.call,
      obscureText: _obscureText,
      onSaved: (value) => _password = value,
      onChanged: (value) => _password = value,
      onEditingComplete: () => _passwordNode!.unfocus(),
      textInputAction: TextInputAction.done,
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
      onChanged: (value) => _email = value,
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
