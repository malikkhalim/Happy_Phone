import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:happy_apps/bottomnavbar.dart';

class ChatRoom extends StatelessWidget {
  const ChatRoom({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
            systemNavigationBarColor: Colors.black,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
            leading: IconButton(
              onPressed: () {}, 
              icon: Icon(Icons.back_hand), color: Colors.black,)

        ),
        body: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[200]
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                              left: 10
                            ),
                            child: Icon(
                              Icons.search,
                              size: 20,
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: TextField(
                              onChanged: (value){
                              },
                              decoration: InputDecoration(
                                hintText: "Search Conversations",
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(vertical: 14.0),
                                hintStyle: TextStyle(
                                  fontSize: 12 
                                )
                              ),
                              style: TextStyle(
                                fontSize: 12
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 20, top: 4),
                    child: Text(
                      "Friend 1",
                      style: TextStyle(
                        fontSize: 18  ,
                        fontWeight: FontWeight.w700
                      ),
                    )
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child: CircleAvatar(
                          radius: 15,
                          child: ClipOval(
                            child: Icon(Icons.video_camera_back, size: 18),
                          ),
                        )
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        child: CircleAvatar(
                          radius: 15,
                          child: ClipOval(
                            child: Icon(Icons.phone, size: 20),
                          ),
                        )
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 20),
                        Container(
                          width: 40,
                          height: 40,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: SizedBox.fromSize(
                              size: Size.fromRadius(48),
                              child: Image.asset("assets/images/avatar3.png"),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Molestie.",style: TextStyle(fontSize: 10),),
                        )
                      ],
                    ),
                  ],     
                )
              ),
            ],
          ),
        ),
        bottomNavigationBar: const BottomNavbar(),

      ),
    );
  }
}