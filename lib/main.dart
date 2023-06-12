import "package:flutter/material.dart";
import "package:flutter/services.dart";
import 'package:happy_apps/navbar.dart';
import 'package:happy_apps/bottomnavbar.dart';


void main(){
  runApp(const Main());
  
}



class Main extends StatelessWidget {
  const Main({super.key});

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
                        Image(image: AssetImage("assets/images/emoji_angry.png")),
                        Image(image: AssetImage("assets/images/chat.png")),
                        Image(image: AssetImage("assets/images/chat.png")),
                        Image(image: AssetImage("assets/images/chat.png")),
                        Image(image: AssetImage("assets/images/chat.png")),
                        
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  const SizedBox(height: 150),
                  Container(
                    height: MediaQuery.of(context).size.height-462,
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
        bottomNavigationBar: const BottomNavbar()
      ),
    );
  }
}
