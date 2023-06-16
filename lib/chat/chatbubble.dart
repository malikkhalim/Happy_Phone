import 'package:flutter/material.dart';
import 'package:happy_apps/color.dart';


class ChatBubbleLeft extends StatelessWidget {
  final String avatarImage;
  final String message;

  const ChatBubbleLeft({
    Key? key,
    required this.avatarImage,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(width: 20),
          Container(
            width: 30,
            height: 30,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: SizedBox.fromSize(
                size: Size.fromRadius(48),
                child: Image.asset(avatarImage),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                color: ColorSelect.blue,
              ),
              margin: EdgeInsets.only(left: 10, right: 140, top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      message,
                      softWrap: true,
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ChatBubbleRight extends StatelessWidget {
  final String avatarImage;
  final String message;

  const ChatBubbleRight({
    Key? key,
    required this.avatarImage,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                color: ColorSelect.gray,
              ),
              margin: EdgeInsets.only(left: 140, right: 10, top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      message,
                      softWrap: true,
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 30,
            height: 30,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: SizedBox.fromSize(
                size: Size.fromRadius(48),
                child: Image.asset(avatarImage),
              ),
            ),
          ),
          SizedBox(width: 20),
        ],
      ),
    );
  }
}
