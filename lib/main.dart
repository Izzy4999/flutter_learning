import 'package:flutter/material.dart';
import './pages/first_page.dart';
import './pages/home_page.dart';
import './pages/settings_page.dart';
import './pages/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:  FirstPage(),
        routes: {
          '/first-page': (context) =>  FirstPage(),
          '/second-page': (context) => const SecondPage(),
          '/home-page': (context) => const HomePage(),
          '/settings-page': (context) => const SettingsPage(),
          '/profile-page': (context) => const SettingsPage(),
        });
  }
}


        //  Scaffold(
        //   backgroundColor: Colors.deepPurple.shade100,
        //   appBar: AppBar(
        //     title: const Text(
        //       "My App Bar",
        //       style: TextStyle(color: Colors.white),
        //     ),
        //     leading: const Icon(
        //       Icons.menu,
        //       color: Colors.white,
        //     ),
        //     actions: [
        //       IconButton(
        //           onPressed: () {},
        //           icon: const Icon(
        //             Icons.logout,
        //             color: Colors.white,
        //           ))
        //     ],
        //     backgroundColor: Colors.deepPurple.shade300,
        //   ),
        // body: Center(
        //   child: Container(
        //     height: 300,
        //     width: 300,
        //     padding: const EdgeInsets.all(25),
        //     decoration: BoxDecoration(
        //         color: Colors.amber,
        //         borderRadius: BorderRadius.circular(10)),
        //     child: const Icon(
        //       Icons.favorite,
        //       color: Colors.white,
        //       size: 64,
        //     ),
        //   ),
        // )
        // body: ListView(
        //   scrollDirection: Axis.vertical,
        //   children: [
        //     Expanded(
        //       child: Container(
        //         color: Colors.deepPurple[400],
        //       ),
        //     ),
        //     Expanded(
        //       child: Container(
        //         color: Colors.deepPurple[200],
        //       ),
        //     ),
        //     Expanded(
        //       child: Container(
        //         color: Colors.deepPurple,
        //       ),
        //     ),
        //   ],
        // ),
        // body: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   crossAxisAlignment: CrossAxisAlignment.end,
        //   children: [
        //     Expanded(
        //       child: Container(
        //         color: Colors.deepPurple[400],
        //       ),
        //     ),
        //     Expanded(
        //       child: Container(
        //         color: Colors.deepPurple[200],
        //       ),
        //     ),
        //     Expanded(
        //       child: Container(
        //         color: Colors.deepPurple,
        //       ),
        //     ),
        //   ],
        // ),

        // body: GridView.builder(
        //     itemCount: 64,
        //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //         crossAxisCount: 8),
        //     itemBuilder: (context, index) {
        //       return Container(
        //         color: Colors.deepPurple,
        //         margin: const EdgeInsets.all(2),
        //       );
        //     }),

        // body: Stack(
        //   alignment: Alignment.center,
        //   children: [
        //     Container(height: 300, width: 300, color: Colors.deepPurple),
        //     Container(height: 200, width: 200, color: Colors.deepPurple[200]),
        //     Container(height: 100, width: 100, color: Colors.deepPurple[400]),
        //   ],
        // ),

        // body: Center(
        //   child: GestureDetector(
        //     onTap: () {},
        //     child: Container(
        //       height: 200,
        //       width: 200,
        //       color: Colors.deepPurple[300],
        //       child: const Center(
        //         child: Text("Tapp me"),
        //       ),
        //     ),
        //   ),
        // ),