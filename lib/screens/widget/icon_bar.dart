import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconBar extends StatelessWidget {
  final String profilePic;
  const IconBar({super.key, required this.profilePic});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        BottomNBIcon(
          text: "Home",
          icon: CupertinoIcons.home,
        ),
        BottomNBIcon(
          text: "Friends",
          icon: CupertinoIcons.person_2,
        ),
        BottomNBIcon(
          text: "Marketplace",
          icon: Icons.store,
        ),
        BottomNBIcon(
          text: "Profile",
          icon: Icons.person_2_outlined,
        ),
        BottomNBIcon(
          text: "Notification",
          icon: Icons.notifications,
        ),
        BottomNBIcon(
          text: "Menu",
          icon: Icons.menu,
        ),
      ],
    );
  }
}

class BottomNBIcon extends StatelessWidget {
  final IconData icon;
  final String text;

  const BottomNBIcon({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      child: Column(
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                icon,
                color: Colors.white,
              )),
          Text(text, style: const TextStyle(color: Colors.white, fontSize: 10))
        ],
      ),
    );
  }
}
