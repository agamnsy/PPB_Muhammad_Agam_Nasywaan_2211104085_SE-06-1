import 'dart:io';

bool bilPrima(int angka) {
  if (angka < 2) {
    return false;
  }

  for (int i = 2; i <= angka ~/ 2; i++) {
    if (angka % i == 0) {
      return false;
    }
  }

  return true;
}

void main() {
  print("Masukkan bilangan bulat : ");
  int? inputBil = int.tryParse(stdin.readLineSync()!);

  if (inputBil != null) {
    if (bilPrima(inputBil)) {
      print("$inputBil bilangan prima");
    } else {
      print("$inputBil bukan bilangan prima");
    }
  }
}
