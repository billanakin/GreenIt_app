import 'package:flutter/material.dart';

class Profile {
  final int id;
  final String name;
  final List<Profile> followers, following;
  // final List<Post> posts;
  final String profileAvatar;

  Profile({
    required this.id,
    required this.name,
    required this.followers,
    required this.following,
    required this.profileAvatar,
  });
}
