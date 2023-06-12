import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child :Container(
        color: const Color.fromRGBO(235, 235, 235, 100),
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Malik", style: TextStyle(color: Colors.black)), 
              accountEmail: null,
              currentAccountPicture: CircleAvatar(
                child: ClipOval(child: Image.asset("assets/images/image_6.png")),
              ),
              decoration:
              BoxDecoration(color: Colors.white),
              ),
            ListTile(
              leading: Icon(Icons.file_copy),
              title: Text("INI TEST 1"),
              onTap: () => print("TEST TAPPED"),
            )
          ],
        ),
      )
    );
  }
}