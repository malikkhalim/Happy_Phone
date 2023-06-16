import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:happy_apps/bottomnavbar.dart';
import 'package:happy_apps/chat/appbar.dart';
import 'package:happy_apps/chat/chat_room.dart';
import 'package:happy_apps/navbar.dart';


class Chat extends StatelessWidget {
  Chat({super.key});

  final List<Map<String, String>> messages = [
    {
      'name': 'Conselor 1',
      'message': 'Hallo bagaimana kabar kamu ?',
      'avatar': 'assets/images/avatar1.png',
    },
    {
      'name': 'Conselor 2',
      'message': 'Hallo bagaimana kabar kamu ?',
      'avatar': 'assets/images/avatar1.png',
    },
  ];

  final List<Map<String, String>> friends = [
    {
      'name': 'Friend 1',
      'message_chat': 'Hallo bagaimana kabar kamu ?',
      'avatar': 'assets/images/avatar2.png',
    },
    {
      'name': 'Friend 2',
      'message_chat': 'Hallo bagaimana kabar kamu ?',
      'avatar': 'assets/images/avatar2.png',
    },
        {
      'name': 'Friend 3',
      'message_chat': 'Hallo bagaimana kabar kamu ?',
      'avatar': 'assets/images/avatar2.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: ChatAppBar(),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Massages",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 25,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text("Peer Conselor"),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    final message = messages[index];
                    return Container(
                      height: 65,
                      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      padding: const EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.lightBlueAccent,
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left: 15),
                            child: CircleAvatar(
                              radius: 20,
                              child: ClipOval(
                                child: Image(image: AssetImage(message['avatar']!)),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  message['name']!,
                                  style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  message['message']!,
                                  style: const TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 10),
              Container(
                margin: const EdgeInsets.only(left: 20),
                alignment: Alignment.centerLeft,
                child: Text("Friends"),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: friends.length,
                  itemBuilder: (context, index) {
                    final friend = friends[index];
                    return GestureDetector(
                      onTap: () {
                        // Navigate to another page
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation, secondaryAnimation) => ChatRoom(),
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
                      height: 65,
                      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      padding: const EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.lightGreenAccent,
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left: 15),
                            child: CircleAvatar(
                              radius: 20,
                              child: ClipOval(
                                child: Image(image: AssetImage(friend['avatar']!)),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  friend['name']!,
                                  style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                  Text(
                                    friend['message_chat']!,
                                    style: const TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const BottomNavbar(),
      ),
    );
  }
}