import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ProfileSettingsiPage extends StatefulWidget {
  const ProfileSettingsiPage({super.key});

  @override
  State<ProfileSettingsiPage> createState() => _ProfileSettingsiPageState();
}

class _ProfileSettingsiPageState extends State<ProfileSettingsiPage> {
  File? _image;

  Future<void> _pickImage() async {
    final pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile & Settings"),
        centerTitle: true,
        toolbarHeight: 100,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage:
                        _image != null
                            ? FileImage(_image!)
                            : const AssetImage("assets/ds.png")
                                as ImageProvider,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.yellow, width: 3.0),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.yellow,
                      ),
                      child: IconButton(
                        icon: Icon(
                          FontAwesome.camera_retro_solid,
                          color: Colors.white,
                        ),
                        onPressed: _pickImage,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "DIP SARKER",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const Text(
              "221-15-5274",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 30),
            _buildSettingTile(Icons.people_alt_outlined, "Edit Profile", () {}),
            const SizedBox(height: 30),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                side: BorderSide(color: Colors.yellow),
                backgroundColor: Colors.transparent,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 15,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              icon: Icon(Icons.logout, size: 20),
              label: const Text("Logout", style: TextStyle(fontSize: 16)),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSettingTile(IconData icon, String title, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon, size: 30, color: Colors.yellow),
      title: Text(title, style: const TextStyle(fontSize: 18)),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        size: 20,
        color: Colors.grey,
      ),
      onTap: onTap,
    );
  }
}
