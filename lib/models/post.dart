import 'package:greenit_version1/models/profile.dart';
import 'package:intl/intl.dart';

class Post {
  final int id;
  final Profile profile;
  final String time, date;
  final int? locationRange;
  final String? messageTitle;
  final String messageDescription;
  final List<String>? postImages;

  // TO BE OPTIMIZED
  // final List<Comment> comments;
  // final List<Share> shares;
  // final List<Like> likes;

  final Post? sharedPost;

  Post({
    required this.id,
    required this.profile,
    required this.time,
    required this.date,
    required this.locationRange,
    required this.messageTitle,
    required this.messageDescription,
    required this.postImages,
  }) : sharedPost = null;

  Post.shared({
    required this.id,
    required this.profile,
    required this.time,
    required this.date,
    required this.messageDescription,
    required this.sharedPost,
  })  : postImages = null,
        locationRange = null,
        messageTitle = null;

  String get profileName => profile.name;
}

// Demo Post Data
List<Post> demoPostData = [
  Post(
    id: 0,
    profile: Profile(id: 0, name: 'Dominic Osorio', profileAvatar: ''),
    time: DateFormat('h:mm a').format(DateTime.now()), // H:MM A
    date: DateFormat.yMMMd().format(DateTime.now()),
    locationRange: 5,
    messageTitle: 'The Argao LGU is cruel!',
    messageDescription:
        "Recent actions by the Argao LGU have raised concerns within our community. It's crucial that we engage in open dialogue to address these issues and work together for a more transparent and accountable local government. Let's channel our concerns into constructive solutions. 🤝 #CommunityEngagement #ArgaoLGU #Accountability",
    postImages: [
      '',
      '',
      '',
    ],
  ),
  Post(
    id: 1,
    profile: Profile(id: 1, name: 'Henry Yap Three', profileAvatar: ''),
    time: DateFormat('h:mm a').format(DateTime.now()), // H:MM A
    date: DateFormat.yMMMd().format(DateTime.now()),
    locationRange: 5,
    messageTitle: 'Let’s do a costal cleanup!',
    messageDescription:
        "🏖️ Join us for a Coastal Cleanup Day! Together, we can make our beaches cleaner and healthier for all. 🌊 Let's protect our oceans and preserve the beauty of our coastal communities. Mark your calendar and be a part of the change! 🌎 #CoastalCleanup #EnvironmentalAction #CleanSeas",
    postImages: [
      '',
      '',
      '',
    ],
  ),
  Post(
    id: 2,
    profile: Profile(id: 3, name: 'Lionel Messi', profileAvatar: ''),
    time: DateFormat('h:mm a').format(DateTime.now()), // H:MM A
    date: DateFormat.yMMMd().format(DateTime.now()),
    locationRange: 5,
    messageTitle: 'Keep up the good work, Talaytay FC!',
    messageDescription:
        "It's great to see organizations like Talaytay FC taking action on climate change! Let's keep the momentum going and inspire others to join the cause. Together, we can make a real impact in the fight against climate change. 🌍💚 #ClimateAction #TalaytayFC #ClimateChangeAwareness",
    postImages: [
      '',
      '',
      '',
    ],
  ),
  Post(
    id: 3,
    profile: Profile(id: 2, name: 'Anakin Vader', profileAvatar: ''),
    time: DateFormat('h:mm a').format(DateTime.now()), // H:MM A
    date: DateFormat.yMMMd().format(DateTime.now()),
    locationRange: 5,
    messageTitle: 'What’s Cebu doing???',
    messageDescription:
        "Disheartened by the slow progress on climate action in Cebu. Let's raise our voices, demand change, and work together for a greener, sustainable future. We have the power to make a difference. 🌍💚 #ClimateAction #Cebu #TogetherForChange",
    postImages: [
      '',
      '',
      '',
    ],
  ),
  Post.shared(
    id: 4,
    profile: Profile(id: 4, name: 'Russy Fluffy', profileAvatar: ''),
    time: DateFormat('h:mm a').format(DateTime.now()),
    date: DateFormat.yMMMd().format(DateTime.now()),
    messageDescription:
        "Absolutely, we can't afford to wait any longer. It's time for our leaders to prioritize climate action and for all of us to take individual steps towards a more sustainable future.",
    // Shared Post
    sharedPost: Post(
      id: 3,
      profile: Profile(id: 2, name: 'Anakin Vader', profileAvatar: ''),
      time: DateFormat('h:mm a').format(DateTime.now()), // H:MM A
      date: DateFormat.yMMMd().format(DateTime.now()),
      locationRange: 5,
      messageTitle: 'What’s Cebu doing???',
      messageDescription:
          "Disheartened by the slow progress on climate action in Cebu. Let's raise our voices, demand change, and work together for a greener, sustainable future. We have the power to make a difference. 🌍💚 #ClimateAction #Cebu #TogetherForChange",
      postImages: [
        '',
        '',
        '',
      ],
    ),
  ),
  Post.shared(
    id: 5,
    profile: Profile(id: 4, name: 'Russy Fluffy', profileAvatar: ''),
    time: DateFormat('h:mm a').format(DateTime.now()),
    date: DateFormat.yMMMd().format(DateTime.now()),
    messageDescription:
        "Climate change is a pressing issue, and it affects us right here in Cebu. Rising sea levels, extreme weather events, and threats to our local ecosystems are all signs that we must act now. We need our local leaders to implement policies that promote clean energy, reduce emissions, and protect our natural resources. But it's not just up to them; as individuals, we can also make a difference through our daily choices. Every small effort counts, from reducing single-use plastic to conserving water and energy. Together, we can create a more resilient and sustainable future for our beautiful Cebu. 🌊🌏 #CebuClimateAction #SustainableLiving #ActOnClimate",
    sharedPost: Post(
      id: 3,
      profile: Profile(id: 2, name: 'Anakin Vader', profileAvatar: ''),
      time: DateFormat('h:mm a').format(DateTime.now()), // H:MM A
      date: DateFormat.yMMMd().format(DateTime.now()),
      locationRange: 5,
      messageTitle: 'What’s Cebu doing???',
      messageDescription:
          "Disheartened by the slow progress on climate action in Cebu. Let's raise our voices, demand change, and work together for a greener, sustainable future. We have the power to make a difference. 🌍💚 #ClimateAction #Cebu #TogetherForChange",
      postImages: [
        '',
        '',
        '',
      ],
    ),
  ),
];
