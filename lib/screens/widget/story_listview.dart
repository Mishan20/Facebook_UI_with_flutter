import 'package:flutter/material.dart';

import '../../models/story_model.dart';

class StoriesListView extends StatelessWidget {
  StoriesListView({
    super.key,
    required this.profilePic,
  });

  final String profilePic;
  final List<StoryModel> stories = [
    StoryModel(
        story: "story",
        uid: "uid",
        userImage: "userImage",
        userName: "userName"),
    StoryModel(
      story:
          "https://cdn.shopify.com/s/files/1/0344/2586/4328/articles/persons_hand_delivering_a_vibrant_bouquet_from_Tooka_Flo_6616f8fb-b2ff-4071-bc7c-d3e32b7ba9e2_1024x1024.png?v=1686679475",
      uid: "100",
      userImage: "https://randomuser.me/api/portraits/women/60.jpg",
      userName: "Gina Bowman",
    ),
    StoryModel(
      story:
          "https://images.unsplash.com/photo-1529619768328-e37af76c6fe5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Y2l0eSUyMG5pZ2h0fGVufDB8fDB8fHww&w=1000&q=80",
      uid: "200",
      userImage: "https://randomuser.me/api/portraits/men/33.jpg",
      userName: "Robert Hudson",
    ),
    StoryModel(
      story:
          "https://upload.wikimedia.org/wikipedia/commons/4/4c/Beauty_of_Sigiriya_by_Binuka.jpg",
      uid: "300",
      userImage: "https://randomuser.me/api/portraits/women/5.jpg",
      userName: "Georgia Dixon",
    ),
    StoryModel(
      story:
          "https://img.olympicchannel.com/images/image/private/t_s_w960/t_s_16_9_g_auto/f_auto/primary/peml11q6maltpwsohdmi",
      uid: "400",
      userImage: "https://randomuser.me/api/portraits/men/11.jpg",
      userName: "Jon Reyes",
    ),
    StoryModel(
      story:
          "https://assets.mspimages.in/wp-content/uploads/2021/09/Samsung-Galaxy-M52-5G-Brand-Story.png",
      uid: "500",
      userImage: "https://randomuser.me/api/portraits/men/32.jpg",
      userName: "Jose Holt",
    ),
    StoryModel(
      story:
          "https://images.unsplash.com/photo-1580483046931-aaba29b81601?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cnVzc2lhbiUyMGdpcmx8ZW58MHx8MHx8fDA%3D&w=1000&q=80",
      uid: "600",
      userImage: "https://randomuser.me/api/portraits/women/79.jpg",
      userName: "Jill Jacobs",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Stories", style: TextStyle(color: Colors.blue, fontSize: 15)),
            Text("Reels", style: TextStyle(color: Colors.white))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text("__________________",
                style: TextStyle(color: Colors.blue, fontSize: 15)),
            Text("-----------------",
                style: TextStyle(color: Colors.grey.shade900, fontSize: 15)),
          ],
        ),
        SizedBox(
          height: 176,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: stories.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100,
                      height: 160,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade800,
                          borderRadius: BorderRadius.circular(15)),
                      child: index == 0
                          ? Stack(children: [
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15)),
                                    image: DecorationImage(
                                        image: NetworkImage(profilePic),
                                        fit: BoxFit.cover)),
                              ),
                              Positioned(
                                bottom: 45,
                                left: 1,
                                right: 1,
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: const BoxDecoration(
                                      color: Colors.blue,
                                      shape: BoxShape.circle),
                                  child: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    "Create\nStory",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ))
                            ])
                          : Stack(
                              children: [
                                Container(
                                  width: 100,
                                  height: 160,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              stories[index].story),
                                          fit: BoxFit.cover,
                                          colorFilter: ColorFilter.mode(
                                              // ignore: deprecated_member_use
                                              Colors.black.withOpacity(0.2),
                                              BlendMode.darken))),
                                ),
                                Positioned(
                                  top: 5,
                                  left: 5,
                                  child: Container(
                                    width: 35,
                                    height: 35,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: Colors.blue, width: 2)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: CircleAvatar(
                                        backgroundImage: NetworkImage(
                                            stories[index].userImage),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 5, bottom: 5),
                                    child: Text(
                                      stories[index].userName,
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                )
                              ],
                            ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
