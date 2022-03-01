import 'dart:io';

String angka(int a) {
  if (a > 70) {
    return "A";
  } else if (a > 40) {
    return "B";
  } else if (a > 0) {
    return "C";
  } else {
    return "";
  }
}

void main(List<String> args) {
  String inputAngka = stdin.readLineSync() ?? '';
  int angkafixed = int.tryParse(inputAngka) ?? 0;

  print(angka(angkafixed));
}
