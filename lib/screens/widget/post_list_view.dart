import 'package:flutter/material.dart';

import '../../models/post_model.dart';

class PostListView extends StatelessWidget {
  PostListView({
    super.key,
    required this.profilePic,
  });

  final String profilePic;
  final List<PostModel> posts = [
    PostModel(
      post:
          "https://cdn.shopify.com/s/files/1/0344/2586/4328/articles/persons_hand_delivering_a_vibrant_bouquet_from_Tooka_Flo_6616f8fb-b2ff-4071-bc7c-d3e32b7ba9e2_1024x1024.png?v=1686679475",
      time: "7 h",
      caption: "Beautiful view 💗❤️‍🔥",
      userImage: "https://randomuser.me/api/portraits/women/60.jpg",
      uid: "100",
      userName: "Gina Bowman",
      type: "updated cover photo",
    ),
    PostModel(
      post:
          "https://images.unsplash.com/photo-1529619768328-e37af76c6fe5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Y2l0eSUyMG5pZ2h0fGVufDB8fDB8fHww&w=1000&q=80",
      time: "5 days",
      caption: "Feeling blessed.",
      userImage: "https://randomuser.me/api/portraits/men/33.jpg",
      uid: "200",
      userName: "Robert Hudson",
      type: "updated profile photo",
    ),
    PostModel(
      post:
          "https://images.unsplash.com/photo-1529619768328-e37af76c6fe5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Y2l0eSUyMG5pZ2h0fGVufDB8fDB8fHww&w=1000&q=80",
      time: "5 days",
      caption: "Feeling blessed.",
      userImage: "https://randomuser.me/api/portraits/men/33.jpg",
      uid: "200",
      userName: "Robert Hudson",
      type: "updated profile photo",
    ),
    PostModel(
      post:
          "https://img.olympicchannel.com/images/image/private/t_s_w960/t_s_16_9_g_auto/f_auto/primary/peml11q6maltpwsohdmi",
      time: "2 h",
      caption: "Making memories.",
      userImage: "https://randomuser.me/api/portraits/men/11.jpg",
      uid: "400",
      userName: "Jon Reyes",
      type: "updated profile photo",
    ),
    PostModel(
      post:
          "https://assets.mspimages.in/wp-content/uploads/2021/09/Samsung-Galaxy-M52-5G-Brand-Story.png",
      time: "10 days",
      caption: "Life is great!",
      userImage: "https://randomuser.me/api/portraits/men/32.jpg",
      uid: "500",
      userName: "Jose Holt",
      type: "at Paris, France",
    ),
    PostModel(
      post:
          "https://images.unsplash.com/photo-1580483046931-aaba29b81601?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cnVzc2lhbiUyMGdpcmx8ZW58MHx8MHx8fDA%3D&w=1000&q=80",
      time: "3 months",
      caption: "Cherishing the day.",
      userImage: "https://randomuser.me/api/portraits/women/79.jpg",
      uid: "600",
      userName: "Jill Jacobs",
      type: "updated cover photo",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.blue, width: 2)),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(posts[index].userImage),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          posts[index].userName,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              height: 0.8,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          posts[index].type,
                          style: const TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Row(
                          children: [
                            Text(posts[index].time,
                                style: const TextStyle(
                                    color: Colors.grey, fontSize: 13)),
                            const SizedBox(
                              width: 4,
                            ),
                            Icon(
                              Icons.public,
                              color: Colors.grey.shade600,
                              size: 13,
                            )
                          ],
                        ),
                      ],
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    const Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              Text(
                posts[index].caption,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w300),
              ),
              Image.network(
                posts[index].post,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 5,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "1.2K",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "845 Comments",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "421 Shares",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
              const Divider(thickness: 0.2),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ActionButton(
                    icon: Icons.thumb_up_alt_outlined,
                    text: "Like",
                  ),
                  ActionButton(
                    icon: Icons.comment,
                    text: "Comment",
                  ),
                  ActionButton(
                    icon: Icons.reply,
                    text: "Share",
                  ),
                ],
              ),
              Divider(
                height: 50,
                thickness: 5,
                color: Colors.grey.shade800,
              )
            ],
          );
        });
  }
}

class ActionButton extends StatelessWidget {
  const ActionButton({super.key, required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.grey,
        ),
        const SizedBox(
          width: 2,
        ),
        Text(
          text,
          style: const TextStyle(color: Colors.grey),
        )
      ],
    );
  }
}
