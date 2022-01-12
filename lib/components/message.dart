import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  final String avatar;
  final String username;
  final String name;
  final String date;
  final String text;

  const Message({
    required this.avatar,
    required this.username,
    required this.name,
    required this.date,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          messageAvatar(),
          messageBody(),
        ],
      ),
    );
  }

  Widget messageAvatar() {
    return Container(
      margin: const EdgeInsets.all(15.0),
      child: CircleAvatar(
        backgroundImage: AssetImage(avatar),
      ),
    );
  }

  Widget messageBody() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          messageHeader(),
          messageText(),
        ],
      ),
    );
  }

  Widget messageHeader() {
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
          Text(
            '@$name',
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
          const Spacer(),
          Text(
            date,
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  Widget messageText() {
    return Text(
      text,
      overflow: TextOverflow.clip,
    );
  }
}
