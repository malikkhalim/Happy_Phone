import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:happy_apps/bottomnavbar.dart';

class PeerRoom extends StatelessWidget {
  const PeerRoom({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Explore",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  Icon(Icons.more_vert),
                ],
              ),
            ),
            ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Peer Counselor",
                        style: TextStyle(fontSize: 15),
                      ),
                      Row(
                        children: const [
                          Text("More"),
                          SizedBox(width: 5),
                          Icon(
                            Icons.arrow_forward,
                            size: 18,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: const [
                        _PeerContainer(),
                        SizedBox(width: 20),
                        _PeerContainer(),
                        SizedBox(width: 20),
                        _PeerContainer(),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        height: 150,
                        padding: const EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Text(
                              "Last Counselor",
                              style: TextStyle(color: Colors.white),
                            ),
                            _LastCounselorRow(
                              imageAsset: "assets/images/avatar3.png",
                              name: "Friend 1",
                            ),
                            _LastCounselorRow(
                              imageAsset: "assets/images/avatar3.png",
                              name: "Friend 2",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavbar(),
      ),
    );
  }
}

class _PeerContainer extends StatelessWidget {
  const _PeerContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      width: 180,
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.only(right: 20),
    );
  }
}

class _LastCounselorRow extends StatelessWidget {
  const _LastCounselorRow({
    super.key,
    required this.imageAsset,
    required this.name,
  });

  final String imageAsset;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20, top: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  width: 30,
                  height: 30,
                  child: Image.asset(imageAsset),
                ),
              ),
            ),
            const SizedBox(width: 13),
            Container(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                name,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(top: 10, right: 20),
          width: 8,
          height: 8,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(2)),
            color: Colors.black38,
          ),
        ),
      ],
    );
  }
}
