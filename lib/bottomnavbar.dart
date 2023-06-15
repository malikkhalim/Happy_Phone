import 'package:flutter/material.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45, // Set the desired height for the bottom navigation bar
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        elevation: 0,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        selectedLabelStyle: TextStyle(fontSize: 10),
        unselectedLabelStyle: TextStyle(fontSize: 10),
        iconSize: 17,
        items: const [
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 2),
              child: ImageIcon(
              AssetImage("assets/images/home.png"),
              color: Colors.black,
              ),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 2),
              child: ImageIcon(
              AssetImage("assets/images/chat.png"),
              color: Colors.black,
              ),
            ),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 2),
              child: ImageIcon(
              AssetImage("assets/images/explore.png"),
              color: Colors.black,
              ),
            ),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 0),
              child: ImageIcon(
              AssetImage("assets/images/games.png"),
              color: Colors.black,
              ),
            ),
            label: 'Games',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 2),
              child: ImageIcon(
              AssetImage("assets/images/profile.png"),
              color: Colors.black,
              ),
            ), 
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
