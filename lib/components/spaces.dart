import 'package:flutter/material.dart';

class spaces extends StatelessWidget {
  final String host;
  final String aboutHost;
  final String spaceTitle;
  final String listners;
  final Color colourTop;
  final Color colourBottom;

  const spaces({
    required this.host,
    required this.aboutHost,
    required this.spaceTitle,
    required this.listners,
    required this.colourTop,
    required this.colourBottom,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
              color: colourTop,
            ),
            child: cardContent(),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              color: colourBottom,
            ),
            child: cardContentBottom(),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(15),
          //   child: Row(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       cardContentBottom(),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget cardContent() {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Icon(
                Icons.queue_music_outlined,
                size: 22.0,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'LIVE',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              Spacer(),
              Icon(
                Icons.menu,
                size: 22.0,
                color: Colors.white,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            spaceTitle,
            style: const TextStyle(
              decorationStyle: TextDecorationStyle.solid,
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('assets/placeholder.png'),
                radius: 18,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                listners,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget cardContentBottom() {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('assets/placeholder.png'),
                radius: 10,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                host,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            aboutHost,
            style: const TextStyle(
              overflow: TextOverflow.ellipsis,
              color: Colors.white,
              fontSize: 15,
            ),
          )
        ],
      ),
    );
  }
}
