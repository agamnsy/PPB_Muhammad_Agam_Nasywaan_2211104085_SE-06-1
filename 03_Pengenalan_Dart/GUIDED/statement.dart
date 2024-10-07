void main() {
  // IF ELSE
  var openHours = 8;
  var closedHours = 21;
  var now = 17;
  if (now > openHours && now < closedHours) {
    print("Halloo, kita udah buka nich");
  } else {
    print("Mfff, kica udah cucup");
  }

  // Mencoba operasi ternary
  // CONDITION ? TRUE EXPRESSION : FALSE EXPRESSION
  var shopStatus = now > openHours ? "Hello, kita buka nih" : "Maaf, kita sedang tutup";
  print(shopStatus);
}
