import 'dart:io';

void main() {
  print("Masukkan angka favorit : ");
  int? tinggiPiramid = int.tryParse(stdin.readLineSync()!);

  if (tinggiPiramid != null && tinggiPiramid > 0) {
    for (int i = 1; i <= tinggiPiramid; i++) {
      for (int j = tinggiPiramid; j > i; j--) {
        stdout.write(" ");
      }
      for (int k = 1; k <= (2 * i - 1); k++) {
        stdout.write("*");
      }
      print("");
    }
  } else {
    print("Error!. Inputan harus angka ya");
  }
}
