import 'package:facebook_ui/screens/widget/new_post_bar.dart';
import 'package:flutter/material.dart';

import 'widget/icon_bar.dart';
import 'widget/post_list_view.dart';
import 'widget/story_listview.dart';
import 'widget/tool_bar.dart';

class FacebookHome extends StatefulWidget {
  const FacebookHome({super.key});

  @override
  State<FacebookHome> createState() => _FacebookHomeState();
}

class _FacebookHomeState extends State<FacebookHome> {
  final profilePic =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3bXh5R1KsWJmYtUkDMFzqTqwy37O1mv68KQ&s";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: Column(
          children: [
            const ToolBar(),
            const SizedBox(
              height: 5,
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  NewPostBar(profilePic: profilePic),
                  const Divider(color: Colors.black38, thickness: 5),
                  StoriesListView(profilePic: profilePic),
                  const Divider(
                    color: Colors.black38,
                    thickness: 5,
                  ),
                  PostListView(profilePic: profilePic)
                ],
              ),
            )),
            IconBar(
              profilePic: profilePic,
            ),
          ],
        ));
  }
}
