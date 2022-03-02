import 'package:flutter/material.dart';

import 'contact.dart';
import 'future_screen.dart';
import 'home.dart';
import 'profile.dart';

class FirstScreen extends StatefulWidget {
  static String id = '/first';
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("หน้าแรก"),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: [
          Card(
            margin: EdgeInsets.all(12),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
              },
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.home, size: 50, color: Colors.blueAccent),
                    Text("หน้าหลัก", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(12),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ContactScreen()));
              },
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.new_releases, size: 50, color: Colors.redAccent),
                    Text("คอนแท็ค", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(12),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfileScreen()));
              },
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.military_tech, size: 50, color: Colors.green),
                    Text("โปรไฟล์", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.all(12),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.blue,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.android, size: 50, color: Colors.blueGrey),
                    Text("เทคโนโลยี", style: TextStyle(fontSize: 17.0)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const SizedBox(
              child: UserAccountsDrawerHeader(
                accountName: Text("Phalakorn PK"),
                accountEmail: Text("PK@gmail.com"),
                decoration: BoxDecoration(
                  color: Colors.indigo,
                ),
                currentAccountPicture: CircleAvatar(
                  // backgroundColor: Colors.amber,
                  backgroundImage: NetworkImage(
                      "https://www.google.com/url?https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.logo.wine%2Flogo%2FYouTube&psig=AOvVaw3IwlzNa_EA2Z9cygmh8hu9&ust=1646125125029000&source=images&cd=vfe&ved=2ahUKEwjX2veLhKL2AhXRQGwGHceEB54QjRx6BAgAEAk"),
                ),
              ),
            ),
            ListTile(
              title: const Text("หน้าหลัก",
                  style: TextStyle(color: Colors.indigo, fontSize: 15)),
              leading: const Icon(
                Icons.home,
                color: Colors.indigo,
                size: 30,
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
              },
            ),
            ListTile(
              title: const Text("โปรไฟล์",
                  style: TextStyle(color: Colors.indigo, fontSize: 15)),
              leading: const Icon(
                Icons.manage_accounts,
                color: Colors.indigo,
                size: 30,
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfileScreen()));
              },
            ),
            ListTile(
              title: const Text("คอนแท็ค",
                  style: TextStyle(color: Colors.indigo, fontSize: 15)),
              leading: const Icon(
                Icons.contact_page,
                color: Colors.indigo,
                size: 30,
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ContactScreen()));
              },
            ),
            ListTile(
              title: const Text("หน้าแรก",
                  style: TextStyle(color: Colors.indigo, fontSize: 15)),
              leading: const Icon(
                Icons.call,
                color: Colors.indigo,
                size: 30,
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FirstScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}