import 'package:flutter/material.dart';

class Taskeeleven extends StatelessWidget {
  const Taskeeleven({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Asset  Image Display',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.yellow,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            'assets/ds.png',
            width: 350,
            height: 400,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
