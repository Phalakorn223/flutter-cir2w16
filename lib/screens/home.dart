import 'package:flutter/material.dart';

import 'contact.dart';
import 'first_screen.dart';
import 'future_screen.dart';
import 'login.dart';
import 'profile.dart';
import 'stream_screen.dart';

class HomeScreen extends StatefulWidget {
  static String id = '/home';

  const HomeScreen({Key? key}) : super(key: key); //1.create Constructor

  @override
  State<HomeScreen> createState() => _HomeScreenState(); //2.create state
}

class _HomeScreenState extends State<HomeScreen> {
  int index_ = 0;

  List pages = [
    // HomeScreen(),
    const FirstScreen(),// index_ = 0
    const ProfileScreen(),// index_ = 1
    const ContactScreen(),// index_ = 2
    const LoginScreen(),// index_ = 3
    const FutureScreen(),//index_ = 4
    StreamScreen(),//index_ = 5
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Flutter App"),
      //   centerTitle: true,
      //   backgroundColor: Colors.indigo,
      // ),
      body: pages[index_],
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
              title: const Text("First",
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
                        builder: (context) => const FutureScreen()));
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index_,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "หน้าหลัก",
              backgroundColor: Colors.indigo),
          BottomNavigationBarItem(
              icon: Icon(Icons.manage_accounts),
              label: "โปรไฟล์",
              backgroundColor: Colors.teal),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_page),
              label: "คอนแท็ค",
              backgroundColor: Colors.purple),
          BottomNavigationBarItem(
              icon: Icon(Icons.login),
              label: "ล็อคอิน",
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_to_queue),
              label: "Future",
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon: Icon(Icons.stream),
              label: "Stream",
              backgroundColor: Colors.pink),
        ],
        onTap: (index) {
          setState(() {
            index_ = index;
          });
          print(index);
        },

      ),
    );
  }
}