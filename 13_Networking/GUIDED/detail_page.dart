import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Page"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 122, 169, 252),
      ),
      body: const Center(
        child: Text("Detail Page"),
      ),
    );
  }
}
