import 'package:flutter/material.dart';
import 'package:twitter_clone/components/spaces_data.dart';
import 'package:twitter_clone/widgets/navigation_drawer.dart';

class SpacesScreen extends StatefulWidget {
  const SpacesScreen({Key? key}) : super(key: key);

  @override
  _SpacesScreenState createState() => _SpacesScreenState();
}

var scaffoldKey = GlobalKey<ScaffoldState>();

class _SpacesScreenState extends State<SpacesScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        drawer: NavigationDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(
              Icons.account_circle,
              size: 35.0,
              color: Colors.grey,
            ),
            onPressed: () {
              scaffoldKey.currentState?.openDrawer();
            },
          ),
          title: const Text(
            "Spaces",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: spacesCard(),

        // body: Padding(
        //   padding: EdgeInsets.all(15.0),
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: const [
        //       Text(
        //         'Happening Now',
        //         style: TextStyle(
        //           fontSize: 25,
        //           fontWeight: FontWeight.w500,
        //         ),
        //       ),
        //       Text(
        //         'Spaces going on right now',
        //         style: TextStyle(
        //           fontSize: 16,
        //           fontWeight: FontWeight.w300,
        //         ),
        //       ),
        //       SizedBox(
        //         height: 20,
        //       ),
        //     ],
        //   ),
        // ),

        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.lightBlueAccent,
            child: const Icon(Icons.library_music_outlined),
            onPressed: () {}),
      ),
    );
  }
}

Widget spacesCard() {
  return Container(
    color: Colors.white,
    child: ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return spaceCards[index];
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(
        height: 0,
      ),
      itemCount: spaceCards.length,
    ),
  );
}
