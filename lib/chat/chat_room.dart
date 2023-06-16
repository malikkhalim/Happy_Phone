import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:happy_apps/bottomnavbar.dart';
import 'package:happy_apps/chat/chatbubble.dart';
import 'package:happy_apps/color.dart';

class ChatRoom extends StatelessWidget {
  const ChatRoom({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> chatBubbles = [
      ChatBubbleLeft(
        avatarImage: "assets/images/avatar3.png",
        message:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Molestie.",
      ),
      ChatBubbleLeft(
        avatarImage: "assets/images/avatar3.png",
        message:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Molestie fermentum porttitor diam purus Lorem ipsum dolor sit amet, consectetur adipiscing elit. Molestie fermentum porttitor diam purus",
      ),
      ChatBubbleRight(
        avatarImage: "assets/images/avatar3.png",
        message:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Molestie. awdwadawdda",
      ),
      ChatBubbleLeft(
        avatarImage: "assets/images/avatar3.png",
        message:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Molestie. awdwadawdda",
      ),
      ChatBubbleRight(
        avatarImage: "assets/images/avatar3.png",
        message:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Molestie. awdwadawdda",
      ),
      ChatBubbleLeft(
        avatarImage: "assets/images/avatar3.png",
        message:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Molestie. awdwadawdda",
      ),
    ];

    return MaterialApp(
      theme: ThemeData(
        fontFamily: "WorkSans"
      ),
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
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
          ),
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
                        color: Colors.grey[200],
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 10),
                            child: Icon(
                              Icons.search,
                              size: 20,
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: TextField(
                              onChanged: (value) {},
                              decoration: InputDecoration(
                                hintText: "Search Conversations",
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: 14.0,
                                ),
                                hintStyle: TextStyle(fontSize: 12),
                              ),
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
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
                      "Friend",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child: CircleAvatar(
                          radius: 15,
                          child: ClipOval(
                            child: Icon(Icons.video_camera_back, size: 18,),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        child: CircleAvatar(
                          radius: 15,
                          child: ClipOval(
                            child: Icon(Icons.phone, size: 20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 15),
              Expanded(
                child: ListView.builder(
                  itemCount: chatBubbles.length,
                  itemBuilder: (BuildContext context, int index) {
                    return chatBubbles[index];
                  },
                ),
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 28,
                      margin: EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                        color: ColorSelect.gray,
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(width: 10),
                          Expanded(
                            child: TextField(
                              onChanged: (value) {    
                              },
                              decoration: InputDecoration(
                                hintText: "Aa",
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black
                                )
                              ),
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 2),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 12,
                              child: Icon(
                                Icons.double_arrow_outlined,
                                size: 20,
                                color: ColorSelect.blue,
                              ),
                            ),
                          ),
                        ],
                      ) 
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        bottomNavigationBar: const BottomNavbar(),
      ),
    );
  }
}

