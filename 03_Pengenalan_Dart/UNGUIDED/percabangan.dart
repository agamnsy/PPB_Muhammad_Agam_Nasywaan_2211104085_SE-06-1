import 'dart:io';

String cekNilai(int nilai) {
  if (nilai > 70) {
    return "Nilai A";
  } else if (nilai > 40 && nilai <= 70) {
    return "Nilai B";
  } else if (nilai > 0 && nilai <= 40) {
    return "Nilai C";
  } else {
    return "";
  }
}

void main() {
  print("Masukkan nilai mahasiswa : ");
  int? inputNilai = int.tryParse(stdin.readLineSync()!);

  if (inputNilai != null) {
    String hasil = cekNilai(inputNilai);
    print("$inputNilai merupakan $hasil");
  } else {
    print("");
  }
}