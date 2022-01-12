import 'package:flutter/material.dart';
// import 'package:twitter_clone/screens/NavDrawerScreens/favourites_screen.dart';
// import 'package:twitter_clone/screens/NavDrawerScreens/people_screen.dart';
// import 'package:twitter_clone/screens/NavDrawerScreens/user_screen.dart';

class NavigationDrawer extends StatelessWidget {
  final padding = const EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            buildHeader(
              assetImage: 'assets/placeholder.png',
              name: 'Yugesh Jain',
              username: '@yugeshjain',
              onClicked: () => Navigator.pop(context),
              // onClicked: () => Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (context) => const UserPage(
              //       name: 'Yugesh Jain',
              //       assetImage: 'assets/placeholder.png',
              //     ),
              //   ),
              // ),
            ),
            Container(
              padding: padding,
              child: Column(
                children: [
                  const SizedBox(height: 24),
                  buildMenuItem(
                    text: 'Profile',
                    icon: Icons.person_outline,
                    onClicked: () => Navigator.pop(context),
                    // onClicked: () => selectedItem(context, 0),
                  ),
                  buildMenuItem(
                    text: 'Lists',
                    icon: Icons.list_alt_sharp,
                    onClicked: () => Navigator.pop(context),
                    // onClicked: () => selectedItem(context, 1),
                  ),
                  buildMenuItem(
                    text: 'Topics',
                    icon: Icons.chat_outlined,
                    onClicked: () => Navigator.pop(context),
                    // onClicked: () => selectedItem(context, 2),
                  ),
                  buildMenuItem(
                    text: 'Bookmarks',
                    icon: Icons.bookmark_border,
                    onClicked: () => Navigator.pop(context),
                    // onClicked: () => selectedItem(context, 3),
                  ),
                  buildMenuItem(
                    text: 'Moments',
                    icon: Icons.flashlight_off_outlined,
                    onClicked: () => Navigator.pop(context),
                    // onClicked: () => selectedItem(context, 3),
                  ),
                  buildMenuItem(
                    text: 'Monetisation',
                    icon: Icons.money_outlined,
                    onClicked: () => Navigator.pop(context),
                    // onClicked: () => selectedItem(context, 3),
                  ),
                  const SizedBox(height: 10),
                  const Divider(color: Colors.black54),
                  const SizedBox(height: 10),
                  buildMenuItem(
                    text: 'Twitter for  Professionals',
                    icon: Icons.launch_outlined,
                    onClicked: () => Navigator.pop(context),
                    // onClicked: () => selectedItem(context, 4),
                  ),
                  const SizedBox(height: 10),
                  const Divider(color: Colors.black54),
                  const SizedBox(height: 10),
                  buildMenuItem(
                    text: 'Settings and privacy',
                    icon: Icons.settings_outlined,
                    onClicked: () => Navigator.pop(context),
                    // onClicked: () => selectedItem(context, 4),
                  ),
                  buildMenuItem(
                    text: 'Help Centre',
                    icon: Icons.help_outline,
                    onClicked: () => Navigator.pop(context),
                    // onClicked: () => selectedItem(context, 4),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHeader({
    required String assetImage,
    required String name,
    required String username,
    required VoidCallback onClicked,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          padding: padding.add(
            const EdgeInsets.only(
              top: 20,
              left: 10,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CircleAvatar(
                radius: 28,
                backgroundImage: AssetImage('assets/placeholder.png'),
              ),
              const SizedBox(height: 5),
              Text(
                name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                username,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 15),
              Row(
                children: const [
                  Text(
                    '31',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    ' Following',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    '10',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    ' Followers',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 20),
            ],
          ),
        ),
      );

  Widget buildSearchField() {
    const color = Colors.black;

    return TextField(
      style: const TextStyle(color: color),
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        hintText: 'Search',
        hintStyle: const TextStyle(color: color),
        prefixIcon: const Icon(Icons.search, color: color),
        filled: true,
        fillColor: Colors.black,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: color.withOpacity(0.7)),
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    const color = Colors.black;
    const hoverColor = Colors.black;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: const TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  // void selectedItem(BuildContext context, int index) {
  //   Navigator.of(context).pop();
  //
  //   switch (index) {
  //     case 0:
  //       Navigator.of(context).push(MaterialPageRoute(
  //         builder: (context) => PeoplePage(),
  //       ));
  //       break;
  //     case 1:
  //       Navigator.of(context).push(MaterialPageRoute(
  //         builder: (context) => FavouritesPage(),
  //       ));
  //       break;
  //   }
  // }
}
