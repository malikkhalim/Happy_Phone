import "package:flutter/material.dart";
import "package:flutter/services.dart";
import 'package:happy_apps/chat/chat_room.dart';
import 'package:happy_apps/explore/explore.dart';
import 'package:happy_apps/navbar.dart';
import 'package:happy_apps/bottomnavbar.dart';
import 'package:happy_apps/chat/chat.dart';


void main(){
  WidgetsFlutterBinding.ensureInitialized();
  runApp( Explore());
  
}



class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image(image: AssetImage("assets/images/emoji_happy.png"), width: 30),
                        Image(image: AssetImage("assets/images/emoji_sad.png"), width: 30, ),
                        Image(image: AssetImage("assets/images/emoji_angry.png"), width: 30),
                        Image(image: AssetImage("assets/images/emoji_worry.png"), width: 30),
                        Image(image: AssetImage("assets/images/emoji_calm.png"), width: 30),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)
                    ),
                    color: Colors.white,
                  ),
                )
              ),
            ],
          ),
        ),
        bottomNavigationBar: const BottomNavbar()
      ),
    );
  }
}
