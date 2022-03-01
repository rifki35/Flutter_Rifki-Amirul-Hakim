import 'dart:io';

void main(List<String> args) {
  String inputAngka = stdin.readLineSync() ?? '';
  num angkafixed = num.tryParse(inputAngka) ?? 0;
  num faktorial = 1;
  for (num i = angkafixed; i >= 1; i--) {
    faktorial *= i;
  }
  print(faktorial);
}