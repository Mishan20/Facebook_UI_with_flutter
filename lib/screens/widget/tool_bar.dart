import 'package:flutter/material.dart';

class ToolBar extends StatelessWidget {
  const ToolBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 20, right: 10),
      child: Row(
        children: [
          const Text(
            "facebook",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          CircleAvatar(
            backgroundColor: Colors.grey.shade800,
            radius: 15,
            child: const Icon(
              Icons.add,
              color: Colors.white,
              size: 25,
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          CircleAvatar(
            backgroundColor: Colors.grey.shade800,
            radius: 15,
            child: const Icon(
              Icons.search,
              color: Colors.white,
              size: 20,
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          CircleAvatar(
            backgroundColor: Colors.grey.shade800,
            radius: 15,
            child: const Icon(
              Icons.messenger,
              color: Colors.white,
              size: 17,
            ),
          ),
        ],
      ),
    );
  }
}