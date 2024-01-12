import 'package:flutter/material.dart';
import 'package:greenit_version1/models/profile.dart';

class Body extends StatefulWidget {
  const Body({super.key, required this.profile});

  final Profile profile;

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        widget.profile.name,
      ),
    );
  }
}
