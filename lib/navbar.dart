import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color.fromRGBO(235, 235, 235, 100),
        child: ListView(
          children: [
            Expanded(
              child: DrawerHeader(
                padding: EdgeInsets.zero,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 50,
                        child: ClipOval(
                          child: Image.asset(
                            "assets/images/image_6.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        "MALIK SI GANTENG",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(top: 20),
                          width: 20,
                          height: 20,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.file_copy),
              title: Text("INI TEST 1"),
              onTap: () => print("TEST TAPPED"),
            ),
          ],
        ),
      ),
    );
  }
}




