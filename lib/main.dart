import "package:flutter/material.dart";

void main(){
  runApp(MyWidget());
  
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        body: Center(
          child: Container(
            height: 100,
            width: 100,
            color: Colors.red,
            child: Text(
              "akbar"
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "HOME", backgroundColor: Colors.red),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "HOME"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "HOME", backgroundColor: Colors.amber),
        ]),
        
      ),
      



    );
  }
}