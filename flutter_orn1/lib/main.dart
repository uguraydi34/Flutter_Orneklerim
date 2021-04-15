import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavigasyonSayfasi(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.orange,
        accentColor: Colors.orange,
      ),
    );
  }
}

class NavigasyonSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation Drawer"),
      ),
      body: Center(
        child: Text("Hoşgeldin!"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Uğur AYDI"),
              accountEmail: Text("uguraydi@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("images/a1a.jpg"),
              ),
            ),
            ListTile(
              title: Text("Anasayfa"),
              leading: Icon(Icons.home),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Profilim"),
              leading: Icon(Icons.person),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Çıkış Yap"),
              leading: Icon(Icons.remove_circle_outline),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
