import 'package:flutter/material.dart';

class TMyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TMyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromRGBO(13, 110, 253, 1),
      iconTheme: IconThemeData(color: Colors.white),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.account_circle_outlined),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
