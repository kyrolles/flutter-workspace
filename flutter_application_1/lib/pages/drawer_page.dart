import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("1st Page"),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 171, 203, 255),
        child: Column(
          children: [
            DrawerHeader(
              child: Icon(
                Icons.home_filled,
                size: 50,
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("HOME"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/HomePage');
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Setting"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/SettingPage');
              },
            )
          ],
        ),
      ),
    );
  }
}
