// Demo Profiles
import 'package:greenit_app/dummy_data/post_data.dart';
import 'package:greenit_app/models/profile.dart';

Profile profile0 = Profile(
  id: 0,
  name: 'Dominic Osorio',
  profileAvatar: 'assets/images/profile/profile1.png',
  followers: [
    profile0,
    profile1,
    profile2,
  ],
  following: [
    profile5,
    profile6,
    profile7,
  ],
  posts: [
    post0,
  ],
);

Profile profile1 = Profile(
  id: 1,
  name: 'Henry Yap Three',
  profileAvatar: 'assets/images/profile/profile6.png',
  followers: [
    profile0,
    profile1,
    profile2,
  ],
  following: [
    profile5,
    profile6,
    profile7,
  ],
  posts: [
    post1,
  ],
);

Profile profile2 = Profile(
  id: 2,
  name: 'Anakin Vader',
  profileAvatar: 'assets/images/profile/profile7.png',
  followers: [
    profile0,
    profile1,
    profile2,
  ],
  following: [
    profile5,
    profile6,
    profile7,
  ],
  posts: [
    post3,
  ],
);

Profile profile3 = Profile(
  id: 3,
  name: 'Lionel Messi',
  profileAvatar: 'assets/images/profile/user_profile.jpeg',
  followers: [
    profile0,
    profile1,
    profile2,
  ],
  following: [
    profile5,
    profile6,
    profile7,
  ],
  posts: [
    post2,
  ],
);

Profile profile4 = Profile(
  id: 4,
  name: 'Russy Fluffy',
  profileAvatar: 'assets/images/profile/profile5.png',
  followers: [
    profile0,
    profile1,
    profile2,
  ],
  following: [
    profile5,
    profile6,
    profile7,
  ],
  posts: [
    post4,
  ],
);

Profile profile5 = Profile(
  id: 5,
  name: 'Carlos Sainz',
  profileAvatar: 'assets/images/profile/profile3.png',
  followers: [
    profile0,
    profile1,
    profile2,
  ],
  following: [
    profile5,
    profile6,
    profile7,
  ],
  posts: [
    post5,
  ],
);

Profile profile6 = Profile(
  id: 6,
  name: 'Bill Zamora',
  profileAvatar: 'assets/images/profile/profile4.png',
  followers: [
    profile0,
    profile1,
    profile2,
  ],
  following: [
    profile5,
    profile6,
    profile7,
  ],
);

Profile profile7 = Profile(
  id: 7,
  name: 'Cinate Rica',
  profileAvatar: 'assets/images/profile/profile2.png',
  followers: [
    profile0,
    profile1,
    profile2,
  ],
  following: [
    profile5,
    profile6,
    profile7,
  ],
);

class DemoProfilesData {
  static Profile userProfile = profile3;

  static List<Profile> demoProfilesListData = [
    profile0,
    profile1,
    profile2,
    profile3,
    profile4,
    profile5,
    profile6,
    profile7,
  ];
}
