import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CardGrid extends StatefulWidget {
  const CardGrid({super.key});

  @override
  State<CardGrid> createState() => _CardGridState();
}

class _CardGridState extends State<CardGrid> {
  final List<Map<String, String>> items = const [
    {
      'imagePath':
          'https://sourceofproduct.com/wp-content/uploads/2024/07/iPhone-15-Plus-2-6-5363.jpg',
      'title': 'Apple Iphone 15 Plus',
      'price': 'BDT 212000',
    },
    {
      'imagePath':
          'https://assets.gadgetandgear.com/upload/media/samsung-galaxy-s25-ultra-titanium-silver632.jpeg',
      'title': 'Samsung Galaxy S25 Ultra',
      'price': 'BDT 189000',
    },
    {
      'imagePath':
          'https://www.phoneplacekenya.com/wp-content/uploads/2023/04/Xiaomi-13-Ultra-a.jpg',
      'title': 'Xiaomi 13 Ultra',
      'price': 'BDT 125000',
    },
    {
      'imagePath':
          'https://adminapi.applegadgetsbd.com/storage/media/large/Motorola-Edge-50-Ultra-Forest-Gray-3318.jpg',
      'title': 'Motoratola Edge 50 Ultra',
      'price': 'BDT 76000',
    },
    {
      'imagePath':
          'https://mobilebuzzbd.com/wp-content/uploads/2024/08/Google-Pixel-9-Pro.jpg',
      'title': 'Google Pixel 9 Pro',
      'price': 'BDT 145000',
    },
    {
      'imagePath':
          'https://adminapi.applegadgetsbd.com/storage/media/large/OnePlus-12-Flowy-Emerald-9569.jpg',
      'title': 'OnePlus 12 Pro',
      'price': 'BDT 122000',
    },
    {
      'imagePath':
          'https://adminapi.applegadgetsbd.com/storage/media/large/iPhone-16-Pro-Max---16-Pro-White-Titanium-5148.jpg',
      'title': 'iPhone 16 Pro Max',
      'price': 'BDT 235000',
    },
    {
      'imagePath':
          'https://diamu.com.bd/wp-content/uploads/2024/07/Samsung-Galaxy-Z-Fold-6-3.jpg',
      'title': 'Samsung Galaxy Z Fold 6',
      'price': 'BDT 210000',
    },
    {
      'imagePath':
          'https://adminapi.applegadgetsbd.com/storage/media/large/OPPO-Find-X7-Ultra-Dark-Blue-4040.jpg',
      'title': 'Oppo Find X7 Ultra',
      'price': 'BDT 99000',
    },
    {
      'imagePath':
          'https://adminapi.applegadgetsbd.com/storage/media/large/vivo-X200-5G-Blue-2485.jpg',
      'title': 'Vivo X200 Pro',
      'price': 'BDT 105000',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cards List Page',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.yellow,
        iconTheme: IconThemeData(color: Colors.black),
      ),

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.75,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return CustomCard(
              imagePath: items[index]['imagePath']!,
              title: items[index]['title']!,
              price: items[index]['price']!,
            );
          },
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String price;

  const CustomCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shadowColor: Colors.black54,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: CachedNetworkImage(
                imageUrl: imagePath,
                height: 140,
                width: double.infinity,
                fit: BoxFit.cover,
                placeholder:
                    (context, url) =>
                        const Center(child: CircularProgressIndicator()),
                errorWidget:
                    (context, url, error) =>
                        const Icon(Icons.error, color: Colors.red),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              price,
              style: const TextStyle(fontSize: 14, color: Colors.blueGrey),
            ),
          ],
        ),
      ),
    );
  }
}
