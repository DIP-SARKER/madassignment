import 'package:flutter/material.dart';

class TextStyleDemoPage extends StatelessWidget {
  const TextStyleDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Text Style Page',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Large Bold Text',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.yellow,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Small Italic Text',
              style: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
                color: Colors.redAccent,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Underlined Text',
              style: TextStyle(
                fontSize: 24,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.dashed,
                color: Colors.grey[400],
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Row Text 1',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 170),
                Text(
                  'Row Text 2',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue[200],
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              'Text with Shadow',
              style: TextStyle(
                fontSize: 28,
                color: Color.fromARGB(255, 255, 255, 255),
                shadows: [
                  Shadow(
                    blurRadius: 10.0,
                    color: Color.fromARGB(255, 228, 0, 0),
                    offset: Offset(4.0, 4.0),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Rich Text: ',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                    ),
                  ),
                  TextSpan(
                    text: 'Mix and match styles easily.',
                    style: TextStyle(
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                      color: Colors.brown,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
