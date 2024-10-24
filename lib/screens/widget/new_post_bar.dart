import 'package:flutter/material.dart';

class NewPostBar extends StatelessWidget {
  const NewPostBar({
    super.key,
    required this.profilePic,
  });

  final String profilePic;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(profilePic),
          ),
          const SizedBox(
            width: 5,
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "What's on your mind?",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          const Icon(
            Icons.photo_album_rounded,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
