import 'package:flutter/material.dart';
import '../models/product.dart';

class detailProduct extends StatelessWidget {
  const detailProduct({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Produk'),
        titleTextStyle: const TextStyle(
            fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
        backgroundColor: Colors.green[900],
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(
                product.imageUrl,
                width: 300,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              product.nama,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Rp${product.harga}',
              style: TextStyle(
                  fontSize: 32,
                  color: Colors.green[900],
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              product.deskripsi,
              style: const TextStyle(
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}
