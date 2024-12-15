import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unguided_13/controller.dart';

class MyHomePage extends StatelessWidget {
  final NoteController noteController = Get.put(NoteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Unguided 13 - Note App',
            style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.deepPurple,
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            color: Colors.white,
            onPressed: () {
              Get.toNamed('/add');
            },
          )
        ],
      ),
      body: Obx(() {
        if (noteController.catatan.isEmpty) {
          return const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Masih kosong nih~',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text('Kamu belum bikin catatan apapun disini',
                    style:
                        TextStyle(color: Color.fromARGB(255, 124, 124, 124))),
              ],
            ),
          );
        }
        return ListView.builder(
          itemCount: noteController.catatan.length,
          itemBuilder: (context, index) {
            final note = noteController.catatan[index];
            return Card(
              margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: ListTile(
                title: Text(note['judul']!,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold)),
                subtitle: Text(note['deskripsi']!),
                trailing: IconButton(
                  icon: const Icon(Icons.delete,
                      color: Color.fromARGB(255, 197, 53, 43)),
                  onPressed: () {
                    noteController.hapusCatatan(index);
                  },
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
