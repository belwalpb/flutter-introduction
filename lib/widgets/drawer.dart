import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class ApplicationDrawer extends StatelessWidget {
  const ApplicationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 2.0,
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text(
                  "Priyanshu Belwal",
                  style: TextStyle(color: Colors.white),
                ),
                accountEmail: Text(
                  "priyanshubelwalpb@gmail.com",
                  style: TextStyle(color: Colors.white),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://picsum.photos/250?image=10",
                      scale: 1.0),
                ),
              )),
          ListTile(
              leading: Icon(CupertinoIcons.home, color: Colors.black),
              title:
                  Text("Home", style: TextStyle(fontWeight: FontWeight.bold))),
          ListTile(
              leading:
                  Icon(CupertinoIcons.profile_circled, color: Colors.black),
              title: Text("Profile",
                  style: TextStyle(fontWeight: FontWeight.bold)))
        ],
      ),
    );
  }
}
