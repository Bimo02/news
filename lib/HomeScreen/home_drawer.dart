import 'package:flutter/material.dart';

class HomeDrawer extends StatelessWidget {
  static const int categories = 1;
  static const int settings = 2;
  Function onItemSideMenu;
  HomeDrawer({required this.onItemSideMenu});
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        UserAccountsDrawerHeader(
          accountName: Text(
            "Wilson White",
            style: Theme.of(context).textTheme.headline5,
          ),
          accountEmail: Text("sundar@appmaking.co"),
          currentAccountPicture: CircleAvatar(
            backgroundImage: AssetImage("assets/Ellipse 13.jpg"),
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/absolutvision-WYd_PkCa1BY-unsplash.jpg",
              ),
              fit: BoxFit.fill,
              opacity: 0.7,
            ),
          ),
          otherAccountsPictures: [
            CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage(
                  "https://randomuser.me/api/portraits/women/74.jpg"),
            ),
            CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage(
                  "https://randomuser.me/api/portraits/men/47.jpg"),
            ),
          ],
        ),
        ListTile(
          leading: Icon(Icons.newspaper),
          title: Text("Latest News"),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.category),
          title: Text("Categories"),
          onTap: () {
            onItemSideMenu(categories);
          },
        ),
        ListTile(
          leading: Icon(Icons.favorite_border_outlined),
          title: Text("My Favourites"),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.add_alert_sharp),
          title: Text("Notfications"),
          trailing: Switch(
            activeColor: Colors.blueAccent,
            onChanged: (context) {},
            value: false,
          ),
        ),
        ListTile(
          leading: Icon(Icons.nightlight),
          title: Text("Night mode"),
          trailing: Switch(
            activeColor: Colors.blueAccent,
            onChanged: (context) {
              bool value = false;
            },
            value: false,
          ),
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text("Settings"),
          onTap: () {
            onItemSideMenu(settings);
          },
        ),
        ListTile(
          leading: Icon(Icons.info_outlined),
          title: Text("About"),
          onTap: () {},
        ),
      ],
    );
  }
}
