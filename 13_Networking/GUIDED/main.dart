import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'detail_page.dart';
import 'my_homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => MyHomePage(),
        ),
        GetPage(
          name: '/detail',
          page: () => const DetailPage(),
        ),
      ],
      title: 'Praktikum 13 - Get X',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
