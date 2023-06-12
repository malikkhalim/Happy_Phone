import "package:flutter/material.dart";
import "package:flutter/services.dart";
import 'package:happy_apps/navbar.dart';

void main(){
  runApp(MyWidget());
  
}



class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        drawer: NavBar(),
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            systemNavigationBarColor: Colors.black,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 20),
              Text("data")
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.transparent,
          elevation: 0,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Chat',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.play_circle_outline_sharp),
              label: 'Explore',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.stay_current_landscape_outlined),
              label: 'Games',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
          ),
          ],    
        )
      ),
    );
  }
}
