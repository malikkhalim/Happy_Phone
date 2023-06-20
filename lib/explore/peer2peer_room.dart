import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:happy_apps/widget/bottomnavbar.dart';

class PeerRoom extends StatelessWidget {
  const PeerRoom({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "WorkSans"
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            const ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
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
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Peer Counselor",
                        style: TextStyle(fontSize: 15),
                      ),
                      Row(
                        children: [
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
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        _PeerContainer(
                          name: "Conselor 1",
                          title: "Mahasiswa Psikologi",
                          umur: "26 Tahun",
                          imageAsset: "assets/images/conselor2.png",
                        ),
                        SizedBox(width: 20),
                        _PeerContainer(
                          name: "Conselor 2",
                          title: "Mahasiswa Psikologi",
                          umur: "26 Tahun",
                          imageAsset: "assets/images/conselor1.png",
                        ),
                        SizedBox(width: 20),
                        _PeerContainer(
                          name: "Conselor 3",
                          title: "Mahasiswa Psikologi",
                          umur: "26 Tahun",
                          imageAsset: "assets/images/conselor2.png",
                        ),
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
                          color: const Color.fromARGB(255, 188, 188, 188),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Last Counselor",
                              style: TextStyle(color: Colors.white),
                            ),
                            _LastCounselorRow(
                              imageAsset: "assets/images/avatar3.png",
                              name: "Conselor 1",
                            ),
                            _LastCounselorRow(
                              imageAsset: "assets/images/avatar3.png",
                              name: "Conselor 2",
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
  const _PeerContainer({
    super.key,
    required this.name,
    required this.umur,
    required this.imageAsset,
    required this.title,
  });

  final String name;
  final String umur;
  final String imageAsset;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 280,
          width: 180,
          decoration: BoxDecoration(
            color: Colors.grey[800],
            borderRadius: BorderRadius.circular(15),
          ),
          margin: const EdgeInsets.only(right: 20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(imageAsset, fit: BoxFit.cover,),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 60,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("${name} | ${umur}", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 11)),
                  Text(title, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 8)),
                ],
              ),
            ),
          ),
        ),
      ],
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
