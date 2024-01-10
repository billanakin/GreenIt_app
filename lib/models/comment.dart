import 'package:flutter/material.dart';
import 'package:greenit_version1/models/profile.dart';

class Comment {
  final Profile profile;
  final String comment;

  const Comment({
    required this.profile,
    required this.comment,
  });

  String get profileName => profile.name;
  String get profileImage => profile.profileAvatar;
}
