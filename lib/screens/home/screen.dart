import 'package:flutter/material.dart';
import 'package:greenit_app/models/user.dart';
import 'package:greenit_app/services/login.dart' as login_service;

class Screen extends StatelessWidget {
  const Screen({super.key});

  Future<User?> login() async {
    return await login_service.call("email", "password");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    return FutureBuilder<User?>(
        future: login(),
        builder: (BuildContext context, AsyncSnapshot<User?> snapshot) {
          if (snapshot.hasData) {
            return buildBodyWithData(context, snapshot.data);
          } else if (snapshot.hasError) {
            return buildBodyWithError(context, snapshot.error);
          } else {
            return buildLoadingBody(context);
          }
        });
  }

  Widget buildBodyWithData(BuildContext context, User? loggedInUser) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "You logged in as ${loggedInUser!.email}",
          ),
        ],
      ),
    );
  }

  Widget buildBodyWithError(BuildContext context, Object? error) {
    return Center(
      child: Text(
        error!.toString(),
      ),
    );
  }

  Widget buildLoadingBody(BuildContext context) {
    return const Center(
      child: Text(
        'Loading...',
      ),
    );
  }
}
