// Demo Post Data
import 'package:greenit_app/models/comment.dart';
import 'package:greenit_app/models/post.dart';
import 'package:greenit_app/models/profile.dart';
import 'package:intl/intl.dart';

Post post0 = Post(
  id: 0,
  profile: Profile(
    id: 0,
    name: 'Dominic Osorio',
    profileAvatar: 'assets/images/profile/profile1.png',
    followers: [
      Profile(
        id: 0,
        name: 'Dominic Osorio',
        profileAvatar: 'assets/images/profile/profile1.png',
      ),
      Profile(
        id: 1,
        name: 'Henry Yap Three',
        profileAvatar: 'assets/images/profile/profile6.png',
      ),
      Profile(
        id: 2,
        name: 'Anakin Vader',
        profileAvatar: 'assets/images/profile/profile7.png',
      ),
    ],
    following: [
      Profile(
        id: 5,
        name: 'Carlos Sainz',
        profileAvatar: 'assets/images/profile/profile3.png',
      ),
      Profile(
        id: 6,
        name: 'Bill Zamora',
        profileAvatar: 'assets/images/profile/profile4.png',
      ),
      Profile(
        id: 7,
        name: 'Cinate Rica',
        profileAvatar: 'assets/images/profile/profile2.png',
      ),
    ],
    posts: [
      Post(
        id: 0,
        profile: Profile(
          id: 0,
          name: 'Dominic Osorio',
          profileAvatar: 'assets/images/profile/profile1.png',
        ),
        time: DateFormat('h:mm a').format(DateTime.now()), // H:MM A
        date: DateFormat.yMMMd().format(DateTime.now()),
        locationRange: 5,
        messageTitle: 'The Argao LGU is cruel!',
        messageDescription:
            "Recent actions by the Argao LGU have raised concerns within our community. It's crucial that we engage in open dialogue to address these issues and work together for a more transparent and accountable local government. Let's channel our concerns into constructive solutions. 🤝 #CommunityEngagement #ArgaoLGU #Accountability",
        postImages: [
          'assets/images/posts/post_image8.png',
        ],
      ),
    ],
  ),
  time: DateFormat('h:mm a').format(DateTime.now()), // H:MM A
  date: DateFormat.yMMMd().format(DateTime.now()),
  locationRange: 5,
  messageTitle: 'The Argao LGU is cruel!',
  messageDescription:
      "Recent actions by the Argao LGU have raised concerns within our community. It's crucial that we engage in open dialogue to address these issues and work together for a more transparent and accountable local government. Let's channel our concerns into constructive solutions. 🤝 #CommunityEngagement #ArgaoLGU #Accountability",
  postImages: [
    'assets/images/posts/post_image8.png',
  ],
  // --------------------- Comments ------------------------
  postComments: [
    Comment(
      profile: Profile(
        id: 3,
        name: 'Lionel Messi',
        profileAvatar: 'assets/images/profile/user_profile.jpeg',
        followers: [
          Profile(
            id: 0,
            name: 'Dominic Osorio',
            profileAvatar: 'assets/images/profile/profile1.png',
          ),
          Profile(
            id: 1,
            name: 'Henry Yap Three',
            profileAvatar: 'assets/images/profile/profile6.png',
          ),
          Profile(
            id: 2,
            name: 'Anakin Vader',
            profileAvatar: 'assets/images/profile/profile7.png',
          ),
        ],
        following: [
          Profile(
            id: 5,
            name: 'Carlos Sainz',
            profileAvatar: 'assets/images/profile/profile3.png',
          ),
          Profile(
            id: 6,
            name: 'Bill Zamora',
            profileAvatar: 'assets/images/profile/profile4.png',
          ),
          Profile(
            id: 7,
            name: 'Cinate Rica',
            profileAvatar: 'assets/images/profile/profile2.png',
          ),
        ],
        posts: [
          Post(
            id: 2,
            profile: Profile(
              id: 3,
              name: 'Lionel Messi',
              profileAvatar: 'assets/images/profile/user_profile.jpeg',
            ),
            time: DateFormat('h:mm a').format(DateTime.now()), // H:MM A
            date: DateFormat.yMMMd().format(DateTime.now()),
            locationRange: 5,
            messageTitle: 'Keep up the good work, Talaytay FC!',
            messageDescription:
                "It's great to see organizations like Talaytay FC taking action on climate change! Let's keep the momentum going and inspire others to join the cause. Together, we can make a real impact in the fight against climate change. 🌍💚 #ClimateAction #TalaytayFC #ClimateChangeAwareness",
            postImages: [
              'assets/images/posts/post_image9.png',
            ],
          )
        ],
      ),
      comment:
          "Absolutely thrilled about the Coastal Cleanup Day initiative! 🏖️🌊 Joining forces to make our beaches cleaner and healthier reflects a collective commitment to environmental stewardship. Let's unite to protect our oceans and preserve the beauty of our coastal communities. Mark your calendar for this impactful event and be a part of the positive change we can achieve together! 🌎 #CoastalCleanup #EnvironmentalAction #CleanSeas #CommunityImpact 🤝",
    ),
    Comment(
      profile: Profile(
        id: 1,
        name: 'Henry Yap Three',
        profileAvatar: 'assets/images/profile/profile6.png',
      ),
      comment:
          "Excited to be part of the Coastal Cleanup Day! 🌊 Let's transform our beaches for the better. Your involvement can make a significant impact on preserving our coastal communities. Save the date and let's make waves for a cleaner, healthier environment! 🏖️🌎 #CoastalCleanup #CleanSeas #EnvironmentalResponsibility 🤝",
    ),
    Comment(
      profile: Profile(
        id: 2,
        name: 'Anakin Vader',
        profileAvatar: 'assets/images/profile/profile7.png',
        followers: [
          Profile(
            id: 0,
            name: 'Dominic Osorio',
            profileAvatar: 'assets/images/profile/profile1.png',
          ),
          Profile(
            id: 1,
            name: 'Henry Yap Three',
            profileAvatar: 'assets/images/profile/profile6.png',
          ),
          Profile(
            id: 2,
            name: 'Anakin Vader',
            profileAvatar: 'assets/images/profile/profile7.png',
          ),
        ],
        following: [
          Profile(
            id: 5,
            name: 'Carlos Sainz',
            profileAvatar: 'assets/images/profile/profile3.png',
          ),
          Profile(
            id: 6,
            name: 'Bill Zamora',
            profileAvatar: 'assets/images/profile/profile4.png',
          ),
          Profile(
            id: 7,
            name: 'Cinate Rica',
            profileAvatar: 'assets/images/profile/profile2.png',
          ),
        ],
        posts: [
          Post(
            id: 3,
            profile: Profile(
              id: 2,
              name: 'Anakin Vader',
              profileAvatar: 'assets/images/profile/profile7.png',
            ),
            time: DateFormat('h:mm a').format(DateTime.now()), // H:MM A
            date: DateFormat.yMMMd().format(DateTime.now()),
            locationRange: 5,
            messageTitle: 'What’s Cebu doing???',
            messageDescription:
                "Disheartened by the slow progress on climate action in Cebu. Let's raise our voices, demand change, and work together for a greener, sustainable future. We have the power to make a difference. 🌍💚 #ClimateAction #Cebu #TogetherForChange",
            postImages: [
              'assets/images/posts/post_image1.png',
              'assets/images/posts/post_image2.png',
              'assets/images/posts/post_image3.png',
            ],
          ),
        ],
      ),
      comment:
          "Absolutely thrilled about the Coastal Cleanup Day initiative! 🏖️Dive into action with us on Coastal Cleanup Day! 🌊 Join the movement for cleaner, healthier beaches. Together, we can make a lasting impact on our oceans and coastal communities. Save the date and be the change our environment needs! 🏖️🌍 #CoastalCleanup #SustainableLiving #ProtectOurOceans 🤝",
    ),
    Comment(
      profile: Profile(
        id: 4,
        name: 'Russy Fluffy',
        profileAvatar: 'assets/images/profile/profile5.png',
        followers: [
          Profile(
            id: 0,
            name: 'Dominic Osorio',
            profileAvatar: 'assets/images/profile/profile1.png',
          ),
          Profile(
            id: 1,
            name: 'Henry Yap Three',
            profileAvatar: 'assets/images/profile/profile6.png',
          ),
          Profile(
            id: 2,
            name: 'Anakin Vader',
            profileAvatar: 'assets/images/profile/profile7.png',
          ),
        ],
        following: [
          Profile(
            id: 5,
            name: 'Carlos Sainz',
            profileAvatar: 'assets/images/profile/profile3.png',
          ),
          Profile(
            id: 6,
            name: 'Bill Zamora',
            profileAvatar: 'assets/images/profile/profile4.png',
          ),
          Profile(
            id: 7,
            name: 'Cinate Rica',
            profileAvatar: 'assets/images/profile/profile2.png',
          ),
        ],
        posts: [
          Post.shared(
            id: 4,
            profile: Profile(
              id: 4,
              name: 'Russy Fluffy',
              profileAvatar: 'assets/images/profile/profile5.png',
              followers: [
                Profile(
                  id: 0,
                  name: 'Dominic Osorio',
                  profileAvatar: 'assets/images/profile/profile1.png',
                ),
                Profile(
                  id: 1,
                  name: 'Henry Yap Three',
                  profileAvatar: 'assets/images/profile/profile6.png',
                ),
                Profile(
                  id: 2,
                  name: 'Anakin Vader',
                  profileAvatar: 'assets/images/profile/profile7.png',
                ),
              ],
              following: [
                Profile(
                  id: 5,
                  name: 'Carlos Sainz',
                  profileAvatar: 'assets/images/profile/profile3.png',
                ),
                Profile(
                  id: 6,
                  name: 'Bill Zamora',
                  profileAvatar: 'assets/images/profile/profile4.png',
                ),
                Profile(
                  id: 7,
                  name: 'Cinate Rica',
                  profileAvatar: 'assets/images/profile/profile2.png',
                ),
              ],
              posts: [
                Post.shared(
                  id: 4,
                  profile: Profile(
                    id: 4,
                    name: 'Russy Fluffy',
                    profileAvatar: 'assets/images/profile/profile5.png',
                    followers: [
                      Profile(
                        id: 0,
                        name: 'Dominic Osorio',
                        profileAvatar: 'assets/images/profile/profile1.png',
                      ),
                      Profile(
                        id: 1,
                        name: 'Henry Yap Three',
                        profileAvatar: 'assets/images/profile/profile6.png',
                      ),
                      Profile(
                        id: 2,
                        name: 'Anakin Vader',
                        profileAvatar: 'assets/images/profile/profile7.png',
                      ),
                    ],
                    following: [
                      Profile(
                        id: 5,
                        name: 'Carlos Sainz',
                        profileAvatar: 'assets/images/profile/profile3.png',
                      ),
                      Profile(
                        id: 6,
                        name: 'Bill Zamora',
                        profileAvatar: 'assets/images/profile/profile4.png',
                      ),
                      Profile(
                        id: 7,
                        name: 'Cinate Rica',
                        profileAvatar: 'assets/images/profile/profile2.png',
                      ),
                    ],
                    posts: [
                      Post.shared(
                        id: 4,
                        profile: Profile(
                          id: 4,
                          name: 'Russy Fluffy',
                          profileAvatar: 'assets/images/profile/profile5.png',
                        ),
                        time: DateFormat('h:mm a').format(DateTime.now()),
                        date: DateFormat.yMMMd().format(DateTime.now()),
                        messageDescription:
                            "Absolutely, we can't afford to wait any longer. It's time for our leaders to prioritize climate action and for all of us to take individual steps towards a more sustainable future.",
                        sharedPost: Post(
                          id: 3,
                          profile: Profile(
                            id: 2,
                            name: 'Anakin Vader',
                            profileAvatar: 'assets/images/profile/profile7.png',
                          ),
                          time: DateFormat('h:mm a')
                              .format(DateTime.now()), // H:MM A
                          date: DateFormat.yMMMd().format(DateTime.now()),
                          locationRange: 5,
                          messageTitle: 'What’s Cebu doing???',
                          messageDescription:
                              "Disheartened by the slow progress on climate action in Cebu. Let's raise our voices, demand change, and work together for a greener, sustainable future. We have the power to make a difference. 🌍💚 #ClimateAction #Cebu #TogetherForChange",
                          postImages: [
                            'assets/images/posts/post_image1.png',
                            'assets/images/posts/post_image2.png',
                            'assets/images/posts/post_image3.png',
                          ],
                        ),
                      ),
                    ],
                  ),
                  time: DateFormat('h:mm a').format(DateTime.now()),
                  date: DateFormat.yMMMd().format(DateTime.now()),
                  messageDescription:
                      "Absolutely, we can't afford to wait any longer. It's time for our leaders to prioritize climate action and for all of us to take individual steps towards a more sustainable future.",
                  sharedPost: Post(
                    id: 3,
                    profile: Profile(
                      id: 2,
                      name: 'Anakin Vader',
                      profileAvatar: 'assets/images/profile/profile7.png',
                    ),
                    time: DateFormat('h:mm a').format(DateTime.now()), // H:MM A
                    date: DateFormat.yMMMd().format(DateTime.now()),
                    locationRange: 5,
                    messageTitle: 'What’s Cebu doing???',
                    messageDescription:
                        "Disheartened by the slow progress on climate action in Cebu. Let's raise our voices, demand change, and work together for a greener, sustainable future. We have the power to make a difference. 🌍💚 #ClimateAction #Cebu #TogetherForChange",
                    postImages: [
                      'assets/images/posts/post_image1.png',
                      'assets/images/posts/post_image2.png',
                      'assets/images/posts/post_image3.png',
                    ],
                  ),
                ),
              ],
            ),
            time: DateFormat('h:mm a').format(DateTime.now()),
            date: DateFormat.yMMMd().format(DateTime.now()),
            messageDescription:
                "Absolutely, we can't afford to wait any longer. It's time for our leaders to prioritize climate action and for all of us to take individual steps towards a more sustainable future.",
            sharedPost: Post(
              id: 3,
              profile: Profile(
                id: 2,
                name: 'Anakin Vader',
                profileAvatar: 'assets/images/profile/profile7.png',
              ),
              time: DateFormat('h:mm a').format(DateTime.now()), // H:MM A
              date: DateFormat.yMMMd().format(DateTime.now()),
              locationRange: 5,
              messageTitle: 'What’s Cebu doing???',
              messageDescription:
                  "Disheartened by the slow progress on climate action in Cebu. Let's raise our voices, demand change, and work together for a greener, sustainable future. We have the power to make a difference. 🌍💚 #ClimateAction #Cebu #TogetherForChange",
              postImages: [
                'assets/images/posts/post_image1.png',
                'assets/images/posts/post_image2.png',
                'assets/images/posts/post_image3.png',
              ],
            ),
          ),
        ],
      ),
      comment:
          "In light of recent actions by the Argao LGU, it's imperative that our community engages in an open dialogue to address concerns that have arisen. The call for transparency and accountability underscores the importance of trust in the functioning of our local government. By fostering a culture of open communication, we pave the way for constructive solutions to emerge, ensuring that our collective voice is heard and acknowledged.",
    ),
    Comment(
      profile: Profile(
        id: 5,
        name: 'Carlos Sainz',
        profileAvatar: 'assets/images/profile/profile3.png',
        followers: [
          Profile(
            id: 0,
            name: 'Dominic Osorio',
            profileAvatar: 'assets/images/profile/profile1.png',
          ),
          Profile(
            id: 1,
            name: 'Henry Yap Three',
            profileAvatar: 'assets/images/profile/profile6.png',
          ),
          Profile(
            id: 2,
            name: 'Anakin Vader',
            profileAvatar: 'assets/images/profile/profile7.png',
          ),
        ],
        following: [
          Profile(
            id: 5,
            name: 'Carlos Sainz',
            profileAvatar: 'assets/images/profile/profile3.png',
          ),
          Profile(
            id: 6,
            name: 'Bill Zamora',
            profileAvatar: 'assets/images/profile/profile4.png',
          ),
          Profile(
            id: 7,
            name: 'Cinate Rica',
            profileAvatar: 'assets/images/profile/profile2.png',
          ),
        ],
        posts: [
          Post.shared(
            id: 5,
            profile: Profile(
              id: 5,
              name: 'Carlos Sainz',
              profileAvatar: 'assets/images/profile/profile3.png',
            ),
            time: DateFormat('h:mm a').format(DateTime.now()),
            date: DateFormat.yMMMd().format(DateTime.now()),
            messageDescription:
                "Climate change is a pressing issue, and it affects us right here in Cebu. Rising sea levels, extreme weather events, and threats to our local ecosystems are all signs that we must act now. We need our local leaders to implement policies that promote clean energy, reduce emissions, and protect our natural resources. But it's not just up to them; as individuals, we can also make a difference through our daily choices. Every small effort counts, from reducing single-use plastic to conserving water and energy. Together, we can create a more resilient and sustainable future for our beautiful Cebu. 🌊🌏 #CebuClimateAction #SustainableLiving #ActOnClimate",
            sharedPost: Post(
              id: 3,
              profile: Profile(
                id: 2,
                name: 'Anakin Vader',
                profileAvatar: 'assets/images/profile/profile7.png',
              ),
              time: DateFormat('h:mm a').format(DateTime.now()), // H:MM A
              date: DateFormat.yMMMd().format(DateTime.now()),
              locationRange: 5,
              messageTitle: 'What’s Cebu doing???',
              messageDescription:
                  "Disheartened by the slow progress on climate action in Cebu. Let's raise our voices, demand change, and work together for a greener, sustainable future. We have the power to make a difference. 🌍💚 #ClimateAction #Cebu #TogetherForChange",
              postImages: [
                'assets/images/posts/post_image1.png',
                'assets/images/posts/post_image2.png',
                'assets/images/posts/post_image3.png',
              ],
            ),
          ),
        ],
      ),
      comment:
          "Let's harness the power of our collective voice to ensure that our concerns are not only heard but also translated into meaningful actions. Through collaborative efforts, we can contribute to a more responsive, transparent, and accountable Argao LGU, laying the foundation for a stronger and more resilient community. 🌐🤝 #ArgaoLGU #BuildingTrust #ActiveCitizenship",
    ),
  ],
);

Post post1 = Post(
  id: 1,
  profile: Profile(
    id: 1,
    name: 'Henry Yap Three',
    profileAvatar: 'assets/images/profile/profile6.png',
    followers: [
      Profile(
        id: 0,
        name: 'Dominic Osorio',
        profileAvatar: 'assets/images/profile/profile1.png',
      ),
      Profile(
        id: 1,
        name: 'Henry Yap Three',
        profileAvatar: 'assets/images/profile/profile6.png',
      ),
      Profile(
        id: 2,
        name: 'Anakin Vader',
        profileAvatar: 'assets/images/profile/profile7.png',
      ),
    ],
    following: [
      Profile(
        id: 5,
        name: 'Carlos Sainz',
        profileAvatar: 'assets/images/profile/profile3.png',
      ),
      Profile(
        id: 6,
        name: 'Bill Zamora',
        profileAvatar: 'assets/images/profile/profile4.png',
      ),
      Profile(
        id: 7,
        name: 'Cinate Rica',
        profileAvatar: 'assets/images/profile/profile2.png',
      ),
    ],
    posts: [
      Post(
        id: 1,
        profile: Profile(
          id: 1,
          name: 'Henry Yap Three',
          profileAvatar: 'assets/images/profile/profile6.png',
        ),
        time: DateFormat('h:mm a').format(DateTime.now()), // H:MM A
        date: DateFormat.yMMMd().format(DateTime.now()),
        locationRange: 5,
        messageTitle: 'Let’s do a costal cleanup!',
        messageDescription:
            "🏖️ Join us for a Coastal Cleanup Day! Together, we can make our beaches cleaner and healthier for all. 🌊 Let's protect our oceans and preserve the beauty of our coastal communities. Mark your calendar and be a part of the change! 🌎 #CoastalCleanup #EnvironmentalAction #CleanSeas",
        postImages: [
          'assets/images/posts/post_image4.png',
          'assets/images/posts/post_image5.png',
          'assets/images/posts/post_image6.png',
          'assets/images/posts/post_image7.png',
        ],
      ),
    ],
  ),
  time: DateFormat('h:mm a').format(DateTime.now()), // H:MM A
  date: DateFormat.yMMMd().format(DateTime.now()),
  locationRange: 5,
  messageTitle: 'Let’s do a costal cleanup!',
  messageDescription:
      "🏖️ Join us for a Coastal Cleanup Day! Together, we can make our beaches cleaner and healthier for all. 🌊 Let's protect our oceans and preserve the beauty of our coastal communities. Mark your calendar and be a part of the change! 🌎 #CoastalCleanup #EnvironmentalAction #CleanSeas",
  postImages: [
    'assets/images/posts/post_image4.png',
    'assets/images/posts/post_image5.png',
    'assets/images/posts/post_image6.png',
    'assets/images/posts/post_image7.png',
  ],
  // --------------------- Comments ------------------------
  postComments: [
    Comment(
      profile: Profile(
        id: 3,
        name: 'Lionel Messi',
        profileAvatar: 'assets/images/profile/user_profile.jpeg',
        followers: [
          Profile(
            id: 0,
            name: 'Dominic Osorio',
            profileAvatar: 'assets/images/profile/profile1.png',
          ),
          Profile(
            id: 1,
            name: 'Henry Yap Three',
            profileAvatar: 'assets/images/profile/profile6.png',
          ),
          Profile(
            id: 2,
            name: 'Anakin Vader',
            profileAvatar: 'assets/images/profile/profile7.png',
          ),
        ],
        following: [
          Profile(
            id: 5,
            name: 'Carlos Sainz',
            profileAvatar: 'assets/images/profile/profile3.png',
          ),
          Profile(
            id: 6,
            name: 'Bill Zamora',
            profileAvatar: 'assets/images/profile/profile4.png',
          ),
          Profile(
            id: 7,
            name: 'Cinate Rica',
            profileAvatar: 'assets/images/profile/profile2.png',
          ),
        ],
        posts: [
          Post(
            id: 2,
            profile: Profile(
              id: 3,
              name: 'Lionel Messi',
              profileAvatar: 'assets/images/profile/user_profile.jpeg',
            ),
            time: DateFormat('h:mm a').format(DateTime.now()), // H:MM A
            date: DateFormat.yMMMd().format(DateTime.now()),
            locationRange: 5,
            messageTitle: 'Keep up the good work, Talaytay FC!',
            messageDescription:
                "It's great to see organizations like Talaytay FC taking action on climate change! Let's keep the momentum going and inspire others to join the cause. Together, we can make a real impact in the fight against climate change. 🌍💚 #ClimateAction #TalaytayFC #ClimateChangeAwareness",
            postImages: [
              'assets/images/posts/post_image9.png',
            ],
          )
        ],
      ),
      comment:
          "Absolutely thrilled about the Coastal Cleanup Day initiative! 🏖️🌊 Joining forces to make our beaches cleaner and healthier reflects a collective commitment to environmental stewardship. Let's unite to protect our oceans and preserve the beauty of our coastal communities. Mark your calendar for this impactful event and be a part of the positive change we can achieve together! 🌎 #CoastalCleanup #EnvironmentalAction #CleanSeas #CommunityImpact 🤝",
    ),
    Comment(
      profile: Profile(
        id: 1,
        name: 'Henry Yap Three',
        profileAvatar: 'assets/images/profile/profile6.png',
        followers: [
          Profile(
            id: 0,
            name: 'Dominic Osorio',
            profileAvatar: 'assets/images/profile/profile1.png',
          ),
          Profile(
            id: 1,
            name: 'Henry Yap Three',
            profileAvatar: 'assets/images/profile/profile6.png',
          ),
          Profile(
            id: 2,
            name: 'Anakin Vader',
            profileAvatar: 'assets/images/profile/profile7.png',
          ),
        ],
        following: [
          Profile(
            id: 5,
            name: 'Carlos Sainz',
            profileAvatar: 'assets/images/profile/profile3.png',
          ),
          Profile(
            id: 6,
            name: 'Bill Zamora',
            profileAvatar: 'assets/images/profile/profile4.png',
          ),
          Profile(
            id: 7,
            name: 'Cinate Rica',
            profileAvatar: 'assets/images/profile/profile2.png',
          ),
        ],
        posts: [
          Post(
            id: 1,
            profile: Profile(
              id: 1,
              name: 'Henry Yap Three',
              profileAvatar: 'assets/images/profile/profile6.png',
            ),
            time: DateFormat('h:mm a').format(DateTime.now()), // H:MM A
            date: DateFormat.yMMMd().format(DateTime.now()),
            locationRange: 5,
            messageTitle: 'Let’s do a costal cleanup!',
            messageDescription:
                "🏖️ Join us for a Coastal Cleanup Day! Together, we can make our beaches cleaner and healthier for all. 🌊 Let's protect our oceans and preserve the beauty of our coastal communities. Mark your calendar and be a part of the change! 🌎 #CoastalCleanup #EnvironmentalAction #CleanSeas",
            postImages: [
              'assets/images/posts/post_image4.png',
              'assets/images/posts/post_image5.png',
              'assets/images/posts/post_image6.png',
              'assets/images/posts/post_image7.png',
            ],
          ),
        ],
      ),
      comment:
          "Excited to be part of the Coastal Cleanup Day! 🌊 Let's transform our beaches for the better. Your involvement can make a significant impact on preserving our coastal communities. Save the date and let's make waves for a cleaner, healthier environment! 🏖️🌎 #CoastalCleanup #CleanSeas #EnvironmentalResponsibility 🤝",
    ),
    Comment(
      profile: Profile(
        id: 2,
        name: 'Anakin Vader',
        profileAvatar: 'assets/images/profile/profile7.png',
        followers: [
          Profile(
            id: 0,
            name: 'Dominic Osorio',
            profileAvatar: 'assets/images/profile/profile1.png',
          ),
          Profile(
            id: 1,
            name: 'Henry Yap Three',
            profileAvatar: 'assets/images/profile/profile6.png',
          ),
          Profile(
            id: 2,
            name: 'Anakin Vader',
            profileAvatar: 'assets/images/profile/profile7.png',
          ),
        ],
        following: [
          Profile(
            id: 5,
            name: 'Carlos Sainz',
            profileAvatar: 'assets/images/profile/profile3.png',
          ),
          Profile(
            id: 6,
            name: 'Bill Zamora',
            profileAvatar: 'assets/images/profile/profile4.png',
          ),
          Profile(
            id: 7,
            name: 'Cinate Rica',
            profileAvatar: 'assets/images/profile/profile2.png',
          ),
        ],
        posts: [
          Post(
            id: 3,
            profile: Profile(
              id: 2,
              name: 'Anakin Vader',
              profileAvatar: 'assets/images/profile/profile7.png',
            ),
            time: DateFormat('h:mm a').format(DateTime.now()), // H:MM A
            date: DateFormat.yMMMd().format(DateTime.now()),
            locationRange: 5,
            messageTitle: 'What’s Cebu doing???',
            messageDescription:
                "Disheartened by the slow progress on climate action in Cebu. Let's raise our voices, demand change, and work together for a greener, sustainable future. We have the power to make a difference. 🌍💚 #ClimateAction #Cebu #TogetherForChange",
            postImages: [
              'assets/images/posts/post_image1.png',
              'assets/images/posts/post_image2.png',
              'assets/images/posts/post_image3.png',
            ],
          ),
        ],
      ),
      comment:
          "Absolutely thrilled about the Coastal Cleanup Day initiative! 🏖️Dive into action with us on Coastal Cleanup Day! 🌊 Join the movement for cleaner, healthier beaches. Together, we can make a lasting impact on our oceans and coastal communities. Save the date and be the change our environment needs! 🏖️🌍 #CoastalCleanup #SustainableLiving #ProtectOurOceans 🤝",
    ),
    Comment(
      profile: Profile(
        id: 4,
        name: 'Russy Fluffy',
        profileAvatar: 'assets/images/profile/profile5.png',
        followers: [
          Profile(
            id: 0,
            name: 'Dominic Osorio',
            profileAvatar: 'assets/images/profile/profile1.png',
          ),
          Profile(
            id: 1,
            name: 'Henry Yap Three',
            profileAvatar: 'assets/images/profile/profile6.png',
          ),
          Profile(
            id: 2,
            name: 'Anakin Vader',
            profileAvatar: 'assets/images/profile/profile7.png',
          ),
        ],
        following: [
          Profile(
            id: 5,
            name: 'Carlos Sainz',
            profileAvatar: 'assets/images/profile/profile3.png',
          ),
          Profile(
            id: 6,
            name: 'Bill Zamora',
            profileAvatar: 'assets/images/profile/profile4.png',
          ),
          Profile(
            id: 7,
            name: 'Cinate Rica',
            profileAvatar: 'assets/images/profile/profile2.png',
          ),
        ],
        posts: [
          Post.shared(
            id: 4,
            profile: Profile(
              id: 4,
              name: 'Russy Fluffy',
              profileAvatar: 'assets/images/profile/profile5.png',
            ),
            time: DateFormat('h:mm a').format(DateTime.now()),
            date: DateFormat.yMMMd().format(DateTime.now()),
            messageDescription:
                "Absolutely, we can't afford to wait any longer. It's time for our leaders to prioritize climate action and for all of us to take individual steps towards a more sustainable future.",
            sharedPost: Post(
              id: 3,
              profile: Profile(
                id: 2,
                name: 'Anakin Vader',
                profileAvatar: 'assets/images/profile/profile7.png',
              ),
              time: DateFormat('h:mm a').format(DateTime.now()), // H:MM A
              date: DateFormat.yMMMd().format(DateTime.now()),
              locationRange: 5,
              messageTitle: 'What’s Cebu doing???',
              messageDescription:
                  "Disheartened by the slow progress on climate action in Cebu. Let's raise our voices, demand change, and work together for a greener, sustainable future. We have the power to make a difference. 🌍💚 #ClimateAction #Cebu #TogetherForChange",
              postImages: [
                'assets/images/posts/post_image1.png',
                'assets/images/posts/post_image2.png',
                'assets/images/posts/post_image3.png',
              ],
            ),
          ),
        ],
      ),
      comment:
          "In light of recent actions by the Argao LGU, it's imperative that our community engages in an open dialogue to address concerns that have arisen. The call for transparency and accountability underscores the importance of trust in the functioning of our local government. By fostering a culture of open communication, we pave the way for constructive solutions to emerge, ensuring that our collective voice is heard and acknowledged.",
    ),
    Comment(
      profile: Profile(
        id: 5,
        name: 'Carlos Sainz',
        profileAvatar: 'assets/images/profile/profile3.png',
        followers: [
          Profile(
            id: 0,
            name: 'Dominic Osorio',
            profileAvatar: 'assets/images/profile/profile1.png',
          ),
          Profile(
            id: 1,
            name: 'Henry Yap Three',
            profileAvatar: 'assets/images/profile/profile6.png',
          ),
          Profile(
            id: 2,
            name: 'Anakin Vader',
            profileAvatar: 'assets/images/profile/profile7.png',
          ),
        ],
        following: [
          Profile(
            id: 5,
            name: 'Carlos Sainz',
            profileAvatar: 'assets/images/profile/profile3.png',
          ),
          Profile(
            id: 6,
            name: 'Bill Zamora',
            profileAvatar: 'assets/images/profile/profile4.png',
          ),
          Profile(
            id: 7,
            name: 'Cinate Rica',
            profileAvatar: 'assets/images/profile/profile2.png',
          ),
        ],
        posts: [
          Post.shared(
            id: 5,
            profile: Profile(
              id: 5,
              name: 'Carlos Sainz',
              profileAvatar: 'assets/images/profile/profile3.png',
            ),
            time: DateFormat('h:mm a').format(DateTime.now()),
            date: DateFormat.yMMMd().format(DateTime.now()),
            messageDescription:
                "Climate change is a pressing issue, and it affects us right here in Cebu. Rising sea levels, extreme weather events, and threats to our local ecosystems are all signs that we must act now. We need our local leaders to implement policies that promote clean energy, reduce emissions, and protect our natural resources. But it's not just up to them; as individuals, we can also make a difference through our daily choices. Every small effort counts, from reducing single-use plastic to conserving water and energy. Together, we can create a more resilient and sustainable future for our beautiful Cebu. 🌊🌏 #CebuClimateAction #SustainableLiving #ActOnClimate",
            sharedPost: Post(
              id: 3,
              profile: Profile(
                id: 2,
                name: 'Anakin Vader',
                profileAvatar: 'assets/images/profile/profile7.png',
              ),
              time: DateFormat('h:mm a').format(DateTime.now()), // H:MM A
              date: DateFormat.yMMMd().format(DateTime.now()),
              locationRange: 5,
              messageTitle: 'What’s Cebu doing???',
              messageDescription:
                  "Disheartened by the slow progress on climate action in Cebu. Let's raise our voices, demand change, and work together for a greener, sustainable future. We have the power to make a difference. 🌍💚 #ClimateAction #Cebu #TogetherForChange",
              postImages: [
                'assets/images/posts/post_image1.png',
                'assets/images/posts/post_image2.png',
                'assets/images/posts/post_image3.png',
              ],
            ),
          ),
        ],
      ),
      comment:
          "Let's harness the power of our collective voice to ensure that our concerns are not only heard but also translated into meaningful actions. Through collaborative efforts, we can contribute to a more responsive, transparent, and accountable Argao LGU, laying the foundation for a stronger and more resilient community. 🌐🤝 #ArgaoLGU #BuildingTrust #ActiveCitizenship",
    ),
  ],
);

Post post2 = Post(
  id: 2,
  profile: Profile(
    id: 3,
    name: 'Lionel Messi',
    profileAvatar: 'assets/images/profile/user_profile.jpeg',
    followers: [
      Profile(
        id: 0,
        name: 'Dominic Osorio',
        profileAvatar: 'assets/images/profile/profile1.png',
      ),
      Profile(
        id: 1,
        name: 'Henry Yap Three',
        profileAvatar: 'assets/images/profile/profile6.png',
      ),
      Profile(
        id: 2,
        name: 'Anakin Vader',
        profileAvatar: 'assets/images/profile/profile7.png',
      ),
    ],
    following: [
      Profile(
        id: 5,
        name: 'Carlos Sainz',
        profileAvatar: 'assets/images/profile/profile3.png',
      ),
      Profile(
        id: 6,
        name: 'Bill Zamora',
        profileAvatar: 'assets/images/profile/profile4.png',
      ),
      Profile(
        id: 7,
        name: 'Cinate Rica',
        profileAvatar: 'assets/images/profile/profile2.png',
      ),
    ],
    posts: [
      Post(
        id: 2,
        profile: Profile(
          id: 3,
          name: 'Lionel Messi',
          profileAvatar: 'assets/images/profile/user_profile.jpeg',
        ),
        time: DateFormat('h:mm a').format(DateTime.now()), // H:MM A
        date: DateFormat.yMMMd().format(DateTime.now()),
        locationRange: 5,
        messageTitle: 'Keep up the good work, Talaytay FC!',
        messageDescription:
            "It's great to see organizations like Talaytay FC taking action on climate change! Let's keep the momentum going and inspire others to join the cause. Together, we can make a real impact in the fight against climate change. 🌍💚 #ClimateAction #TalaytayFC #ClimateChangeAwareness",
        postImages: [
          'assets/images/posts/post_image9.png',
        ],
      )
    ],
  ),
  time: DateFormat('h:mm a').format(DateTime.now()), // H:MM A
  date: DateFormat.yMMMd().format(DateTime.now()),
  locationRange: 5,
  messageTitle: 'Keep up the good work, Talaytay FC!',
  messageDescription:
      "It's great to see organizations like Talaytay FC taking action on climate change! Let's keep the momentum going and inspire others to join the cause. Together, we can make a real impact in the fight against climate change. 🌍💚 #ClimateAction #TalaytayFC #ClimateChangeAwareness",
  postImages: [
    'assets/images/posts/post_image9.png',
  ],
  // --------------------- Comments ------------------------
  postComments: [
    Comment(
      profile: Profile(
        id: 3,
        name: 'Lionel Messi',
        profileAvatar: 'assets/images/profile/user_profile.jpeg',
      ),
      comment:
          "Absolutely thrilled about the Coastal Cleanup Day initiative! 🏖️🌊 Joining forces to make our beaches cleaner and healthier reflects a collective commitment to environmental stewardship. Let's unite to protect our oceans and preserve the beauty of our coastal communities. Mark your calendar for this impactful event and be a part of the positive change we can achieve together! 🌎 #CoastalCleanup #EnvironmentalAction #CleanSeas #CommunityImpact 🤝",
    ),
    Comment(
      profile: Profile(
        id: 1,
        name: 'Henry Yap Three',
        profileAvatar: 'assets/images/profile/profile6.png',
        followers: [
          Profile(
            id: 0,
            name: 'Dominic Osorio',
            profileAvatar: 'assets/images/profile/profile1.png',
          ),
          Profile(
            id: 1,
            name: 'Henry Yap Three',
            profileAvatar: 'assets/images/profile/profile6.png',
          ),
          Profile(
            id: 2,
            name: 'Anakin Vader',
            profileAvatar: 'assets/images/profile/profile7.png',
          ),
        ],
        following: [
          Profile(
            id: 5,
            name: 'Carlos Sainz',
            profileAvatar: 'assets/images/profile/profile3.png',
          ),
          Profile(
            id: 6,
            name: 'Bill Zamora',
            profileAvatar: 'assets/images/profile/profile4.png',
          ),
          Profile(
            id: 7,
            name: 'Cinate Rica',
            profileAvatar: 'assets/images/profile/profile2.png',
          ),
        ],
        posts: [
          Post(
            id: 1,
            profile: Profile(
              id: 1,
              name: 'Henry Yap Three',
              profileAvatar: 'assets/images/profile/profile6.png',
            ),
            time: DateFormat('h:mm a').format(DateTime.now()), // H:MM A
            date: DateFormat.yMMMd().format(DateTime.now()),
            locationRange: 5,
            messageTitle: 'Let’s do a costal cleanup!',
            messageDescription:
                "🏖️ Join us for a Coastal Cleanup Day! Together, we can make our beaches cleaner and healthier for all. 🌊 Let's protect our oceans and preserve the beauty of our coastal communities. Mark your calendar and be a part of the change! 🌎 #CoastalCleanup #EnvironmentalAction #CleanSeas",
            postImages: [
              'assets/images/posts/post_image4.png',
              'assets/images/posts/post_image5.png',
              'assets/images/posts/post_image6.png',
              'assets/images/posts/post_image7.png',
            ],
          ),
        ],
      ),
      comment:
          "Excited to be part of the Coastal Cleanup Day! 🌊 Let's transform our beaches for the better. Your involvement can make a significant impact on preserving our coastal communities. Save the date and let's make waves for a cleaner, healthier environment! 🏖️🌎 #CoastalCleanup #CleanSeas #EnvironmentalResponsibility 🤝",
    ),
    Comment(
      profile: Profile(
        id: 2,
        name: 'Anakin Vader',
        profileAvatar: 'assets/images/profile/profile7.png',
        followers: [
          Profile(
            id: 0,
            name: 'Dominic Osorio',
            profileAvatar: 'assets/images/profile/profile1.png',
          ),
          Profile(
            id: 1,
            name: 'Henry Yap Three',
            profileAvatar: 'assets/images/profile/profile6.png',
          ),
          Profile(
            id: 2,
            name: 'Anakin Vader',
            profileAvatar: 'assets/images/profile/profile7.png',
          ),
        ],
        following: [
          Profile(
            id: 5,
            name: 'Carlos Sainz',
            profileAvatar: 'assets/images/profile/profile3.png',
          ),
          Profile(
            id: 6,
            name: 'Bill Zamora',
            profileAvatar: 'assets/images/profile/profile4.png',
          ),
          Profile(
            id: 7,
            name: 'Cinate Rica',
            profileAvatar: 'assets/images/profile/profile2.png',
          ),
        ],
        posts: [
          Post(
            id: 3,
            profile: Profile(
              id: 2,
              name: 'Anakin Vader',
              profileAvatar: 'assets/images/profile/profile7.png',
            ),
            time: DateFormat('h:mm a').format(DateTime.now()), // H:MM A
            date: DateFormat.yMMMd().format(DateTime.now()),
            locationRange: 5,
            messageTitle: 'What’s Cebu doing???',
            messageDescription:
                "Disheartened by the slow progress on climate action in Cebu. Let's raise our voices, demand change, and work together for a greener, sustainable future. We have the power to make a difference. 🌍💚 #ClimateAction #Cebu #TogetherForChange",
            postImages: [
              'assets/images/posts/post_image1.png',
              'assets/images/posts/post_image2.png',
              'assets/images/posts/post_image3.png',
            ],
          ),
        ],
      ),
      comment:
          "Absolutely thrilled about the Coastal Cleanup Day initiative! 🏖️Dive into action with us on Coastal Cleanup Day! 🌊 Join the movement for cleaner, healthier beaches. Together, we can make a lasting impact on our oceans and coastal communities. Save the date and be the change our environment needs! 🏖️🌍 #CoastalCleanup #SustainableLiving #ProtectOurOceans 🤝",
    ),
    Comment(
      profile: Profile(
        id: 4,
        name: 'Russy Fluffy',
        profileAvatar: 'assets/images/profile/profile5.png',
        followers: [
          Profile(
            id: 0,
            name: 'Dominic Osorio',
            profileAvatar: 'assets/images/profile/profile1.png',
          ),
          Profile(
            id: 1,
            name: 'Henry Yap Three',
            profileAvatar: 'assets/images/profile/profile6.png',
          ),
          Profile(
            id: 2,
            name: 'Anakin Vader',
            profileAvatar: 'assets/images/profile/profile7.png',
          ),
        ],
        following: [
          Profile(
            id: 5,
            name: 'Carlos Sainz',
            profileAvatar: 'assets/images/profile/profile3.png',
          ),
          Profile(
            id: 6,
            name: 'Bill Zamora',
            profileAvatar: 'assets/images/profile/profile4.png',
          ),
          Profile(
            id: 7,
            name: 'Cinate Rica',
            profileAvatar: 'assets/images/profile/profile2.png',
          ),
        ],
        posts: [
          Post.shared(
            id: 4,
            profile: Profile(
              id: 4,
              name: 'Russy Fluffy',
              profileAvatar: 'assets/images/profile/profile5.png',
            ),
            time: DateFormat('h:mm a').format(DateTime.now()),
            date: DateFormat.yMMMd().format(DateTime.now()),
            messageDescription:
                "Absolutely, we can't afford to wait any longer. It's time for our leaders to prioritize climate action and for all of us to take individual steps towards a more sustainable future.",
            sharedPost: Post(
              id: 3,
              profile: Profile(
                id: 2,
                name: 'Anakin Vader',
                profileAvatar: 'assets/images/profile/profile7.png',
              ),
              time: DateFormat('h:mm a').format(DateTime.now()), // H:MM A
              date: DateFormat.yMMMd().format(DateTime.now()),
              locationRange: 5,
              messageTitle: 'What’s Cebu doing???',
              messageDescription:
                  "Disheartened by the slow progress on climate action in Cebu. Let's raise our voices, demand change, and work together for a greener, sustainable future. We have the power to make a difference. 🌍💚 #ClimateAction #Cebu #TogetherForChange",
              postImages: [
                'assets/images/posts/post_image1.png',
                'assets/images/posts/post_image2.png',
                'assets/images/posts/post_image3.png',
              ],
            ),
          ),
        ],
      ),
      comment:
          "In light of recent actions by the Argao LGU, it's imperative that our community engages in an open dialogue to address concerns that have arisen. The call for transparency and accountability underscores the importance of trust in the functioning of our local government. By fostering a culture of open communication, we pave the way for constructive solutions to emerge, ensuring that our collective voice is heard and acknowledged.",
    ),
    Comment(
      profile: Profile(
        id: 5,
        name: 'Carlos Sainz',
        profileAvatar: 'assets/images/profile/profile3.png',
        followers: [
          Profile(
            id: 0,
            name: 'Dominic Osorio',
            profileAvatar: 'assets/images/profile/profile1.png',
          ),
          Profile(
            id: 1,
            name: 'Henry Yap Three',
            profileAvatar: 'assets/images/profile/profile6.png',
          ),
          Profile(
            id: 2,
            name: 'Anakin Vader',
            profileAvatar: 'assets/images/profile/profile7.png',
          ),
        ],
        following: [
          Profile(
            id: 5,
            name: 'Carlos Sainz',
            profileAvatar: 'assets/images/profile/profile3.png',
          ),
          Profile(
            id: 6,
            name: 'Bill Zamora',
            profileAvatar: 'assets/images/profile/profile4.png',
          ),
          Profile(
            id: 7,
            name: 'Cinate Rica',
            profileAvatar: 'assets/images/profile/profile2.png',
          ),
        ],
        posts: [
          Post.shared(
            id: 5,
            profile: Profile(
              id: 5,
              name: 'Carlos Sainz',
              profileAvatar: 'assets/images/profile/profile3.png',
            ),
            time: DateFormat('h:mm a').format(DateTime.now()),
            date: DateFormat.yMMMd().format(DateTime.now()),
            messageDescription:
                "Climate change is a pressing issue, and it affects us right here in Cebu. Rising sea levels, extreme weather events, and threats to our local ecosystems are all signs that we must act now. We need our local leaders to implement policies that promote clean energy, reduce emissions, and protect our natural resources. But it's not just up to them; as individuals, we can also make a difference through our daily choices. Every small effort counts, from reducing single-use plastic to conserving water and energy. Together, we can create a more resilient and sustainable future for our beautiful Cebu. 🌊🌏 #CebuClimateAction #SustainableLiving #ActOnClimate",
            sharedPost: Post(
              id: 3,
              profile: Profile(
                id: 2,
                name: 'Anakin Vader',
                profileAvatar: 'assets/images/profile/profile7.png',
              ),
              time: DateFormat('h:mm a').format(DateTime.now()), // H:MM A
              date: DateFormat.yMMMd().format(DateTime.now()),
              locationRange: 5,
              messageTitle: 'What’s Cebu doing???',
              messageDescription:
                  "Disheartened by the slow progress on climate action in Cebu. Let's raise our voices, demand change, and work together for a greener, sustainable future. We have the power to make a difference. 🌍💚 #ClimateAction #Cebu #TogetherForChange",
              postImages: [
                'assets/images/posts/post_image1.png',
                'assets/images/posts/post_image2.png',
                'assets/images/posts/post_image3.png',
              ],
            ),
          ),
        ],
      ),
      comment:
          "Let's harness the power of our collective voice to ensure that our concerns are not only heard but also translated into meaningful actions. Through collaborative efforts, we can contribute to a more responsive, transparent, and accountable Argao LGU, laying the foundation for a stronger and more resilient community. 🌐🤝 #ArgaoLGU #BuildingTrust #ActiveCitizenship",
    ),
  ],
);

Post post3 = Post(
  id: 3,
  profile: Profile(
    id: 2,
    name: 'Anakin Vader',
    profileAvatar: 'assets/images/profile/profile7.png',
    followers: [
      Profile(
        id: 0,
        name: 'Dominic Osorio',
        profileAvatar: 'assets/images/profile/profile1.png',
      ),
      Profile(
        id: 1,
        name: 'Henry Yap Three',
        profileAvatar: 'assets/images/profile/profile6.png',
      ),
      Profile(
        id: 2,
        name: 'Anakin Vader',
        profileAvatar: 'assets/images/profile/profile7.png',
      ),
    ],
    following: [
      Profile(
        id: 5,
        name: 'Carlos Sainz',
        profileAvatar: 'assets/images/profile/profile3.png',
      ),
      Profile(
        id: 6,
        name: 'Bill Zamora',
        profileAvatar: 'assets/images/profile/profile4.png',
      ),
      Profile(
        id: 7,
        name: 'Cinate Rica',
        profileAvatar: 'assets/images/profile/profile2.png',
      ),
    ],
    posts: [
      Post(
        id: 3,
        profile: Profile(
          id: 2,
          name: 'Anakin Vader',
          profileAvatar: 'assets/images/profile/profile7.png',
        ),
        time: DateFormat('h:mm a').format(DateTime.now()), // H:MM A
        date: DateFormat.yMMMd().format(DateTime.now()),
        locationRange: 5,
        messageTitle: 'What’s Cebu doing???',
        messageDescription:
            "Disheartened by the slow progress on climate action in Cebu. Let's raise our voices, demand change, and work together for a greener, sustainable future. We have the power to make a difference. 🌍💚 #ClimateAction #Cebu #TogetherForChange",
        postImages: [
          'assets/images/posts/post_image1.png',
          'assets/images/posts/post_image2.png',
          'assets/images/posts/post_image3.png',
        ],
      ),
    ],
  ),
  time: DateFormat('h:mm a').format(DateTime.now()), // H:MM A
  date: DateFormat.yMMMd().format(DateTime.now()),
  locationRange: 5,
  messageTitle: 'What’s Cebu doing???',
  messageDescription:
      "Disheartened by the slow progress on climate action in Cebu. Let's raise our voices, demand change, and work together for a greener, sustainable future. We have the power to make a difference. 🌍💚 #ClimateAction #Cebu #TogetherForChange",
  postImages: [
    'assets/images/posts/post_image1.png',
    'assets/images/posts/post_image2.png',
    'assets/images/posts/post_image3.png',
  ],
  // --------------------- Comments ------------------------
  postComments: [
    Comment(
      profile: Profile(
        id: 3,
        name: 'Lionel Messi',
        profileAvatar: 'assets/images/profile/user_profile.jpeg',
        followers: [
          Profile(
            id: 0,
            name: 'Dominic Osorio',
            profileAvatar: 'assets/images/profile/profile1.png',
          ),
          Profile(
            id: 1,
            name: 'Henry Yap Three',
            profileAvatar: 'assets/images/profile/profile6.png',
          ),
          Profile(
            id: 2,
            name: 'Anakin Vader',
            profileAvatar: 'assets/images/profile/profile7.png',
          ),
        ],
        following: [
          Profile(
            id: 5,
            name: 'Carlos Sainz',
            profileAvatar: 'assets/images/profile/profile3.png',
          ),
          Profile(
            id: 6,
            name: 'Bill Zamora',
            profileAvatar: 'assets/images/profile/profile4.png',
          ),
          Profile(
            id: 7,
            name: 'Cinate Rica',
            profileAvatar: 'assets/images/profile/profile2.png',
          ),
        ],
        posts: [
          Post(
            id: 2,
            profile: Profile(
              id: 3,
              name: 'Lionel Messi',
              profileAvatar: 'assets/images/profile/user_profile.jpeg',
            ),
            time: DateFormat('h:mm a').format(DateTime.now()), // H:MM A
            date: DateFormat.yMMMd().format(DateTime.now()),
            locationRange: 5,
            messageTitle: 'Keep up the good work, Talaytay FC!',
            messageDescription:
                "It's great to see organizations like Talaytay FC taking action on climate change! Let's keep the momentum going and inspire others to join the cause. Together, we can make a real impact in the fight against climate change. 🌍💚 #ClimateAction #TalaytayFC #ClimateChangeAwareness",
            postImages: [
              'assets/images/posts/post_image9.png',
            ],
          )
        ],
      ),
      comment:
          "Absolutely thrilled about the Coastal Cleanup Day initiative! 🏖️🌊 Joining forces to make our beaches cleaner and healthier reflects a collective commitment to environmental stewardship. Let's unite to protect our oceans and preserve the beauty of our coastal communities. Mark your calendar for this impactful event and be a part of the positive change we can achieve together! 🌎 #CoastalCleanup #EnvironmentalAction #CleanSeas #CommunityImpact 🤝",
    ),
    Comment(
      profile: Profile(
        id: 1,
        name: 'Henry Yap Three',
        profileAvatar: 'assets/images/profile/profile6.png',
        followers: [
          Profile(
            id: 0,
            name: 'Dominic Osorio',
            profileAvatar: 'assets/images/profile/profile1.png',
          ),
          Profile(
            id: 1,
            name: 'Henry Yap Three',
            profileAvatar: 'assets/images/profile/profile6.png',
          ),
          Profile(
            id: 2,
            name: 'Anakin Vader',
            profileAvatar: 'assets/images/profile/profile7.png',
          ),
        ],
        following: [
          Profile(
            id: 5,
            name: 'Carlos Sainz',
            profileAvatar: 'assets/images/profile/profile3.png',
          ),
          Profile(
            id: 6,
            name: 'Bill Zamora',
            profileAvatar: 'assets/images/profile/profile4.png',
          ),
          Profile(
            id: 7,
            name: 'Cinate Rica',
            profileAvatar: 'assets/images/profile/profile2.png',
          ),
        ],
        posts: [
          Post(
            id: 1,
            profile: Profile(
              id: 1,
              name: 'Henry Yap Three',
              profileAvatar: 'assets/images/profile/profile6.png',
            ),
            time: DateFormat('h:mm a').format(DateTime.now()), // H:MM A
            date: DateFormat.yMMMd().format(DateTime.now()),
            locationRange: 5,
            messageTitle: 'Let’s do a costal cleanup!',
            messageDescription:
                "🏖️ Join us for a Coastal Cleanup Day! Together, we can make our beaches cleaner and healthier for all. 🌊 Let's protect our oceans and preserve the beauty of our coastal communities. Mark your calendar and be a part of the change! 🌎 #CoastalCleanup #EnvironmentalAction #CleanSeas",
            postImages: [
              'assets/images/posts/post_image4.png',
              'assets/images/posts/post_image5.png',
              'assets/images/posts/post_image6.png',
              'assets/images/posts/post_image7.png',
            ],
          ),
        ],
      ),
      comment:
          "Excited to be part of the Coastal Cleanup Day! 🌊 Let's transform our beaches for the better. Your involvement can make a significant impact on preserving our coastal communities. Save the date and let's make waves for a cleaner, healthier environment! 🏖️🌎 #CoastalCleanup #CleanSeas #EnvironmentalResponsibility 🤝",
    ),
    Comment(
      profile: Profile(
        id: 2,
        name: 'Anakin Vader',
        profileAvatar: 'assets/images/profile/profile7.png',
        followers: [
          Profile(
            id: 0,
            name: 'Dominic Osorio',
            profileAvatar: 'assets/images/profile/profile1.png',
          ),
          Profile(
            id: 1,
            name: 'Henry Yap Three',
            profileAvatar: 'assets/images/profile/profile6.png',
          ),
          Profile(
            id: 2,
            name: 'Anakin Vader',
            profileAvatar: 'assets/images/profile/profile7.png',
          ),
        ],
        following: [
          Profile(
            id: 5,
            name: 'Carlos Sainz',
            profileAvatar: 'assets/images/profile/profile3.png',
          ),
          Profile(
            id: 6,
            name: 'Bill Zamora',
            profileAvatar: 'assets/images/profile/profile4.png',
          ),
          Profile(
            id: 7,
            name: 'Cinate Rica',
            profileAvatar: 'assets/images/profile/profile2.png',
          ),
        ],
        posts: [
          Post(
            id: 3,
            profile: Profile(
              id: 2,
              name: 'Anakin Vader',
              profileAvatar: 'assets/images/profile/profile7.png',
            ),
            time: DateFormat('h:mm a').format(DateTime.now()), // H:MM A
            date: DateFormat.yMMMd().format(DateTime.now()),
            locationRange: 5,
            messageTitle: 'What’s Cebu doing???',
            messageDescription:
                "Disheartened by the slow progress on climate action in Cebu. Let's raise our voices, demand change, and work together for a greener, sustainable future. We have the power to make a difference. 🌍💚 #ClimateAction #Cebu #TogetherForChange",
            postImages: [
              'assets/images/posts/post_image1.png',
              'assets/images/posts/post_image2.png',
              'assets/images/posts/post_image3.png',
            ],
          ),
        ],
      ),
      comment:
          "Absolutely thrilled about the Coastal Cleanup Day initiative! 🏖️Dive into action with us on Coastal Cleanup Day! 🌊 Join the movement for cleaner, healthier beaches. Together, we can make a lasting impact on our oceans and coastal communities. Save the date and be the change our environment needs! 🏖️🌍 #CoastalCleanup #SustainableLiving #ProtectOurOceans 🤝",
    ),
    Comment(
      profile: Profile(
        id: 4,
        name: 'Russy Fluffy',
        profileAvatar: 'assets/images/profile/profile5.png',
        followers: [
          Profile(
            id: 0,
            name: 'Dominic Osorio',
            profileAvatar: 'assets/images/profile/profile1.png',
          ),
          Profile(
            id: 1,
            name: 'Henry Yap Three',
            profileAvatar: 'assets/images/profile/profile6.png',
          ),
          Profile(
            id: 2,
            name: 'Anakin Vader',
            profileAvatar: 'assets/images/profile/profile7.png',
          ),
        ],
        following: [
          Profile(
            id: 5,
            name: 'Carlos Sainz',
            profileAvatar: 'assets/images/profile/profile3.png',
          ),
          Profile(
            id: 6,
            name: 'Bill Zamora',
            profileAvatar: 'assets/images/profile/profile4.png',
          ),
          Profile(
            id: 7,
            name: 'Cinate Rica',
            profileAvatar: 'assets/images/profile/profile2.png',
          ),
        ],
        posts: [
          Post.shared(
            id: 4,
            profile: Profile(
              id: 4,
              name: 'Russy Fluffy',
              profileAvatar: 'assets/images/profile/profile5.png',
            ),
            time: DateFormat('h:mm a').format(DateTime.now()),
            date: DateFormat.yMMMd().format(DateTime.now()),
            messageDescription:
                "Absolutely, we can't afford to wait any longer. It's time for our leaders to prioritize climate action and for all of us to take individual steps towards a more sustainable future.",
            sharedPost: Post(
              id: 3,
              profile: Profile(
                id: 2,
                name: 'Anakin Vader',
                profileAvatar: 'assets/images/profile/profile7.png',
              ),
              time: DateFormat('h:mm a').format(DateTime.now()), // H:MM A
              date: DateFormat.yMMMd().format(DateTime.now()),
              locationRange: 5,
              messageTitle: 'What’s Cebu doing???',
              messageDescription:
                  "Disheartened by the slow progress on climate action in Cebu. Let's raise our voices, demand change, and work together for a greener, sustainable future. We have the power to make a difference. 🌍💚 #ClimateAction #Cebu #TogetherForChange",
              postImages: [
                'assets/images/posts/post_image1.png',
                'assets/images/posts/post_image2.png',
                'assets/images/posts/post_image3.png',
              ],
            ),
          ),
        ],
      ),
      comment:
          "In light of recent actions by the Argao LGU, it's imperative that our community engages in an open dialogue to address concerns that have arisen. The call for transparency and accountability underscores the importance of trust in the functioning of our local government. By fostering a culture of open communication, we pave the way for constructive solutions to emerge, ensuring that our collective voice is heard and acknowledged.",
    ),
    Comment(
      profile: Profile(
        id: 5,
        name: 'Carlos Sainz',
        profileAvatar: 'assets/images/profile/profile3.png',
        followers: [
          Profile(
            id: 0,
            name: 'Dominic Osorio',
            profileAvatar: 'assets/images/profile/profile1.png',
          ),
          Profile(
            id: 1,
            name: 'Henry Yap Three',
            profileAvatar: 'assets/images/profile/profile6.png',
          ),
          Profile(
            id: 2,
            name: 'Anakin Vader',
            profileAvatar: 'assets/images/profile/profile7.png',
          ),
        ],
        following: [
          Profile(
            id: 5,
            name: 'Carlos Sainz',
            profileAvatar: 'assets/images/profile/profile3.png',
          ),
          Profile(
            id: 6,
            name: 'Bill Zamora',
            profileAvatar: 'assets/images/profile/profile4.png',
          ),
          Profile(
            id: 7,
            name: 'Cinate Rica',
            profileAvatar: 'assets/images/profile/profile2.png',
          ),
        ],
        posts: [
          Post.shared(
            id: 5,
            profile: Profile(
              id: 5,
              name: 'Carlos Sainz',
              profileAvatar: 'assets/images/profile/profile3.png',
            ),
            time: DateFormat('h:mm a').format(DateTime.now()),
            date: DateFormat.yMMMd().format(DateTime.now()),
            messageDescription:
                "Climate change is a pressing issue, and it affects us right here in Cebu. Rising sea levels, extreme weather events, and threats to our local ecosystems are all signs that we must act now. We need our local leaders to implement policies that promote clean energy, reduce emissions, and protect our natural resources. But it's not just up to them; as individuals, we can also make a difference through our daily choices. Every small effort counts, from reducing single-use plastic to conserving water and energy. Together, we can create a more resilient and sustainable future for our beautiful Cebu. 🌊🌏 #CebuClimateAction #SustainableLiving #ActOnClimate",
            sharedPost: Post(
              id: 3,
              profile: Profile(
                id: 2,
                name: 'Anakin Vader',
                profileAvatar: 'assets/images/profile/profile7.png',
              ),
              time: DateFormat('h:mm a').format(DateTime.now()), // H:MM A
              date: DateFormat.yMMMd().format(DateTime.now()),
              locationRange: 5,
              messageTitle: 'What’s Cebu doing???',
              messageDescription:
                  "Disheartened by the slow progress on climate action in Cebu. Let's raise our voices, demand change, and work together for a greener, sustainable future. We have the power to make a difference. 🌍💚 #ClimateAction #Cebu #TogetherForChange",
              postImages: [
                'assets/images/posts/post_image1.png',
                'assets/images/posts/post_image2.png',
                'assets/images/posts/post_image3.png',
              ],
            ),
          ),
        ],
      ),
      comment:
          "Let's harness the power of our collective voice to ensure that our concerns are not only heard but also translated into meaningful actions. Through collaborative efforts, we can contribute to a more responsive, transparent, and accountable Argao LGU, laying the foundation for a stronger and more resilient community. 🌐🤝 #ArgaoLGU #BuildingTrust #ActiveCitizenship",
    ),
  ],
);

Post post4 = Post.shared(
  id: 4,
  profile: Profile(
    id: 4,
    name: 'Russy Fluffy',
    profileAvatar: 'assets/images/profile/profile5.png',
    followers: [
      Profile(
        id: 0,
        name: 'Dominic Osorio',
        profileAvatar: 'assets/images/profile/profile1.png',
      ),
      Profile(
        id: 1,
        name: 'Henry Yap Three',
        profileAvatar: 'assets/images/profile/profile6.png',
      ),
      Profile(
        id: 2,
        name: 'Anakin Vader',
        profileAvatar: 'assets/images/profile/profile7.png',
      ),
    ],
    following: [
      Profile(
        id: 5,
        name: 'Carlos Sainz',
        profileAvatar: 'assets/images/profile/profile3.png',
      ),
      Profile(
        id: 6,
        name: 'Bill Zamora',
        profileAvatar: 'assets/images/profile/profile4.png',
      ),
      Profile(
        id: 7,
        name: 'Cinate Rica',
        profileAvatar: 'assets/images/profile/profile2.png',
      ),
    ],
    posts: [
      Post.shared(
        id: 4,
        profile: Profile(
          id: 4,
          name: 'Russy Fluffy',
          profileAvatar: 'assets/images/profile/profile5.png',
        ),
        time: DateFormat('h:mm a').format(DateTime.now()),
        date: DateFormat.yMMMd().format(DateTime.now()),
        messageDescription:
            "Absolutely, we can't afford to wait any longer. It's time for our leaders to prioritize climate action and for all of us to take individual steps towards a more sustainable future.",
        sharedPost: Post(
          id: 3,
          profile: Profile(
            id: 2,
            name: 'Anakin Vader',
            profileAvatar: 'assets/images/profile/profile7.png',
          ),
          time: DateFormat('h:mm a').format(DateTime.now()), // H:MM A
          date: DateFormat.yMMMd().format(DateTime.now()),
          locationRange: 5,
          messageTitle: 'What’s Cebu doing???',
          messageDescription:
              "Disheartened by the slow progress on climate action in Cebu. Let's raise our voices, demand change, and work together for a greener, sustainable future. We have the power to make a difference. 🌍💚 #ClimateAction #Cebu #TogetherForChange",
          postImages: [
            'assets/images/posts/post_image1.png',
            'assets/images/posts/post_image2.png',
            'assets/images/posts/post_image3.png',
          ],
        ),
      ),
    ],
  ),
  time: DateFormat('h:mm a').format(DateTime.now()),
  date: DateFormat.yMMMd().format(DateTime.now()),
  messageDescription:
      "Absolutely, we can't afford to wait any longer. It's time for our leaders to prioritize climate action and for all of us to take individual steps towards a more sustainable future.",
  sharedPost: Post(
    id: 3,
    profile: Profile(
      id: 2,
      name: 'Anakin Vader',
      profileAvatar: 'assets/images/profile/profile7.png',
      followers: [
        Profile(
          id: 0,
          name: 'Dominic Osorio',
          profileAvatar: 'assets/images/profile/profile1.png',
        ),
        Profile(
          id: 1,
          name: 'Henry Yap Three',
          profileAvatar: 'assets/images/profile/profile6.png',
        ),
        Profile(
          id: 2,
          name: 'Anakin Vader',
          profileAvatar: 'assets/images/profile/profile7.png',
        ),
      ],
      following: [
        Profile(
          id: 5,
          name: 'Carlos Sainz',
          profileAvatar: 'assets/images/profile/profile3.png',
        ),
        Profile(
          id: 6,
          name: 'Bill Zamora',
          profileAvatar: 'assets/images/profile/profile4.png',
        ),
        Profile(
          id: 7,
          name: 'Cinate Rica',
          profileAvatar: 'assets/images/profile/profile2.png',
        ),
      ],
      posts: [
        Post(
          id: 3,
          profile: Profile(
            id: 2,
            name: 'Anakin Vader',
            profileAvatar: 'assets/images/profile/profile7.png',
          ),
          time: DateFormat('h:mm a').format(DateTime.now()), // H:MM A
          date: DateFormat.yMMMd().format(DateTime.now()),
          locationRange: 5,
          messageTitle: 'What’s Cebu doing???',
          messageDescription:
              "Disheartened by the slow progress on climate action in Cebu. Let's raise our voices, demand change, and work together for a greener, sustainable future. We have the power to make a difference. 🌍💚 #ClimateAction #Cebu #TogetherForChange",
          postImages: [
            'assets/images/posts/post_image1.png',
            'assets/images/posts/post_image2.png',
            'assets/images/posts/post_image3.png',
          ],
        ),
      ],
    ),
    time: DateFormat('h:mm a').format(DateTime.now()), // H:MM A
    date: DateFormat.yMMMd().format(DateTime.now()),
    locationRange: 5,
    messageTitle: 'What’s Cebu doing???',
    messageDescription:
        "Disheartened by the slow progress on climate action in Cebu. Let's raise our voices, demand change, and work together for a greener, sustainable future. We have the power to make a difference. 🌍💚 #ClimateAction #Cebu #TogetherForChange",
    postImages: [
      'assets/images/posts/post_image1.png',
      'assets/images/posts/post_image2.png',
      'assets/images/posts/post_image3.png',
    ],
  ),
  // --------------------- Comments ------------------------
  postComments: [
    Comment(
      profile: Profile(
        id: 3,
        name: 'Lionel Messi',
        profileAvatar: 'assets/images/profile/user_profile.jpeg',
        followers: [
          Profile(
            id: 0,
            name: 'Dominic Osorio',
            profileAvatar: 'assets/images/profile/profile1.png',
          ),
          Profile(
            id: 1,
            name: 'Henry Yap Three',
            profileAvatar: 'assets/images/profile/profile6.png',
          ),
          Profile(
            id: 2,
            name: 'Anakin Vader',
            profileAvatar: 'assets/images/profile/profile7.png',
          ),
        ],
        following: [
          Profile(
            id: 5,
            name: 'Carlos Sainz',
            profileAvatar: 'assets/images/profile/profile3.png',
          ),
          Profile(
            id: 6,
            name: 'Bill Zamora',
            profileAvatar: 'assets/images/profile/profile4.png',
          ),
          Profile(
            id: 7,
            name: 'Cinate Rica',
            profileAvatar: 'assets/images/profile/profile2.png',
          ),
        ],
        posts: [
          Post(
            id: 2,
            profile: Profile(
              id: 3,
              name: 'Lionel Messi',
              profileAvatar: 'assets/images/profile/user_profile.jpeg',
            ),
            time: DateFormat('h:mm a').format(DateTime.now()), // H:MM A
            date: DateFormat.yMMMd().format(DateTime.now()),
            locationRange: 5,
            messageTitle: 'Keep up the good work, Talaytay FC!',
            messageDescription:
                "It's great to see organizations like Talaytay FC taking action on climate change! Let's keep the momentum going and inspire others to join the cause. Together, we can make a real impact in the fight against climate change. 🌍💚 #ClimateAction #TalaytayFC #ClimateChangeAwareness",
            postImages: [
              'assets/images/posts/post_image9.png',
            ],
          )
        ],
      ),
      comment:
          "Absolutely thrilled about the Coastal Cleanup Day initiative! 🏖️🌊 Joining forces to make our beaches cleaner and healthier reflects a collective commitment to environmental stewardship. Let's unite to protect our oceans and preserve the beauty of our coastal communities. Mark your calendar for this impactful event and be a part of the positive change we can achieve together! 🌎 #CoastalCleanup #EnvironmentalAction #CleanSeas #CommunityImpact 🤝",
    ),
    Comment(
      profile: Profile(
        id: 1,
        name: 'Henry Yap Three',
        profileAvatar: 'assets/images/profile/profile6.png',
        followers: [
          Profile(
            id: 0,
            name: 'Dominic Osorio',
            profileAvatar: 'assets/images/profile/profile1.png',
          ),
          Profile(
            id: 1,
            name: 'Henry Yap Three',
            profileAvatar: 'assets/images/profile/profile6.png',
          ),
          Profile(
            id: 2,
            name: 'Anakin Vader',
            profileAvatar: 'assets/images/profile/profile7.png',
          ),
        ],
        following: [
          Profile(
            id: 5,
            name: 'Carlos Sainz',
            profileAvatar: 'assets/images/profile/profile3.png',
          ),
          Profile(
            id: 6,
            name: 'Bill Zamora',
            profileAvatar: 'assets/images/profile/profile4.png',
          ),
          Profile(
            id: 7,
            name: 'Cinate Rica',
            profileAvatar: 'assets/images/profile/profile2.png',
          ),
        ],
        posts: [
          Post(
            id: 1,
            profile: Profile(
              id: 1,
              name: 'Henry Yap Three',
              profileAvatar: 'assets/images/profile/profile6.png',
            ),
            time: DateFormat('h:mm a').format(DateTime.now()), // H:MM A
            date: DateFormat.yMMMd().format(DateTime.now()),
            locationRange: 5,
            messageTitle: 'Let’s do a costal cleanup!',
            messageDescription:
                "🏖️ Join us for a Coastal Cleanup Day! Together, we can make our beaches cleaner and healthier for all. 🌊 Let's protect our oceans and preserve the beauty of our coastal communities. Mark your calendar and be a part of the change! 🌎 #CoastalCleanup #EnvironmentalAction #CleanSeas",
            postImages: [
              'assets/images/posts/post_image4.png',
              'assets/images/posts/post_image5.png',
              'assets/images/posts/post_image6.png',
              'assets/images/posts/post_image7.png',
            ],
          ),
        ],
      ),
      comment:
          "Excited to be part of the Coastal Cleanup Day! 🌊 Let's transform our beaches for the better. Your involvement can make a significant impact on preserving our coastal communities. Save the date and let's make waves for a cleaner, healthier environment! 🏖️🌎 #CoastalCleanup #CleanSeas #EnvironmentalResponsibility 🤝",
    ),
    Comment(
      profile: Profile(
        id: 2,
        name: 'Anakin Vader',
        profileAvatar: 'assets/images/profile/profile7.png',
        followers: [
          Profile(
            id: 0,
            name: 'Dominic Osorio',
            profileAvatar: 'assets/images/profile/profile1.png',
          ),
          Profile(
            id: 1,
            name: 'Henry Yap Three',
            profileAvatar: 'assets/images/profile/profile6.png',
          ),
          Profile(
            id: 2,
            name: 'Anakin Vader',
            profileAvatar: 'assets/images/profile/profile7.png',
          ),
        ],
        following: [
          Profile(
            id: 5,
            name: 'Carlos Sainz',
            profileAvatar: 'assets/images/profile/profile3.png',
          ),
          Profile(
            id: 6,
            name: 'Bill Zamora',
            profileAvatar: 'assets/images/profile/profile4.png',
          ),
          Profile(
            id: 7,
            name: 'Cinate Rica',
            profileAvatar: 'assets/images/profile/profile2.png',
          ),
        ],
        posts: [
          Post(
            id: 3,
            profile: Profile(
              id: 2,
              name: 'Anakin Vader',
              profileAvatar: 'assets/images/profile/profile7.png',
            ),
            time: DateFormat('h:mm a').format(DateTime.now()), // H:MM A
            date: DateFormat.yMMMd().format(DateTime.now()),
            locationRange: 5,
            messageTitle: 'What’s Cebu doing???',
            messageDescription:
                "Disheartened by the slow progress on climate action in Cebu. Let's raise our voices, demand change, and work together for a greener, sustainable future. We have the power to make a difference. 🌍💚 #ClimateAction #Cebu #TogetherForChange",
            postImages: [
              'assets/images/posts/post_image1.png',
              'assets/images/posts/post_image2.png',
              'assets/images/posts/post_image3.png',
            ],
          ),
        ],
      ),
      comment:
          "Absolutely thrilled about the Coastal Cleanup Day initiative! 🏖️Dive into action with us on Coastal Cleanup Day! 🌊 Join the movement for cleaner, healthier beaches. Together, we can make a lasting impact on our oceans and coastal communities. Save the date and be the change our environment needs! 🏖️🌍 #CoastalCleanup #SustainableLiving #ProtectOurOceans 🤝",
    ),
    Comment(
      profile: Profile(
        id: 4,
        name: 'Russy Fluffy',
        profileAvatar: 'assets/images/profile/profile5.png',
        followers: [
          Profile(
            id: 0,
            name: 'Dominic Osorio',
            profileAvatar: 'assets/images/profile/profile1.png',
          ),
          Profile(
            id: 1,
            name: 'Henry Yap Three',
            profileAvatar: 'assets/images/profile/profile6.png',
          ),
          Profile(
            id: 2,
            name: 'Anakin Vader',
            profileAvatar: 'assets/images/profile/profile7.png',
          ),
        ],
        following: [
          Profile(
            id: 5,
            name: 'Carlos Sainz',
            profileAvatar: 'assets/images/profile/profile3.png',
          ),
          Profile(
            id: 6,
            name: 'Bill Zamora',
            profileAvatar: 'assets/images/profile/profile4.png',
          ),
          Profile(
            id: 7,
            name: 'Cinate Rica',
            profileAvatar: 'assets/images/profile/profile2.png',
          ),
        ],
        posts: [
          Post.shared(
            id: 4,
            profile: Profile(
              id: 4,
              name: 'Russy Fluffy',
              profileAvatar: 'assets/images/profile/profile5.png',
            ),
            time: DateFormat('h:mm a').format(DateTime.now()),
            date: DateFormat.yMMMd().format(DateTime.now()),
            messageDescription:
                "Absolutely, we can't afford to wait any longer. It's time for our leaders to prioritize climate action and for all of us to take individual steps towards a more sustainable future.",
            sharedPost: Post(
              id: 3,
              profile: Profile(
                id: 2,
                name: 'Anakin Vader',
                profileAvatar: 'assets/images/profile/profile7.png',
              ),
              time: DateFormat('h:mm a').format(DateTime.now()), // H:MM A
              date: DateFormat.yMMMd().format(DateTime.now()),
              locationRange: 5,
              messageTitle: 'What’s Cebu doing???',
              messageDescription:
                  "Disheartened by the slow progress on climate action in Cebu. Let's raise our voices, demand change, and work together for a greener, sustainable future. We have the power to make a difference. 🌍💚 #ClimateAction #Cebu #TogetherForChange",
              postImages: [
                'assets/images/posts/post_image1.png',
                'assets/images/posts/post_image2.png',
                'assets/images/posts/post_image3.png',
              ],
            ),
          ),
        ],
      ),
      comment:
          "In light of recent actions by the Argao LGU, it's imperative that our community engages in an open dialogue to address concerns that have arisen. The call for transparency and accountability underscores the importance of trust in the functioning of our local government. By fostering a culture of open communication, we pave the way for constructive solutions to emerge, ensuring that our collective voice is heard and acknowledged.",
    ),
    Comment(
      profile: Profile(
        id: 5,
        name: 'Carlos Sainz',
        profileAvatar: 'assets/images/profile/profile3.png',
        followers: [
          Profile(
            id: 0,
            name: 'Dominic Osorio',
            profileAvatar: 'assets/images/profile/profile1.png',
          ),
          Profile(
            id: 1,
            name: 'Henry Yap Three',
            profileAvatar: 'assets/images/profile/profile6.png',
          ),
          Profile(
            id: 2,
            name: 'Anakin Vader',
            profileAvatar: 'assets/images/profile/profile7.png',
          ),
        ],
        following: [
          Profile(
            id: 5,
            name: 'Carlos Sainz',
            profileAvatar: 'assets/images/profile/profile3.png',
          ),
          Profile(
            id: 6,
            name: 'Bill Zamora',
            profileAvatar: 'assets/images/profile/profile4.png',
          ),
          Profile(
            id: 7,
            name: 'Cinate Rica',
            profileAvatar: 'assets/images/profile/profile2.png',
          ),
        ],
        posts: [
          Post.shared(
            id: 5,
            profile: Profile(
              id: 5,
              name: 'Carlos Sainz',
              profileAvatar: 'assets/images/profile/profile3.png',
            ),
            time: DateFormat('h:mm a').format(DateTime.now()),
            date: DateFormat.yMMMd().format(DateTime.now()),
            messageDescription:
                "Climate change is a pressing issue, and it affects us right here in Cebu. Rising sea levels, extreme weather events, and threats to our local ecosystems are all signs that we must act now. We need our local leaders to implement policies that promote clean energy, reduce emissions, and protect our natural resources. But it's not just up to them; as individuals, we can also make a difference through our daily choices. Every small effort counts, from reducing single-use plastic to conserving water and energy. Together, we can create a more resilient and sustainable future for our beautiful Cebu. 🌊🌏 #CebuClimateAction #SustainableLiving #ActOnClimate",
            sharedPost: Post(
              id: 3,
              profile: Profile(
                id: 2,
                name: 'Anakin Vader',
                profileAvatar: 'assets/images/profile/profile7.png',
              ),
              time: DateFormat('h:mm a').format(DateTime.now()), // H:MM A
              date: DateFormat.yMMMd().format(DateTime.now()),
              locationRange: 5,
              messageTitle: 'What’s Cebu doing???',
              messageDescription:
                  "Disheartened by the slow progress on climate action in Cebu. Let's raise our voices, demand change, and work together for a greener, sustainable future. We have the power to make a difference. 🌍💚 #ClimateAction #Cebu #TogetherForChange",
              postImages: [
                'assets/images/posts/post_image1.png',
                'assets/images/posts/post_image2.png',
                'assets/images/posts/post_image3.png',
              ],
            ),
          ),
        ],
      ),
      comment:
          "Let's harness the power of our collective voice to ensure that our concerns are not only heard but also translated into meaningful actions. Through collaborative efforts, we can contribute to a more responsive, transparent, and accountable Argao LGU, laying the foundation for a stronger and more resilient community. 🌐🤝 #ArgaoLGU #BuildingTrust #ActiveCitizenship",
    ),
  ],
);

Post post5 = Post.shared(
  id: 5,
  profile: Profile(
    id: 5,
    name: 'Carlos Sainz',
    profileAvatar: 'assets/images/profile/profile3.png',
    followers: [
      Profile(
        id: 0,
        name: 'Dominic Osorio',
        profileAvatar: 'assets/images/profile/profile1.png',
      ),
      Profile(
        id: 1,
        name: 'Henry Yap Three',
        profileAvatar: 'assets/images/profile/profile6.png',
      ),
      Profile(
        id: 2,
        name: 'Anakin Vader',
        profileAvatar: 'assets/images/profile/profile7.png',
      ),
    ],
    following: [
      Profile(
        id: 5,
        name: 'Carlos Sainz',
        profileAvatar: 'assets/images/profile/profile3.png',
      ),
      Profile(
        id: 6,
        name: 'Bill Zamora',
        profileAvatar: 'assets/images/profile/profile4.png',
      ),
      Profile(
        id: 7,
        name: 'Cinate Rica',
        profileAvatar: 'assets/images/profile/profile2.png',
      ),
    ],
    posts: [
      Post.shared(
        id: 5,
        profile: Profile(
          id: 5,
          name: 'Carlos Sainz',
          profileAvatar: 'assets/images/profile/profile3.png',
        ),
        time: DateFormat('h:mm a').format(DateTime.now()),
        date: DateFormat.yMMMd().format(DateTime.now()),
        messageDescription:
            "Climate change is a pressing issue, and it affects us right here in Cebu. Rising sea levels, extreme weather events, and threats to our local ecosystems are all signs that we must act now. We need our local leaders to implement policies that promote clean energy, reduce emissions, and protect our natural resources. But it's not just up to them; as individuals, we can also make a difference through our daily choices. Every small effort counts, from reducing single-use plastic to conserving water and energy. Together, we can create a more resilient and sustainable future for our beautiful Cebu. 🌊🌏 #CebuClimateAction #SustainableLiving #ActOnClimate",
        sharedPost: Post(
          id: 3,
          profile: Profile(
            id: 2,
            name: 'Anakin Vader',
            profileAvatar: 'assets/images/profile/profile7.png',
          ),
          time: DateFormat('h:mm a').format(DateTime.now()), // H:MM A
          date: DateFormat.yMMMd().format(DateTime.now()),
          locationRange: 5,
          messageTitle: 'What’s Cebu doing???',
          messageDescription:
              "Disheartened by the slow progress on climate action in Cebu. Let's raise our voices, demand change, and work together for a greener, sustainable future. We have the power to make a difference. 🌍💚 #ClimateAction #Cebu #TogetherForChange",
          postImages: [
            'assets/images/posts/post_image1.png',
            'assets/images/posts/post_image2.png',
            'assets/images/posts/post_image3.png',
          ],
        ),
      ),
    ],
  ),
  time: DateFormat('h:mm a').format(DateTime.now()),
  date: DateFormat.yMMMd().format(DateTime.now()),
  messageDescription:
      "Climate change is a pressing issue, and it affects us right here in Cebu. Rising sea levels, extreme weather events, and threats to our local ecosystems are all signs that we must act now. We need our local leaders to implement policies that promote clean energy, reduce emissions, and protect our natural resources. But it's not just up to them; as individuals, we can also make a difference through our daily choices. Every small effort counts, from reducing single-use plastic to conserving water and energy. Together, we can create a more resilient and sustainable future for our beautiful Cebu. 🌊🌏 #CebuClimateAction #SustainableLiving #ActOnClimate",
  sharedPost: Post(
    id: 3,
    profile: Profile(
      id: 2,
      name: 'Anakin Vader',
      profileAvatar: 'assets/images/profile/profile7.png',
      followers: [
        Profile(
          id: 0,
          name: 'Dominic Osorio',
          profileAvatar: 'assets/images/profile/profile1.png',
        ),
        Profile(
          id: 1,
          name: 'Henry Yap Three',
          profileAvatar: 'assets/images/profile/profile6.png',
        ),
        Profile(
          id: 2,
          name: 'Anakin Vader',
          profileAvatar: 'assets/images/profile/profile7.png',
        ),
      ],
      following: [
        Profile(
          id: 5,
          name: 'Carlos Sainz',
          profileAvatar: 'assets/images/profile/profile3.png',
        ),
        Profile(
          id: 6,
          name: 'Bill Zamora',
          profileAvatar: 'assets/images/profile/profile4.png',
        ),
        Profile(
          id: 7,
          name: 'Cinate Rica',
          profileAvatar: 'assets/images/profile/profile2.png',
        ),
      ],
      posts: [
        Post(
          id: 3,
          profile: Profile(
            id: 2,
            name: 'Anakin Vader',
            profileAvatar: 'assets/images/profile/profile7.png',
          ),
          time: DateFormat('h:mm a').format(DateTime.now()), // H:MM A
          date: DateFormat.yMMMd().format(DateTime.now()),
          locationRange: 5,
          messageTitle: 'What’s Cebu doing???',
          messageDescription:
              "Disheartened by the slow progress on climate action in Cebu. Let's raise our voices, demand change, and work together for a greener, sustainable future. We have the power to make a difference. 🌍💚 #ClimateAction #Cebu #TogetherForChange",
          postImages: [
            'assets/images/posts/post_image1.png',
            'assets/images/posts/post_image2.png',
            'assets/images/posts/post_image3.png',
          ],
        ),
      ],
    ),
    time: DateFormat('h:mm a').format(DateTime.now()), // H:MM A
    date: DateFormat.yMMMd().format(DateTime.now()),
    locationRange: 5,
    messageTitle: 'What’s Cebu doing???',
    messageDescription:
        "Disheartened by the slow progress on climate action in Cebu. Let's raise our voices, demand change, and work together for a greener, sustainable future. We have the power to make a difference. 🌍💚 #ClimateAction #Cebu #TogetherForChange",
    postImages: [
      'assets/images/posts/post_image1.png',
      'assets/images/posts/post_image2.png',
      'assets/images/posts/post_image3.png',
    ],
  ),
  // --------------------- Comments ------------------------
  postComments: [
    Comment(
      profile: Profile(
        id: 3,
        name: 'Lionel Messi',
        profileAvatar: 'assets/images/profile/user_profile.jpeg',
        followers: [
          Profile(
            id: 0,
            name: 'Dominic Osorio',
            profileAvatar: 'assets/images/profile/profile1.png',
          ),
          Profile(
            id: 1,
            name: 'Henry Yap Three',
            profileAvatar: 'assets/images/profile/profile6.png',
          ),
          Profile(
            id: 2,
            name: 'Anakin Vader',
            profileAvatar: 'assets/images/profile/profile7.png',
          ),
        ],
        following: [
          Profile(
            id: 5,
            name: 'Carlos Sainz',
            profileAvatar: 'assets/images/profile/profile3.png',
          ),
          Profile(
            id: 6,
            name: 'Bill Zamora',
            profileAvatar: 'assets/images/profile/profile4.png',
          ),
          Profile(
            id: 7,
            name: 'Cinate Rica',
            profileAvatar: 'assets/images/profile/profile2.png',
          ),
        ],
        posts: [
          Post(
            id: 2,
            profile: Profile(
              id: 3,
              name: 'Lionel Messi',
              profileAvatar: 'assets/images/profile/user_profile.jpeg',
            ),
            time: DateFormat('h:mm a').format(DateTime.now()), // H:MM A
            date: DateFormat.yMMMd().format(DateTime.now()),
            locationRange: 5,
            messageTitle: 'Keep up the good work, Talaytay FC!',
            messageDescription:
                "It's great to see organizations like Talaytay FC taking action on climate change! Let's keep the momentum going and inspire others to join the cause. Together, we can make a real impact in the fight against climate change. 🌍💚 #ClimateAction #TalaytayFC #ClimateChangeAwareness",
            postImages: [
              'assets/images/posts/post_image9.png',
            ],
          )
        ],
      ),
      comment:
          "Absolutely thrilled about the Coastal Cleanup Day initiative! 🏖️🌊 Joining forces to make our beaches cleaner and healthier reflects a collective commitment to environmental stewardship. Let's unite to protect our oceans and preserve the beauty of our coastal communities. Mark your calendar for this impactful event and be a part of the positive change we can achieve together! 🌎 #CoastalCleanup #EnvironmentalAction #CleanSeas #CommunityImpact 🤝",
    ),
    Comment(
      profile: Profile(
        id: 1,
        name: 'Henry Yap Three',
        profileAvatar: 'assets/images/profile/profile6.png',
        followers: [
          Profile(
            id: 0,
            name: 'Dominic Osorio',
            profileAvatar: 'assets/images/profile/profile1.png',
          ),
          Profile(
            id: 1,
            name: 'Henry Yap Three',
            profileAvatar: 'assets/images/profile/profile6.png',
          ),
          Profile(
            id: 2,
            name: 'Anakin Vader',
            profileAvatar: 'assets/images/profile/profile7.png',
          ),
        ],
        following: [
          Profile(
            id: 5,
            name: 'Carlos Sainz',
            profileAvatar: 'assets/images/profile/profile3.png',
          ),
          Profile(
            id: 6,
            name: 'Bill Zamora',
            profileAvatar: 'assets/images/profile/profile4.png',
          ),
          Profile(
            id: 7,
            name: 'Cinate Rica',
            profileAvatar: 'assets/images/profile/profile2.png',
          ),
        ],
        posts: [
          Post(
            id: 1,
            profile: Profile(
              id: 1,
              name: 'Henry Yap Three',
              profileAvatar: 'assets/images/profile/profile6.png',
            ),
            time: DateFormat('h:mm a').format(DateTime.now()), // H:MM A
            date: DateFormat.yMMMd().format(DateTime.now()),
            locationRange: 5,
            messageTitle: 'Let’s do a costal cleanup!',
            messageDescription:
                "🏖️ Join us for a Coastal Cleanup Day! Together, we can make our beaches cleaner and healthier for all. 🌊 Let's protect our oceans and preserve the beauty of our coastal communities. Mark your calendar and be a part of the change! 🌎 #CoastalCleanup #EnvironmentalAction #CleanSeas",
            postImages: [
              'assets/images/posts/post_image4.png',
              'assets/images/posts/post_image5.png',
              'assets/images/posts/post_image6.png',
              'assets/images/posts/post_image7.png',
            ],
          ),
        ],
      ),
      comment:
          "Excited to be part of the Coastal Cleanup Day! 🌊 Let's transform our beaches for the better. Your involvement can make a significant impact on preserving our coastal communities. Save the date and let's make waves for a cleaner, healthier environment! 🏖️🌎 #CoastalCleanup #CleanSeas #EnvironmentalResponsibility 🤝",
    ),
    Comment(
      profile: Profile(
        id: 2,
        name: 'Anakin Vader',
        profileAvatar: 'assets/images/profile/profile7.png',
        followers: [
          Profile(
            id: 0,
            name: 'Dominic Osorio',
            profileAvatar: 'assets/images/profile/profile1.png',
          ),
          Profile(
            id: 1,
            name: 'Henry Yap Three',
            profileAvatar: 'assets/images/profile/profile6.png',
          ),
          Profile(
            id: 2,
            name: 'Anakin Vader',
            profileAvatar: 'assets/images/profile/profile7.png',
          ),
        ],
        following: [
          Profile(
            id: 5,
            name: 'Carlos Sainz',
            profileAvatar: 'assets/images/profile/profile3.png',
          ),
          Profile(
            id: 6,
            name: 'Bill Zamora',
            profileAvatar: 'assets/images/profile/profile4.png',
          ),
          Profile(
            id: 7,
            name: 'Cinate Rica',
            profileAvatar: 'assets/images/profile/profile2.png',
          ),
        ],
        posts: [
          Post(
            id: 3,
            profile: Profile(
              id: 2,
              name: 'Anakin Vader',
              profileAvatar: 'assets/images/profile/profile7.png',
            ),
            time: DateFormat('h:mm a').format(DateTime.now()), // H:MM A
            date: DateFormat.yMMMd().format(DateTime.now()),
            locationRange: 5,
            messageTitle: 'What’s Cebu doing???',
            messageDescription:
                "Disheartened by the slow progress on climate action in Cebu. Let's raise our voices, demand change, and work together for a greener, sustainable future. We have the power to make a difference. 🌍💚 #ClimateAction #Cebu #TogetherForChange",
            postImages: [
              'assets/images/posts/post_image1.png',
              'assets/images/posts/post_image2.png',
              'assets/images/posts/post_image3.png',
            ],
          ),
        ],
      ),
      comment:
          "Absolutely thrilled about the Coastal Cleanup Day initiative! 🏖️Dive into action with us on Coastal Cleanup Day! 🌊 Join the movement for cleaner, healthier beaches. Together, we can make a lasting impact on our oceans and coastal communities. Save the date and be the change our environment needs! 🏖️🌍 #CoastalCleanup #SustainableLiving #ProtectOurOceans 🤝",
    ),
    Comment(
      profile: Profile(
        id: 4,
        name: 'Russy Fluffy',
        profileAvatar: 'assets/images/profile/profile5.png',
        followers: [
          Profile(
            id: 0,
            name: 'Dominic Osorio',
            profileAvatar: 'assets/images/profile/profile1.png',
          ),
          Profile(
            id: 1,
            name: 'Henry Yap Three',
            profileAvatar: 'assets/images/profile/profile6.png',
          ),
          Profile(
            id: 2,
            name: 'Anakin Vader',
            profileAvatar: 'assets/images/profile/profile7.png',
          ),
        ],
        following: [
          Profile(
            id: 5,
            name: 'Carlos Sainz',
            profileAvatar: 'assets/images/profile/profile3.png',
          ),
          Profile(
            id: 6,
            name: 'Bill Zamora',
            profileAvatar: 'assets/images/profile/profile4.png',
          ),
          Profile(
            id: 7,
            name: 'Cinate Rica',
            profileAvatar: 'assets/images/profile/profile2.png',
          ),
        ],
        posts: [
          Post.shared(
            id: 4,
            profile: Profile(
              id: 4,
              name: 'Russy Fluffy',
              profileAvatar: 'assets/images/profile/profile5.png',
            ),
            time: DateFormat('h:mm a').format(DateTime.now()),
            date: DateFormat.yMMMd().format(DateTime.now()),
            messageDescription:
                "Absolutely, we can't afford to wait any longer. It's time for our leaders to prioritize climate action and for all of us to take individual steps towards a more sustainable future.",
            sharedPost: Post(
              id: 3,
              profile: Profile(
                id: 2,
                name: 'Anakin Vader',
                profileAvatar: 'assets/images/profile/profile7.png',
              ),
              time: DateFormat('h:mm a').format(DateTime.now()), // H:MM A
              date: DateFormat.yMMMd().format(DateTime.now()),
              locationRange: 5,
              messageTitle: 'What’s Cebu doing???',
              messageDescription:
                  "Disheartened by the slow progress on climate action in Cebu. Let's raise our voices, demand change, and work together for a greener, sustainable future. We have the power to make a difference. 🌍💚 #ClimateAction #Cebu #TogetherForChange",
              postImages: [
                'assets/images/posts/post_image1.png',
                'assets/images/posts/post_image2.png',
                'assets/images/posts/post_image3.png',
              ],
            ),
          ),
        ],
      ),
      comment:
          "In light of recent actions by the Argao LGU, it's imperative that our community engages in an open dialogue to address concerns that have arisen. The call for transparency and accountability underscores the importance of trust in the functioning of our local government. By fostering a culture of open communication, we pave the way for constructive solutions to emerge, ensuring that our collective voice is heard and acknowledged.",
    ),
    Comment(
      profile: Profile(
        id: 5,
        name: 'Carlos Sainz',
        profileAvatar: 'assets/images/profile/profile3.png',
        followers: [
          Profile(
            id: 0,
            name: 'Dominic Osorio',
            profileAvatar: 'assets/images/profile/profile1.png',
          ),
          Profile(
            id: 1,
            name: 'Henry Yap Three',
            profileAvatar: 'assets/images/profile/profile6.png',
          ),
          Profile(
            id: 2,
            name: 'Anakin Vader',
            profileAvatar: 'assets/images/profile/profile7.png',
          ),
        ],
        following: [
          Profile(
            id: 5,
            name: 'Carlos Sainz',
            profileAvatar: 'assets/images/profile/profile3.png',
          ),
          Profile(
            id: 6,
            name: 'Bill Zamora',
            profileAvatar: 'assets/images/profile/profile4.png',
          ),
          Profile(
            id: 7,
            name: 'Cinate Rica',
            profileAvatar: 'assets/images/profile/profile2.png',
          ),
        ],
        posts: [
          Post.shared(
            id: 5,
            profile: Profile(
              id: 5,
              name: 'Carlos Sainz',
              profileAvatar: 'assets/images/profile/profile3.png',
            ),
            time: DateFormat('h:mm a').format(DateTime.now()),
            date: DateFormat.yMMMd().format(DateTime.now()),
            messageDescription:
                "Climate change is a pressing issue, and it affects us right here in Cebu. Rising sea levels, extreme weather events, and threats to our local ecosystems are all signs that we must act now. We need our local leaders to implement policies that promote clean energy, reduce emissions, and protect our natural resources. But it's not just up to them; as individuals, we can also make a difference through our daily choices. Every small effort counts, from reducing single-use plastic to conserving water and energy. Together, we can create a more resilient and sustainable future for our beautiful Cebu. 🌊🌏 #CebuClimateAction #SustainableLiving #ActOnClimate",
            sharedPost: Post(
              id: 3,
              profile: Profile(
                id: 2,
                name: 'Anakin Vader',
                profileAvatar: 'assets/images/profile/profile7.png',
              ),
              time: DateFormat('h:mm a').format(DateTime.now()), // H:MM A
              date: DateFormat.yMMMd().format(DateTime.now()),
              locationRange: 5,
              messageTitle: 'What’s Cebu doing???',
              messageDescription:
                  "Disheartened by the slow progress on climate action in Cebu. Let's raise our voices, demand change, and work together for a greener, sustainable future. We have the power to make a difference. 🌍💚 #ClimateAction #Cebu #TogetherForChange",
              postImages: [
                'assets/images/posts/post_image1.png',
                'assets/images/posts/post_image2.png',
                'assets/images/posts/post_image3.png',
              ],
            ),
          ),
        ],
      ),
      comment:
          "Let's harness the power of our collective voice to ensure that our concerns are not only heard but also translated into meaningful actions. Through collaborative efforts, we can contribute to a more responsive, transparent, and accountable Argao LGU, laying the foundation for a stronger and more resilient community. 🌐🤝 #ArgaoLGU #BuildingTrust #ActiveCitizenship",
    ),
  ],
);

class DemoPostData {
  // ================== TRENDING posts =====================
  static List<Post> demoTrendingPostListData = [
    post1,
    post3,
    post0,
    post5,
  ];

  // ================== NEAR ME posts =====================
  static List<Post> demoNearMeListData = [
    post0,
    post3,
    post1,
    post5,
  ];

  // ================== LATEST NOW posts =====================
  static List<Post> demoLatestNowPostData = [
    post5,
    post3,
    post1,
    post0,
  ];

  // ================== RECOMMENDED posts =====================
  static List<Post> demoRecommendedPostListData = [
    post3,
    post1,
    post5,
    post3,
  ];

  // // ================== BROWSE posts =====================
  static List<Post> demoPostListData = [
    post0,
    post1,
    post2,
    post3,
    post4,
    post5,
  ];
}
