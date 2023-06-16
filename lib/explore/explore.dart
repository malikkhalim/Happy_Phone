import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:happy_apps/bottomnavbar.dart';
import 'package:happy_apps/explore/peer2peer_room.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: ListView(
            children: [
              ListTile(
                title: Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Explore",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 0),
              ListTile(
                title: Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  height: 145,
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Image.asset("assets/images/explore_banner_recomend.png", fit: BoxFit.cover,),
                  ),
                ),
              ),
              SizedBox(height: 13),
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) => PeerRoom(),
                      transitionsBuilder: (context, animation, secondaryAnimation, child) {
                        return FadeTransition(
                          opacity: animation,
                          child: child,
                        );
                      },
                    ),
                  );
                },
                title: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      height: 120,
                      width: 500,
                      decoration: BoxDecoration(
                        color: Colors.grey[800],
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: Image.asset("assets/images/conselor_banner.png", fit: BoxFit.cover,),
                      ),
                    ),
                    Text("Peer Conselor", style: TextStyle(color: Colors.white),)
                  ],
                )
              ),
              SizedBox(height: 13),
              ListTile(
                title: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      height: 120,
                      width: 500,
                      decoration: BoxDecoration(
                        color: Colors.grey[800],
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: Image.asset("assets/images/video_banner.png", fit: BoxFit.cover,),
                      ),
                    ),
                    Text("Video", style: TextStyle(color: Colors.white),)
                  ],
                )
              ),
              SizedBox(height: 13),
              ListTile(
                title: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      height: 120,
                      width: 500,
                      decoration: BoxDecoration(
                        color: Colors.grey[800],
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: Image.asset("assets/images/video_banner.png", fit: BoxFit.cover,),
                      ),
                    ),
                    Text("Content", style: TextStyle(color: Colors.white),)
                  ],
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
