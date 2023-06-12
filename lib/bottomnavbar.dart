import 'package:flutter/material.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          elevation: 0,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black,
          items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/home.png"),
                  color: Colors.black,
               ),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(
              AssetImage("assets/images/chat.png"),
                  color: Colors.black,
               ),
              label: 'Chat',
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(
              AssetImage("assets/images/explore.png"),
                  color: Colors.black,
               ),
              label: 'Explore',
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(
              AssetImage("assets/images/games.png"),
                  color: Colors.black,
               ),
              label: 'Games',
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(
              AssetImage("assets/images/profile.png"),
                  color: Colors.black,
               ),
              label: 'Profile',
          ),
        ],    
    );
  }
}