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
                ),
              ),
              SizedBox(height: 13),
              ListTile(
                title: Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                ),
              ),
              SizedBox(height: 13),
              ListTile(
                title: Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                ),
              ),
              SizedBox(height: 13),
              ListTile(
                title: Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.all(Radius.circular(10))
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
