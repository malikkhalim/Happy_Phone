import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:happy_apps/bottomnavbar.dart';

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
                  padding: EdgeInsets.only(left: 30),
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
              SizedBox(height: 20),
              ListTile(
                title: Container(
                  margin: EdgeInsets.only(left: 30, right: 30),
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent[100],
                  ),
                ),
              ),
              SizedBox(height: 20),
              ListTile(
                title: Container(
                  margin: EdgeInsets.only(left: 30, right: 30),
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent[100],
                  ),
                ),
              ),
              SizedBox(height: 20),
              ListTile(
                title: Container(
                  margin: EdgeInsets.only(left: 30, right: 30),
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent[100],
                  ),
                ),
              ),  
            ],
          ),
        ),
        bottomNavigationBar: BottomNavbar(),
      ),
    );
  }
}
