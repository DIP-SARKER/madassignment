import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ImageGridScreen extends StatelessWidget {
  const ImageGridScreen({super.key});

  final List<String> imageUrls = const [
    'https://mgbazarbd.com/upload/products/thumbnails/1808427925770534.jpg',
    'https://dazzle.com.bd/_next/image?url=https%3A%2F%2Fdazzle.sgp1.cdn.digitaloceanspaces.com%2F15107%2Fmoto-edge-50-fusion-hot-pint-price-in-bangladesh.jpg&w=640&q=75',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMoK0QCb1QJhGDAtjxvcEXb6aIavR-8n2kxW4WDRnH-hLsiieOI71uf9XEt-JSvakchGk&usqp=CAU',
    'https://5.imimg.com/data5/SELLER/Default/2021/4/XM/RR/NM/122175801/oneplus9-1-500x500.jpg',
    'https://www.bencomobile.com/UserFiles/denco/image/20250124/20250124111928_6268.jpg',
    'https://www.bencomobile.com/UserFiles/denco/image/20250111/20250111171239_6803.jpg',
    'https://m.media-amazon.com/images/I/41snmTn9mrL._SL500_.jpg',
    'https://www.phoneplacekenya.com/wp-content/uploads/2023/04/Xiaomi-13-Ultra-a.jpg',
    'https://sourceofproduct.com/wp-content/uploads/2024/07/iPhone-15-Plus-2-6-5363.jpg',
    'https://assets.gadgetandgear.com/upload/media/samsung-galaxy-s25-ultra-titanium-silver632.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Image Grid View Screen',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.yellow,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12.0,
            mainAxisSpacing: 12.0,
          ),
          itemCount: imageUrls.length,
          itemBuilder: (context, index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(7),
              child: CachedNetworkImage(
                imageUrl: imageUrls[index],
                placeholder:
                    (context, url) =>
                        const Center(child: CircularProgressIndicator()),
                errorWidget:
                    (context, url, error) =>
                        const Icon(Icons.error, color: Colors.red),
                fit: BoxFit.cover,
              ),
            );
          },
        ),
      ),
    );
  }
}
