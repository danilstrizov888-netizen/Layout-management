import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Карточка товара',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Карточка товара'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ProductCard(),
          ),
        ),
      ),
    );
  }
}
class ProductCard extends StatelessWidget {
  const ProductCard({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 1),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Смартфон Galaxy s25',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Image.network(
            'https://app-world.ru/image/catalog/S25/1-2.jpg',
            height: 180,
            width: double.infinity,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                height: 180,
                color: Colors.grey[300],
                child: const Center(
                  child: Icon(Icons.image_not_supported, size: 50),
                ),
              );
            },
          ),
          const SizedBox(height: 10),
          // Описание товара в Container с отступами
          Container(
            padding: const EdgeInsets.all(10),
            color: Colors.grey[100],
            child: const Text(
              'Описание: мощный процессор, отличная камера и длительное время работы от батареи.',
              style: TextStyle(fontSize: 16),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Цена: 60 990 ₽',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              Text(
                'Рейтинг: ★ 4.8',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.orange,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}