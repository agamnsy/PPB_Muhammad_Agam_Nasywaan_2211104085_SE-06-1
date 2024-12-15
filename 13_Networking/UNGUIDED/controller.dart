import 'package:get/get.dart';

class NoteController extends GetxController {
  // List to store notes
  var catatan = <Map<String, String>>[].obs;

  // Method to add a new note
  void tambahCatatan(String title, String description) {
    catatan.add({'judul': title, 'deskripsi': description});
  }

  // Method to delete a note
  void hapusCatatan(int index) {
    catatan.removeAt(index);
  }
}
