import 'package:flutter/material.dart';
import 'package:greenit_version1/components/buttons/primary_button.dart';
import 'package:greenit_version1/constants.dart';
import 'package:greenit_version1/screens/forgotPassword/components/reset_email_screen.dart';
import 'package:greenit_version1/size_config.dart';

class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({
    super.key,
  });

  @override
  State<ForgotPasswordForm> createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final _formKey = GlobalKey<FormState>();

  // ignore: unused_field
  String? _email;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailField(),
          VerticalSpacing(of: SizeConfig.screenHeight * 0.1),
          PrimaryButton(
            text: 'Reset Password',
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ResetEmailScreen(),
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildEmailField() {
    return TextFormField(
      validator: emailValidator.call,
      onSaved: (value) => _email = value,
      keyboardType: TextInputType.emailAddress,
      style: kPrimaryBodyTextStyle,
      decoration: InputDecoration(
        hintText: 'Enter your email',
        labelText: 'Email Address',
        contentPadding: kTextFieldPadding,
      ),
    );
  }
}
