import 'package:flutter/material.dart';


class CustomDrawerPage extends StatefulWidget {
  const CustomDrawerPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CustomDrawerPageState createState() => _CustomDrawerPageState();
}

class _CustomDrawerPageState extends State<CustomDrawerPage>
    with SingleTickerProviderStateMixin {
  bool _isDrawerOpen = false;

  late AnimationController _animationController;
  late Animation<Offset> _drawerOffset;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );

    _drawerOffset = Tween<Offset>(
      begin: const Offset(-1.0, 0.0),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeOutBack,
      ),
    );
  }

  void toggleDrawer() {
    setState(() {
      _isDrawerOpen = !_isDrawerOpen;
      if (_isDrawerOpen) {
        _animationController.forward();
      } else {
        _animationController.reverse();
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Widget _buildDrawer() {
    return SlideTransition(
      position: _drawerOffset,
      child: Container(
        width: 250,
        height: double.infinity,
        color: Colors.blueGrey[800],
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(height: 60),
            Text("Home", style: TextStyle(color: Colors.white, fontSize: 20)),
            SizedBox(height: 20),
            Text("Profile", style: TextStyle(color: Colors.white, fontSize: 20)),
            SizedBox(height: 20),
            Text("Settings", style: TextStyle(color: Colors.white, fontSize: 20)),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            title: const Text("Custom Drawer"),
            leading: IconButton(
              icon: const Icon(Icons.menu),
              onPressed: toggleDrawer,
            ),
          ),
          body: const Center(child: Text("Main Content")),
        ),
        // Drawer Layer
        _isDrawerOpen
            ? GestureDetector(
                onTap: toggleDrawer,
                child: Container(
                  color: Colors.black54, // background overlay
                ),
              )
            : const SizedBox.shrink(),
        _buildDrawer(),
      ],
    );
  }
}
