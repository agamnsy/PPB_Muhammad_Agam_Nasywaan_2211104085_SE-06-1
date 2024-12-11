import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'count_controller.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
  // final String title;
  final CountController controller = Get.put(CountController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Praktikum 13 - Get X'),
      ),
      body: Center(
          child: Obx(
        () => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times :',
            ),
            Text(
              controller.counter.toString(),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/detail');
                },
                child: const Text(
                  'Halaman Detail',
                ))
          ],
        ),
      )),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: controller.getBottomSheet,
            tooltip: 'Bottom Sheet',
            child: const Icon(Icons.arrow_upward),
          ),
          const SizedBox(
            width: 24,
          ),
          FloatingActionButton(
            onPressed: controller.getSnackbar,
            tooltip: 'SnackBar',
            child: const Icon(Icons.message),
          ),
          const SizedBox(
            width: 24,
          ),
          FloatingActionButton(
            onPressed: controller.decrementCounter,
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
          const SizedBox(
            width: 24,
          ),
          FloatingActionButton(
            onPressed: controller.incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
