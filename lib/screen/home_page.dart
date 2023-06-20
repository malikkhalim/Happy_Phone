import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:happy_apps/chat/chat.dart';
import 'package:happy_apps/widget/bottomnavbar.dart';

import '../widget/color.dart';
import '../widget/navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool _isContainerExpanded = false;

  void _toggleContainerExpansion() {
    setState(() {
      _isContainerExpanded = !_isContainerExpanded;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      backgroundColor: ColorHappy.green,
        drawer: const NavBar(),
        appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
            systemNavigationBarColor: Colors.black,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              alignment: Alignment.topRight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: _toggleContainerExpansion,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20)),
                        color: Colors.white,
                      ),
                      width: 40,
                      height: 40,
                      child: Center(
                        child: Image(image: AssetImage("assets/images/emoji_angry.png"), height: 25, width: 25,)
                      ),
                    ),
                  ),
                  AnimatedContainer(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20)),
                      color: Colors.white,
                    ),
                    duration: Duration(milliseconds: 500),
                    width: _isContainerExpanded ? 40 : 0,
                    height: 160,
                    child: Center(
                      child: Column(
                        children: [
                          
                          Image(image: AssetImage("assets/images/emoji_happy.png"), height: 23, width: 23,),
                          SizedBox(height: 8,),
                          Image(image: AssetImage("assets/images/emoji_angry.png"), height: 23, width: 23,),
                          SizedBox(height: 8,),
                          Image(image: AssetImage("assets/images/emoji_sad.png"), height: 23, width: 23,),
                          SizedBox(height: 8,),
                          Image(image: AssetImage("assets/images/emoji_worry.png"), height: 23, width: 23,),
                          SizedBox(height: 8,),
                          Image(image: AssetImage("assets/images/emoji_calm.png"), height: 23, width: 23,),
                        ],
                      )
                    ),
                  ),
                ],
              ),
            ),
            DraggableScrollableSheet(
              initialChildSize: 0.54,
              minChildSize: 0.54,
              maxChildSize: 1.0, 
              builder: (BuildContext context, ScrollController scrollController) { return Container(
                child: Container( 
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)
                    ),
                    color: Colors.white,
                  ),
                  child: ListView(
                    controller: scrollController,
                    children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                // Navigate to another page
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation, secondaryAnimation) => Chat(),
                                    transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                      return FadeTransition(
                                        opacity: animation,
                                        child: child,
                                      );
                                    },
                                  ),
                                );
                              },
                              child: Container(
                                alignment: Alignment.centerRight,
                                margin: EdgeInsets.only(top: 20, right: 15),
                                child: Icon(
                                Icons.arrow_forward,
                                size: 20,
                              ),
                              )
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Container(
                                margin: EdgeInsets.only(left: 20, top: 10),
                                child: Row(
                                  children: [
                                    _PeerContainer(imageAsset: "assets/images/Baner1.png"),
                                    SizedBox(width: 15),
                                    _PeerContainer(imageAsset: "assets/images/Baner2.png"),
                                    SizedBox(width: 15),
                                    _PeerContainer(imageAsset: "assets/images/Baner3.png"),
                                  ],
                                )
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ),
              );
              },    
            )
          ],
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
      margin: const EdgeInsets.only(right: 0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.asset(imageAsset),
      ),
    );
  }
}