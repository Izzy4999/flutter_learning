import 'package:flutter/material.dart';
import './home_page.dart';
import './profile.page.dart';
import './settings_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List _pages = [
    const HomePage(),
    const ProfilePage(),
    const SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "First page",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.purple,
      ),
      body: _pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: _navigateBottomBar,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: "Profile"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
              ),
              label: "Settings"),
        ],
      ),
    );
  }
}



    // drawer: Drawer(
      //   backgroundColor: Colors.deepPurple,
      //   child: Column(
      //     children: [
      //       const DrawerHeader(
      //           child: Icon(
      //         Icons.favorite,
      //         size: 48,
      //       )),
      //       ListTile(
      //         leading: const Icon(Icons.home),
      //         title: const Text("H O M E"),
      //         onTap: () {
      //           Navigator.pop(context);
      //           Navigator.pushNamed(context, "/home-page");
      //         },
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.settings),
      //         title: const Text("S E T T I N G S"),
      //         onTap: () {
      //           Navigator.pop(context);

      //           Navigator.pushNamed(context, "/settings-page");
      //         },
      //       ),
      //     ],
      //   ),
      // ),
      // body: Center(
      //   child: ElevatedButton(
      //     child: const Text("Go to second page"),
      //     onPressed: () {
      //       // Navigator.push(context,
      //       //     MaterialPageRoute(builder: (context) => const SecondPage()));
      //       Navigator.pushNamed(context, "/second-page");
      //     },
      //   ),
      // ),
