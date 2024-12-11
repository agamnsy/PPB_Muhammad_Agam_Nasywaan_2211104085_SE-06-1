import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CountController extends GetxController {
  var counter = 0.obs;

  void incrementCounter() {
    counter++;
  }

  void decrementCounter() {
    counter--;
  }

  void getSnackbar() {
    Get.snackbar("Halo", "Ini adalah pesan getX snackbar",
        backgroundColor: const Color.fromARGB(255, 56, 129, 58),
        colorText: Colors.white);
  }

  void getBottomSheet() {
    Get.bottomSheet(Container(
      height: 200,
      color: Colors.white,
      child: const Center(
        child: Text("Ini adalah pesan getX bottom sheet"),
      ),
    ));
  }
}
