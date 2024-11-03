import 'package:flutter/material.dart';
import '../models/product.dart';
import '../pages/detail.dart';

class Mypage extends StatelessWidget {
  Mypage({super.key});

  final List<Product> products = [
    Product(
        id: 1,
        nama: 'Sepatu Biru',
        harga: 230000.00,
        imageUrl:
            'https://img.id.my-best.com/product_images/e52f033e6e38b700f34c8bec54014d15.png?ixlib=rails-4.3.1&q=70&lossless=0&w=800&h=800&fit=clip&s=7b5943cca873d86f07753762706a3ede',
        deskripsi:
            'Barang pertama adalah sepatu biru keren dan mantap untuk sprint'),
    Product(
        id: 2,
        nama: 'Sepatu Buabu',
        harga: 310000.00,
        imageUrl:
            'https://s.alicdn.com/@sc04/kf/H4c00152b65ca426783c902bf4d28dbebQ.jpg_720x720q50.jpg',
        deskripsi:
            'Barang kedua adalah sepatu buabu mantap dan enak digunakan untuk long run'),
    Product(
        id: 3,
        nama: 'Sepatu Irenk',
        harga: 460000.00,
        imageUrl:
            'https://akcdn.detik.net.id/community/media/visual/2021/06/10/asics-gel-pulse-12_169.jpeg?w=700&q=90',
        deskripsi:
            'Barang ketiga adalah sepatu irenk empuk dan nyaman, cocok untuk segala hal bebas dah'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ToQi Store'),
        backgroundColor: Colors.green[900],
        titleTextStyle: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final Product = products[index];
          return Container(
            margin: const EdgeInsets.only(left: 16, right: 16, top: 8),
            padding: const EdgeInsets.all(16),
            height: 125,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  blurRadius: 16,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              children: [
                Image.network(
                  Product.imageUrl,
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        Product.nama,
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 30, 87, 32)),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Rp${Product.harga}',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        Product.deskripsi,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.arrow_forward),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => detailProduct(product: Product),
                      ),
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
