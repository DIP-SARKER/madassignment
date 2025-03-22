import 'package:flutter/material.dart';
import 'package:madassignment/pages/imagescreen.dart';
import 'package:madassignment/pages/loginscreen.dart';
import 'package:madassignment/pages/uniquelist.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Drawer Screen',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.yellow,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      drawer: Drawer(
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
        child: Text(
          'Welcome to the Home Screen!',
          style: TextStyle(fontSize: 24, color: Colors.yellow),
        ),
      ),
    );
  }
}
