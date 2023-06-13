import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ChatAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.black,
      ),
      toolbarHeight: preferredSize.height,
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: <Widget>[
        GestureDetector(
          onTap: () {},
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Image(
              image: AssetImage("assets/images/Phone.png"),
              width: 15,
            ),
          ),
        ),
        const SizedBox(width: 10),
        GestureDetector(
          onTap: () {},
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Image(
              image: AssetImage("assets/images/Contact.png"),
              width: 15,
            ),
          ),
        ),
        const SizedBox(width: 10),
        GestureDetector(
          onTap: () {},
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Image(
              image: AssetImage("assets/images/search.png"),
              width: 15,
            ),
          ),
        ),
        const SizedBox(width: 20),
      ],
    );
  }
}
