import 'package:flutter/material.dart';

class Notification extends StatelessWidget {
  final String avatar;
  final String username;
  final String text;

  const Notification({
    required this.avatar,
    required this.username,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 15, top: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                notificationIcon(),
                notificationAvatar(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 80, top: 0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                notificationBody(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget notificationIcon() {
    return Container(
      margin: const EdgeInsets.only(top: 2.0, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Icon(
            Icons.notifications,
            size: 30.0,
            color: Color(0xff00acee),
          ),
        ],
      ),
    );
  }

  Widget notificationAvatar() {
    return CircleAvatar(
      backgroundImage: AssetImage(avatar),
    );
  }

  Widget notificationBody() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          notificationHeader(),
          notificationText(),
        ],
      ),
    );
  }

  Widget notificationHeader() {
    return Padding(
      padding: const EdgeInsets.only(top: 12, right: 12),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 5.0),
            child: Text(
              username,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget notificationText() {
    return Text(
      text,
      overflow: TextOverflow.clip,
    );
  }
}
