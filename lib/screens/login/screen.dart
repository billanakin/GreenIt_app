import 'package:flutter/material.dart';
import 'package:greenit_app/models/user.dart';
import 'package:greenit_app/services/login.dart' as login_service;

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  bool _isLoading = false;
  String? _errorMessage;
  User? _user;

  Future login(BuildContext context) async {
    setState(() {
      _isLoading = true;
    });

    try {
      var user =
          await login_service.call("bill.anakin143@gmail.com", "mypassword");
      setState(() {
        _user = user;
        _isLoading = false;
        _errorMessage = null;
      }); //TODO: No setstart here, just go to another screen
    } on Exception catch (e) {
      setState(() {
        _isLoading = false;
        _errorMessage = e.toString();
      });
    }
  }

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          (_isLoading)
              ? const Text(
                  "Loading...",
                )
              : const Text(""),
          (_errorMessage != null)
              ? Text(
                  _errorMessage!,
                )
              : const Text(""),
          (_user != null)
              ? Text(
                  "You logged in as ${_user!.email}",
                )
              : TextButton(
                  onPressed: () async => await login(context),
                  child: const Text(
                    'Login',
                  ),
                )
        ],
      ),
    );
  }
}
