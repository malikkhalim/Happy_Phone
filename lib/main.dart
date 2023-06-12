import "package:flutter/material.dart";
import "package:flutter/services.dart";
import 'package:happy_apps/navbar.dart';

void main(){
  runApp(const MyWidget());
  
}



class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        drawer: const NavBar(),
        appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
            systemNavigationBarColor: Colors.black,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10)
                      ) 
                    ),
                    width: 50,
                    height: 200,
                    child: const Column(
                      children: [
                        Text("data"),
                        Text("data")
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  const SizedBox(height: 50),
                  Container(
                    height: MediaQuery.of(context).size.height-362,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)
                      ),
                      color: Colors.white,
                    ),
                  )
                ]
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          elevation: 0,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black,
          items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/home.png"),
                  color: Color(0xFF3A5A98),
               ),
            label: "Home",
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
