import 'package:flutter/material.dart';

class SwipeListScreen extends StatefulWidget {
  const SwipeListScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SwipeListScreenState createState() => _SwipeListScreenState();
}

class _SwipeListScreenState extends State<SwipeListScreen> {
  final List<String> items = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"];

  void _deleteItem(int index) {
    setState(() {
      items.removeAt(index);
    });
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text("Item deleted")));
  }

  void _editItem(int index) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text("Editing: ${items[index]}")));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        centerTitle: true,
        title: const Text(
          "Swipe to Delete or Edit",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: Key(items[index]),
            background: Container(
              color: Colors.green,
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 20),
              child: const Icon(Icons.edit, color: Colors.yellow, size: 30),
            ),
            secondaryBackground: Container(
              color: Colors.red,
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 20),
              child: const Icon(Icons.delete, color: Colors.white, size: 30),
            ),
            onDismissed: (direction) {
              if (direction == DismissDirection.startToEnd) {
                _editItem(index);
              } else {
                _deleteItem(index);
              }
            },
            child: Card(
              elevation: 0,
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: ListTile(
                title: Text(
                  items[index],
                  style: const TextStyle(fontSize: 18, color: Colors.yellow),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
