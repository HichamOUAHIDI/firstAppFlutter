import 'package:flutter/material.dart';
import 'package:workspacefrontend/config/GlobalParams.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.white, Colors.lightGreen])),
              child: Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("images/background_home.jpg"),
                ),
              )),
          ...(GlobalParams.menus).map((e) {
            return Column(children: [
              ListTile(
                title: Text(
                  '${e['title']}',
                  style: const TextStyle(fontSize: 22),
                ),
                leading: e['icon'],
                trailing: const Icon(
                  Icons.arrow_right,
                  color: Colors.green,
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.pushNamed(context, "${e['route']}");
                },
              ),
              const Divider(
                color: Colors.lightGreen,
                height: 2,
              )
            ]);
          })
        ],
      ),
    );
  }
}
