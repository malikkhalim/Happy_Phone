import 'package:flutter/material.dart';
import 'package:happy_apps/widget/bottomnavbar.dart';

class GamesSelect extends StatelessWidget {
  const GamesSelect({super.key});

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
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Container(
                            height: 400.0,
                            margin: const EdgeInsets.only(bottom: 8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(0.0, 1.0),
                                  blurRadius: 8.0,
                                ),
                              ],
                            ),
                            child: Image.asset("assets/images/image_games.png", fit: BoxFit.cover,),
                          )
                        )
                      ),
                    ],
                  ),
                  Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Container(
                        height: 135.0,
                        margin: const EdgeInsets.only(top: 8.0, bottom: 8.0),
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 25),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Drawme", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                                      Text("Drawing image with full of exiting", style: TextStyle(fontSize: 12),)
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 25),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Row(
                                        children: List.generate(
                                          5,
                                          (index) => Icon(Icons.star, size: 17),
                                        ),
                                      ),
                                      SizedBox(height: 2),
                                      Text(
                                        "(150 Reviews)", 
                                        style: TextStyle(fontSize: 10)
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 30,
                                    margin: EdgeInsets.only(
                                      left: 20,
                                      right: 20,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.green[300],
                                      borderRadius: BorderRadius.all(Radius.circular(20))
                                    ),
                                    child: Center(
                                      child: Text("Play", style: TextStyle(color: Colors.white),),
                                    )
                                  )
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavbar(),
      ),
    );
  }
}

              