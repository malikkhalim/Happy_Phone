import 'package:flutter/material.dart';
import 'package:happy_apps/bottomnavbar.dart';
import 'package:happy_apps/games/games_select.dart';

class Games extends StatelessWidget {
  const Games({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "WorkSans"
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              ListTile(
                title: Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Games",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              _buildGameItem(context),
              _buildGameItem(context),
              _buildGameItem(context),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Container(
                    height: 100.0,
                    margin: const EdgeInsets.only(top: 8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 1.0),
                          blurRadius: 8.0,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 120,
                          margin: EdgeInsets.only(left: 30, right: 30, top: 30),
                          decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(left: 40),
                          child: Text("History")
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(130),
                                  child: Container(
                                    margin: EdgeInsets.only(left: 30),
                                    height: 45,
                                    width: 45,
                                    child: Image.asset(
                                      "assets/images/games_icon.png",
                                      fit: BoxFit.scaleDown,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Drawme", style: TextStyle(fontWeight: FontWeight.bold),),
                                      Text("100 Minute Playing", style: TextStyle(fontSize: 10),)
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 30, top: 5),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Row(
                                        children: List.generate(
                                          5,
                                          (index) => Icon(Icons.star_border, size: 13),
                                        ),
                                      ),
                                      Text("100 Minute Playing", style: TextStyle(fontSize: 10),)
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
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

  

  Widget _buildGameItem(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) => GamesSelect(),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
          ),
        );
      },
      title: Container(
        margin: EdgeInsets.only(left: 10, right: 10),
        height: 80,
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.grey.shade400, width: 1),
          ),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(130),
              child: Container(
                height: 70,
                width: 70,
                child: Image.asset(
                  "assets/images/games_icon.png",
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
            SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Drawme",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 0.5),
                  child: Text(
                    "Drawing Image With Full of Exiting",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ),
                SizedBox(height: 2),
                Row(
                  children: List.generate(
                    5,
                    (index) => Icon(Icons.star, color: Colors.black, size: 13),
                  ),
                ),
                SizedBox(height: 3),
                Text(
                  "(150 Reviews)",
                  style: TextStyle(
                    fontSize: 7,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}


