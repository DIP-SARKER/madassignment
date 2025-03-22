import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class HelloWorld extends StatefulWidget {
  const HelloWorld({super.key});

  @override
  State<HelloWorld> createState() => _HelloWorldState();
}

class _HelloWorldState extends State<HelloWorld> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 255, 255, 255),
                const Color.fromARGB(255, 119, 125, 128),
                const Color.fromARGB(255, 26, 25, 26),
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),

          child: AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText(
                'Hello World!',
                textStyle: const TextStyle(
                  fontSize: 60.0,
                  fontFamily: "LondrinaSketch",
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent,
                ),
                speed: const Duration(milliseconds: 300),
              ),
            ],
            totalRepeatCount: 1,
            isRepeatingAnimation: false,
          ),
        ),
      ),
    );
  }
}
