import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:twitter_clone/widgets/navigation_drawer.dart';
import 'package:twitter_clone/components/search_data.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

var scaffoldKey = GlobalKey<ScaffoldState>();

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        drawer: NavigationDrawer(),
        appBar: AppBar(
          toolbarHeight: 65,
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
          title: TextField(
            textAlign: TextAlign.start,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: 'Search Twitter',
              hintStyle: const TextStyle(fontSize: 15),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(45),
                borderSide: const BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
              filled: true,
              contentPadding: const EdgeInsets.all(16),
              fillColor: Colors.grey.shade200,
            ),
          ),
          actions: const <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Icon(
                Icons.settings_outlined,
                color: Colors.black,
                size: 25,
              ),
            )
          ],
        ),
        body: searchCard(),
        floatingActionButton: SpeedDial(
          animatedIcon: AnimatedIcons.add_event,
          children: [
            SpeedDialChild(
              child: const Icon(Icons.gif),
              label: 'Gif',
            ),
            SpeedDialChild(
              child: const Icon(Icons.image),
              label: 'Photos',
            ),
            SpeedDialChild(
              child: const Icon(Icons.devices_other_sharp),
              label: 'Spaces',
            ),
          ],
        ),
      ),
    );
  }
}

Widget searchCard() {
  return Container(
    color: Colors.white,
    child: ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return searches[index];
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(
        height: 0,
      ),
      itemCount: searches.length,
    ),
  );
}
