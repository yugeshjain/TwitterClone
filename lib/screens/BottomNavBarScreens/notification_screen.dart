import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:twitter_clone/components/notification_data.dart';
import 'package:twitter_clone/widgets/navigation_drawer.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

var scaffoldKey = GlobalKey<ScaffoldState>();

class _NotificationScreenState extends State<NotificationScreen> {
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
            "Notifications",
            style: TextStyle(color: Colors.black),
          ),
          actions: const <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Icon(
                Icons.settings,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: listOfNotification(),
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

Widget listOfNotification() {
  return Container(
    color: Colors.white,
    child: ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return notifications[index];
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(
        height: 0,
      ),
      itemCount: notifications.length,
    ),
  );
}
