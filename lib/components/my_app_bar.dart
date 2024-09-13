import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello Tamani 👋",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
            Text("Explore Beautiful Places",
                style:
                    TextStyle(fontWeight: FontWeight.w600, color: Colors.grey))
          ],
        ),
        CircleAvatar(
          backgroundImage:
              NetworkImage("https://avatar.iran.liara.run/public/7"),
        )
      ],
    );
  }
}
