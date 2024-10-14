import 'package:flutter/material.dart';
import 'list_wisata.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TP4 Antarmuka Pengguna',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 185, 38, 28)),
        useMaterial3: true,
      ),
      home: const ListWisata(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 185, 38, 28),
          title: Center(
              child: Text(
            'Rekomendasi Wisata',
            style: TextStyle(fontWeight: FontWeight.w700),
          ))),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Baturraden',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Image.network(
              'https://awsimages.detik.net.id/community/media/visual/2023/09/05/lokawisata-baturraden-1.jpeg?w=800',
              width: 300,
              height: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Baturraden adalah sebuah objek wisata alam yang terletak di lereng Gunung Slamet, sekitar 15 kilometer dari pusat kota Purwokerto, Kabupaten Banyumas, Jawa Tengah. Terkenal dengan pemandangan alamnya yang indah dan udara yang sejuk, Baturraden menjadi destinasi favorit wisatawam lokal maupun mancanegara',
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
            ),
            ElevatedButton(onPressed: () {}, child: Text('Kunjungi Sekarang'))
          ],
        ),
      ),
    );
  }
}
