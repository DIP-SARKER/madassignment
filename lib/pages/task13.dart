import 'package:flutter/material.dart';
import 'package:madassignment/pages/imagescreen.dart';
import 'package:madassignment/pages/loginscreen.dart';
import 'package:madassignment/pages/uniquelist.dart';

class HomelScreen extends StatelessWidget {
  const HomelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        iconTheme: IconThemeData(color: Colors.black),
        title: Row(
          children: [
            Image.asset('assets/logo.png', height: 40), // Logo
            const SizedBox(width: 10),
            const Text(
              "My App",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.yellow),
              child: Text(
                'Navigation Drawer',
                style: TextStyle(color: Colors.black, fontSize: 24),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person, color: Colors.yellowAccent),
              title: const Text(
                'Login Screen',
                style: TextStyle(color: Colors.yellowAccent),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.list_alt_sharp,
                color: Colors.yellowAccent,
              ),
              title: const Text(
                'List View Screen',
                style: TextStyle(color: Colors.yellowAccent),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const UniqueListViewPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.image, color: Colors.yellowAccent),
              title: const Text(
                'Item Image Screen',
                style: TextStyle(color: Colors.yellowAccent),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ImageGridScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text("Welcome to My App!", style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
