import 'package:flutter/material.dart';
import 'screens/BottomNavBarScreens/search_screen.dart';
import 'screens/BottomNavBarScreens/home_screen.dart';
import 'screens/BottomNavBarScreens/messages_screen.dart';
import 'screens/BottomNavBarScreens/notification_screen.dart';
import 'screens/BottomNavBarScreens/spaces_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedPage = 0;

  final _pageOptions = [
    HomeScreen(),
    SearchScreen(),
    SpacesScreen(),
    NotificationScreen(),
    MessagesScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: _pageOptions[selectedPage],
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.all_inclusive),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.mail),
              label: 'Messages',
            ),
          ],
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.black,
          selectedItemColor: const Color(0xff00acee),
          currentIndex: selectedPage,
          onTap: (index) {
            setState(() {
              selectedPage = index;
            });
          },
        ));
  }
}
