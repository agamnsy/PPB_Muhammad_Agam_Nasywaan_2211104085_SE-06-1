import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unguided_13/controller.dart';

class MyAddNote extends StatelessWidget {
  final NoteController noteController = Get.find();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Note', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.deepPurple,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(
                labelText: 'Judul',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: descriptionController,
              maxLines: 5,
              decoration: const InputDecoration(
                labelText: 'Deskripsi',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 32),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  String title = titleController.text.trim();
                  String description = descriptionController.text.trim();

                  if (title.isNotEmpty && description.isNotEmpty) {
                    noteController.tambahCatatan(title, description);
                    Get.back();
                    Get.snackbar('Berhasil', 'Catatan baru telah ditambahkan!',
                        backgroundColor: const Color.fromARGB(255, 66, 151, 69),
                        colorText: Colors.white);
                  } else {
                    Get.snackbar('Oppss', 'Semua field harus diisi',
                        backgroundColor: const Color.fromARGB(255, 175, 62, 62),
                        colorText: Colors.white);
                  }
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    minimumSize: Size(double.infinity, 48),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    )),
                child: const Text('Save Note',
                    style: TextStyle(color: Colors.white, fontSize: 16)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
