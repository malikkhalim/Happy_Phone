import "package:flutter/material.dart";
import "package:flutter/services.dart";
import 'package:happy_apps/chat/chat_room.dart';
import 'package:happy_apps/explore/explore.dart';
import 'package:happy_apps/explore/peer2peer_room.dart';
import 'package:happy_apps/games/games.dart';
import 'package:happy_apps/games/games_select.dart';
import 'package:happy_apps/widget/navbar.dart';
import 'package:happy_apps/widget/bottomnavbar.dart';
import 'package:happy_apps/chat/chat.dart';
import 'package:happy_apps/screen/home_page.dart';


void main(){
  WidgetsFlutterBinding.ensureInitialized();
  runApp( HomePage());
  
}



class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "WorkSans"
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff78B8A0),
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
                    margin: EdgeInsets.only(right: 10),
                    child: ClipRRect(
                      child: SizedBox.fromSize(
                        child: Image.asset("assets/images/image_6.png"),
                        size: Size(250, 250),
                      ),
                    )
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15)
                      ) 
                    ),
                    width: 45,
                    height: 200,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image(image: AssetImage("assets/images/emoji_happy.png"), width: 28),
                        Image(image: AssetImage("assets/images/emoji_sad.png"), width: 28, ),
                        Image(image: AssetImage("assets/images/emoji_angry.png"), width: 28),
                        Image(image: AssetImage("assets/images/emoji_worry.png"), width: 28),
                        Image(image: AssetImage("assets/images/emoji_calm.png"), width: 28),
                      ],
                    ),
                  ),
                ],
              ),
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              _PeerContainer(imageAsset: "assets/images/Baner1.png"),
                              SizedBox(width: 20),
                              _PeerContainer(imageAsset: "assets/images/Baner2.png"),
                              SizedBox(width: 20),
                              _PeerContainer(imageAsset: "assets/images/Baner3.png"),
                            ],
                          )
                        ),
                      ),
                    ],
                  ),
                )
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavbar(),
      ),
    );
  }
}

class _PeerContainer extends StatelessWidget {
  const _PeerContainer({
    super.key,
    required this.imageAsset,
    });
    final String imageAsset;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.only(right: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        child: Image.asset(imageAsset),
      ),
    );
  }
}
